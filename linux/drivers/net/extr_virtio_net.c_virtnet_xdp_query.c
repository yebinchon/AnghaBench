
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct virtnet_info {int max_queue_pairs; TYPE_1__* rq; } ;
struct net_device {int dummy; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int xdp_prog; } ;


 struct virtnet_info* netdev_priv (struct net_device*) ;
 struct bpf_prog* rtnl_dereference (int ) ;

__attribute__((used)) static u32 virtnet_xdp_query(struct net_device *dev)
{
 struct virtnet_info *vi = netdev_priv(dev);
 const struct bpf_prog *xdp_prog;
 int i;

 for (i = 0; i < vi->max_queue_pairs; i++) {
  xdp_prog = rtnl_dereference(vi->rq[i].xdp_prog);
  if (xdp_prog)
   return xdp_prog->aux->id;
 }
 return 0;
}
