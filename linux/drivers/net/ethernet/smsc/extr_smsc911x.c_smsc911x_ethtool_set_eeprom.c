
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smsc911x_data {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int len; int offset; } ;


 int E2P_CMD_EPC_CMD_EWDS_ ;
 int E2P_CMD_EPC_CMD_EWEN_ ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int smsc911x_eeprom_enable_access (struct smsc911x_data*) ;
 int smsc911x_eeprom_send_cmd (struct smsc911x_data*,int ) ;
 int smsc911x_eeprom_write_location (struct smsc911x_data*,int ,int ) ;

__attribute__((used)) static int smsc911x_ethtool_set_eeprom(struct net_device *dev,
           struct ethtool_eeprom *eeprom, u8 *data)
{
 int ret;
 struct smsc911x_data *pdata = netdev_priv(dev);

 smsc911x_eeprom_enable_access(pdata);
 smsc911x_eeprom_send_cmd(pdata, E2P_CMD_EPC_CMD_EWEN_);
 ret = smsc911x_eeprom_write_location(pdata, eeprom->offset, *data);
 smsc911x_eeprom_send_cmd(pdata, E2P_CMD_EPC_CMD_EWDS_);


 eeprom->len = 1;

 return ret;
}
