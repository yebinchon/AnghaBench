
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tun_struct {int xdp_prog; } ;
struct net_device {int dummy; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int id; } ;


 struct tun_struct* netdev_priv (struct net_device*) ;
 struct bpf_prog* rtnl_dereference (int ) ;

__attribute__((used)) static u32 tun_xdp_query(struct net_device *dev)
{
 struct tun_struct *tun = netdev_priv(dev);
 const struct bpf_prog *xdp_prog;

 xdp_prog = rtnl_dereference(tun->xdp_prog);
 if (xdp_prog)
  return xdp_prog->aux->id;

 return 0;
}
