
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_modinfo {void* eeprom_len; int type; } ;
struct TYPE_2__ {scalar_t__ module_status; } ;
struct bnxt {int hwrm_spec_code; TYPE_1__ link_info; } ;


 int EOPNOTSUPP ;
 int ETH_MODULE_SFF_8436 ;
 void* ETH_MODULE_SFF_8436_LEN ;
 int ETH_MODULE_SFF_8472 ;
 void* ETH_MODULE_SFF_8472_LEN ;
 int ETH_MODULE_SFF_8636 ;
 void* ETH_MODULE_SFF_8636_LEN ;
 int I2C_DEV_ADDR_A0 ;
 scalar_t__ PORT_PHY_QCFG_RESP_MODULE_STATUS_WARNINGMSG ;
 int SFF_DIAG_SUPPORT_OFFSET ;




 int bnxt_read_sfp_module_eeprom_info (struct bnxt*,int ,int ,int ,int,int*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_get_module_info(struct net_device *dev,
    struct ethtool_modinfo *modinfo)
{
 u8 data[SFF_DIAG_SUPPORT_OFFSET + 1];
 struct bnxt *bp = netdev_priv(dev);
 int rc;





 if (bp->link_info.module_status >
  PORT_PHY_QCFG_RESP_MODULE_STATUS_WARNINGMSG)
  return -EOPNOTSUPP;


 if (bp->hwrm_spec_code < 0x10202)
  return -EOPNOTSUPP;

 rc = bnxt_read_sfp_module_eeprom_info(bp, I2C_DEV_ADDR_A0, 0, 0,
           SFF_DIAG_SUPPORT_OFFSET + 1,
           data);
 if (!rc) {
  u8 module_id = data[0];
  u8 diag_supported = data[SFF_DIAG_SUPPORT_OFFSET];

  switch (module_id) {
  case 128:
   modinfo->type = ETH_MODULE_SFF_8472;
   modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
   if (!diag_supported)
    modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
   break;
  case 131:
  case 129:
   modinfo->type = ETH_MODULE_SFF_8436;
   modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
   break;
  case 130:
   modinfo->type = ETH_MODULE_SFF_8636;
   modinfo->eeprom_len = ETH_MODULE_SFF_8636_LEN;
   break;
  default:
   rc = -EOPNOTSUPP;
   break;
  }
 }
 return rc;
}
