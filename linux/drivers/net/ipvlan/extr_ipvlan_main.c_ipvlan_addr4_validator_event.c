
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct ipvl_dev {int port; } ;
struct in_validator_info {int extack; int ivi_addr; TYPE_1__* ivi_dev; } ;
struct TYPE_2__ {scalar_t__ dev; } ;


 int EADDRINUSE ;

 int NL_SET_ERR_MSG (int ,char*) ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int ipvlan_addr_busy (int ,int *,int) ;
 int ipvlan_is_valid_dev (struct net_device*) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;
 int notifier_from_errno (int ) ;

__attribute__((used)) static int ipvlan_addr4_validator_event(struct notifier_block *unused,
     unsigned long event, void *ptr)
{
 struct in_validator_info *ivi = (struct in_validator_info *)ptr;
 struct net_device *dev = (struct net_device *)ivi->ivi_dev->dev;
 struct ipvl_dev *ipvlan = netdev_priv(dev);

 if (!ipvlan_is_valid_dev(dev))
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  if (ipvlan_addr_busy(ipvlan->port, &ivi->ivi_addr, 0)) {
   NL_SET_ERR_MSG(ivi->extack,
           "Address already assigned to an ipvlan device");
   return notifier_from_errno(-EADDRINUSE);
  }
  break;
 }

 return NOTIFY_OK;
}
