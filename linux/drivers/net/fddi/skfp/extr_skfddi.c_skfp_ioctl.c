
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MacStat; } ;
struct s_smc {TYPE_1__ os; } ;
struct s_skfp_ioctl {int cmd; int len; int data; } ;
struct net_device {int name; } ;
struct ifreq {int ifr_data; } ;
typedef TYPE_1__ skfddi_priv ;


 int CAP_NET_ADMIN ;
 int EFAULT ;
 int EOPNOTSUPP ;
 int EPERM ;


 int capable (int ) ;
 scalar_t__ copy_from_user (struct s_skfp_ioctl*,int ,int) ;
 int copy_to_user (int ,int ,int) ;
 int memset (int *,int ,int) ;
 struct s_smc* netdev_priv (struct net_device*) ;
 int printk (char*,int ,int) ;
 int skfp_ctl_get_stats (struct net_device*) ;

__attribute__((used)) static int skfp_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct s_smc *smc = netdev_priv(dev);
 skfddi_priv *lp = &smc->os;
 struct s_skfp_ioctl ioc;
 int status = 0;

 if (copy_from_user(&ioc, rq->ifr_data, sizeof(struct s_skfp_ioctl)))
  return -EFAULT;

 switch (ioc.cmd) {
 case 128:
  ioc.len = sizeof(lp->MacStat);
  status = copy_to_user(ioc.data, skfp_ctl_get_stats(dev), ioc.len)
    ? -EFAULT : 0;
  break;
 case 129:
  if (!capable(CAP_NET_ADMIN)) {
   status = -EPERM;
  } else {
   memset(&lp->MacStat, 0, sizeof(lp->MacStat));
  }
  break;
 default:
  printk("ioctl for %s: unknown cmd: %04x\n", dev->name, ioc.cmd);
  status = -EOPNOTSUPP;

 }

 return status;
}
