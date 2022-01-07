
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_bpf {int command; int prog_id; int extack; int prog; } ;
struct net_device {int dummy; } ;


 int EINVAL ;


 int tun_xdp_query (struct net_device*) ;
 int tun_xdp_set (struct net_device*,int ,int ) ;

__attribute__((used)) static int tun_xdp(struct net_device *dev, struct netdev_bpf *xdp)
{
 switch (xdp->command) {
 case 128:
  return tun_xdp_set(dev, xdp->prog, xdp->extack);
 case 129:
  xdp->prog_id = tun_xdp_query(dev);
  return 0;
 default:
  return -EINVAL;
 }
}
