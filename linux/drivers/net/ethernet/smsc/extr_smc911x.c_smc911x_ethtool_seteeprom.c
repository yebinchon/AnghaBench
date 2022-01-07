
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; } ;


 int E2P_CMD_EPC_CMD_ERASE_ ;
 int E2P_CMD_EPC_CMD_EWEN_ ;
 int E2P_CMD_EPC_CMD_WRITE_ ;
 int smc911x_ethtool_write_eeprom_byte (struct net_device*,int ) ;
 int smc911x_ethtool_write_eeprom_cmd (struct net_device*,int ,int) ;

__attribute__((used)) static int smc911x_ethtool_seteeprom(struct net_device *dev,
            struct ethtool_eeprom *eeprom, u8 *data)
{
 int i, ret;


 if ((ret=smc911x_ethtool_write_eeprom_cmd(dev, E2P_CMD_EPC_CMD_EWEN_, 0 ))!=0)
  return ret;
 for(i=eeprom->offset;i<(eeprom->offset+eeprom->len);i++) {

  if ((ret=smc911x_ethtool_write_eeprom_cmd(dev, E2P_CMD_EPC_CMD_ERASE_, i ))!=0)
   return ret;

  if ((ret=smc911x_ethtool_write_eeprom_byte(dev, *data))!=0)
    return ret;
  if ((ret=smc911x_ethtool_write_eeprom_cmd(dev, E2P_CMD_EPC_CMD_WRITE_, i ))!=0)
   return ret;
  }
  return 0;
}
