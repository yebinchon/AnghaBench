
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ dev_addr; } ;
struct de4x5_srom {int dummy; } ;
struct TYPE_2__ {int info; int ieee_addr; } ;
struct de4x5_private {int useSROM; TYPE_1__ srom; } ;


 int ETH_ALEN ;

 int memcpy (int ,char*,int) ;
 int memset (char*,int ,int) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int * srom_repair_info ;

__attribute__((used)) static void
srom_repair(struct net_device *dev, int card)
{
    struct de4x5_private *lp = netdev_priv(dev);

    switch(card) {
      case 128:
 memset((char *)&lp->srom, 0, sizeof(struct de4x5_srom));
 memcpy(lp->srom.ieee_addr, (char *)dev->dev_addr, ETH_ALEN);
 memcpy(lp->srom.info, (char *)&srom_repair_info[128 -1], 100);
 lp->useSROM = 1;
 break;
    }
}
