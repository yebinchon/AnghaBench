
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnxt {int dummy; } ;


 scalar_t__ BNXT_VF (struct bnxt*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_get_eeprom_len(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);

 if (BNXT_VF(bp))
  return 0;




 return -1;
}
