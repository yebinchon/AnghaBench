
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; int offset; } ;
struct bnx2 {int dummy; } ;


 int bnx2_nvram_read (struct bnx2*,int ,int *,int ) ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnx2_get_eeprom(struct net_device *dev, struct ethtool_eeprom *eeprom,
  u8 *eebuf)
{
 struct bnx2 *bp = netdev_priv(dev);
 int rc;



 rc = bnx2_nvram_read(bp, eeprom->offset, eebuf, eeprom->len);

 return rc;
}
