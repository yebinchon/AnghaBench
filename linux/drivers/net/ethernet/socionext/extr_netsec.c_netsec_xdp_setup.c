
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsec_priv {int xdp_prog; struct net_device* ndev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int mtu; } ;
struct bpf_prog {int dummy; } ;


 int EOPNOTSUPP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int bpf_prog_put (struct bpf_prog*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netsec_netdev_open (struct net_device*) ;
 int netsec_netdev_stop (struct net_device*) ;
 struct bpf_prog* xchg (int *,struct bpf_prog*) ;

__attribute__((used)) static int netsec_xdp_setup(struct netsec_priv *priv, struct bpf_prog *prog,
       struct netlink_ext_ack *extack)
{
 struct net_device *dev = priv->ndev;
 struct bpf_prog *old_prog;


 if (prog && dev->mtu > 1500) {
  NL_SET_ERR_MSG_MOD(extack, "Jumbo frames not supported on XDP");
  return -EOPNOTSUPP;
 }

 if (netif_running(dev))
  netsec_netdev_stop(dev);


 old_prog = xchg(&priv->xdp_prog, prog);
 if (old_prog)
  bpf_prog_put(old_prog);

 if (netif_running(dev))
  netsec_netdev_open(dev);

 return 0;
}
