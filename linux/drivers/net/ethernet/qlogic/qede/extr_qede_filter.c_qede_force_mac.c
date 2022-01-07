
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qede_dev {TYPE_1__* ndev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int ether_addr_copy (int ,int *) ;
 int is_valid_ether_addr (int *) ;

void qede_force_mac(void *dev, u8 *mac, bool forced)
{
 struct qede_dev *edev = dev;

 __qede_lock(edev);

 if (!is_valid_ether_addr(mac)) {
  __qede_unlock(edev);
  return;
 }

 ether_addr_copy(edev->ndev->dev_addr, mac);
 __qede_unlock(edev);
}
