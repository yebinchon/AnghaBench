
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int flash_size; } ;
struct bnx2x {TYPE_1__ common; } ;


 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_get_eeprom_len(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);

 return bp->common.flash_size;
}
