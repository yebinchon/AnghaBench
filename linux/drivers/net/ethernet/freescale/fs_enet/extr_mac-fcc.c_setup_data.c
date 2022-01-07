
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fs_enet_private {int ev_err; int ev; int ev_napi; } ;


 int EINVAL ;
 int FCC_ERR_EVENT_MSK ;
 int FCC_EVENT ;
 int FCC_NAPI_EVENT_MSK ;
 scalar_t__ do_pd_setup (struct fs_enet_private*) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int setup_data(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 if (do_pd_setup(fep) != 0)
  return -EINVAL;

 fep->ev_napi = FCC_NAPI_EVENT_MSK;
 fep->ev = FCC_EVENT;
 fep->ev_err = FCC_ERR_EVENT_MSK;

 return 0;
}
