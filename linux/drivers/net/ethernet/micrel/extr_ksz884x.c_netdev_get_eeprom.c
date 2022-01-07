
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; int magic; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int hw; } ;


 int EEPROM_MAGIC ;
 int * eeprom_data ;
 int eeprom_read (int *,int) ;
 int memcpy (int *,int *,int) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_get_eeprom(struct net_device *dev,
 struct ethtool_eeprom *eeprom, u8 *data)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 u8 *eeprom_byte = (u8 *) eeprom_data;
 int i;
 int len;

 len = (eeprom->offset + eeprom->len + 1) / 2;
 for (i = eeprom->offset / 2; i < len; i++)
  eeprom_data[i] = eeprom_read(&hw_priv->hw, i);
 eeprom->magic = EEPROM_MAGIC;
 memcpy(data, &eeprom_byte[eeprom->offset], eeprom->len);

 return 0;
}
