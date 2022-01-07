
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;
struct ethtool_eeprom {int offset; int len; int magic; } ;


 int JME_EEPROM_MAGIC ;
 int jme_smb_read (struct jme_adapter*,int) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
jme_get_eeprom(struct net_device *netdev,
  struct ethtool_eeprom *eeprom, u8 *data)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 int i, offset = eeprom->offset, len = eeprom->len;




 eeprom->magic = JME_EEPROM_MAGIC;
 for (i = 0 ; i < len ; ++i)
  data[i] = jme_smb_read(jme, i + offset);

 return 0;
}
