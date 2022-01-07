
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {scalar_t__ rx_queues; scalar_t__ tx_queues; scalar_t__ max_queues; struct net_device* netdev; int * xdp_prog; } ;
struct net_device {scalar_t__ mtu; } ;
struct bpf_prog {int dummy; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int IS_ERR (int *) ;
 scalar_t__ MAX_XDP_MTU ;
 int PTR_ERR (int *) ;
 int * bpf_prog_add (int *,scalar_t__) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int netdev_warn (struct net_device*,char*,scalar_t__) ;
 int netif_running (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int nicvf_open (struct net_device*) ;
 int nicvf_set_xdp_queues (struct nicvf*,int) ;
 int nicvf_stop (struct net_device*) ;
 struct bpf_prog* xchg (int **,struct bpf_prog*) ;

__attribute__((used)) static int nicvf_xdp_setup(struct nicvf *nic, struct bpf_prog *prog)
{
 struct net_device *dev = nic->netdev;
 bool if_up = netif_running(nic->netdev);
 struct bpf_prog *old_prog;
 bool bpf_attached = 0;
 int ret = 0;




 if (prog && dev->mtu > MAX_XDP_MTU) {
  netdev_warn(dev, "Jumbo frames not yet supported with XDP, current MTU %d.\n",
       dev->mtu);
  return -EOPNOTSUPP;
 }
 if ((nic->rx_queues + nic->tx_queues) > nic->max_queues) {
  netdev_warn(dev,
       "Failed to attach BPF prog, RXQs + TXQs > Max %d\n",
       nic->max_queues);
  return -ENOMEM;
 }

 if (if_up)
  nicvf_stop(nic->netdev);

 old_prog = xchg(&nic->xdp_prog, prog);

 if (old_prog)
  bpf_prog_put(old_prog);

 if (nic->xdp_prog) {

  nic->xdp_prog = bpf_prog_add(nic->xdp_prog, nic->rx_queues - 1);
  if (!IS_ERR(nic->xdp_prog)) {
   bpf_attached = 1;
  } else {
   ret = PTR_ERR(nic->xdp_prog);
   nic->xdp_prog = ((void*)0);
  }
 }


 nicvf_set_xdp_queues(nic, bpf_attached);

 if (if_up) {

  nicvf_open(nic->netdev);
  netif_trans_update(nic->netdev);
 }

 return ret;
}
