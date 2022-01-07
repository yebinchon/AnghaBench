
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smsc911x_data {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; size_t offset; } ;


 int SMSC911X_EEPROM_SIZE ;
 int memcpy (int *,int *,int) ;
 int min (int,int) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int smsc911x_eeprom_enable_access (struct smsc911x_data*) ;
 int smsc911x_eeprom_read_location (struct smsc911x_data*,int,int *) ;

__attribute__((used)) static int smsc911x_ethtool_get_eeprom(struct net_device *dev,
           struct ethtool_eeprom *eeprom, u8 *data)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 u8 eeprom_data[SMSC911X_EEPROM_SIZE];
 int len;
 int i;

 smsc911x_eeprom_enable_access(pdata);

 len = min(eeprom->len, SMSC911X_EEPROM_SIZE);
 for (i = 0; i < len; i++) {
  int ret = smsc911x_eeprom_read_location(pdata, i, eeprom_data);
  if (ret < 0) {
   eeprom->len = 0;
   return ret;
  }
 }

 memcpy(data, &eeprom_data[eeprom->offset], len);
 eeprom->len = len;
 return 0;
}
