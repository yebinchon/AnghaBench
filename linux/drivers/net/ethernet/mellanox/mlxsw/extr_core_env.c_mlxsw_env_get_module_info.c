
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u16 ;
struct mlxsw_core {int dummy; } ;
struct ethtool_modinfo {int eeprom_len; void* type; } ;


 int EINVAL ;
 int EIO ;
 void* ETH_MODULE_SFF_8436 ;
 void* ETH_MODULE_SFF_8436_LEN ;
 void* ETH_MODULE_SFF_8472 ;
 int ETH_MODULE_SFF_8472_LEN ;
 void* ETH_MODULE_SFF_8636 ;
 int ETH_MODULE_SFF_8636_LEN ;
 size_t MLXSW_REG_MCIA_EEPROM_MODULE_INFO_ID ;




 size_t MLXSW_REG_MCIA_EEPROM_MODULE_INFO_REV_ID ;
 int MLXSW_REG_MCIA_EEPROM_MODULE_INFO_REV_ID_8636 ;
 int MLXSW_REG_MCIA_EEPROM_MODULE_INFO_SIZE ;
 int SFP_DIAGMON ;
 int mlxsw_env_query_module_eeprom (struct mlxsw_core*,int,int ,int,int*,unsigned int*) ;

int mlxsw_env_get_module_info(struct mlxsw_core *mlxsw_core, int module,
         struct ethtool_modinfo *modinfo)
{
 u8 module_info[MLXSW_REG_MCIA_EEPROM_MODULE_INFO_SIZE];
 u16 offset = MLXSW_REG_MCIA_EEPROM_MODULE_INFO_SIZE;
 u8 module_rev_id, module_id, diag_mon;
 unsigned int read_size;
 int err;

 err = mlxsw_env_query_module_eeprom(mlxsw_core, module, 0, offset,
         module_info, &read_size);
 if (err)
  return err;

 if (read_size < offset)
  return -EIO;

 module_rev_id = module_info[MLXSW_REG_MCIA_EEPROM_MODULE_INFO_REV_ID];
 module_id = module_info[MLXSW_REG_MCIA_EEPROM_MODULE_INFO_ID];

 switch (module_id) {
 case 131:
  modinfo->type = ETH_MODULE_SFF_8436;
  modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
  break;
 case 129:
 case 130:
  if (module_id == 130 ||
      module_rev_id >=
      MLXSW_REG_MCIA_EEPROM_MODULE_INFO_REV_ID_8636) {
   modinfo->type = ETH_MODULE_SFF_8636;
   modinfo->eeprom_len = ETH_MODULE_SFF_8636_LEN;
  } else {
   modinfo->type = ETH_MODULE_SFF_8436;
   modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
  }
  break;
 case 128:

  err = mlxsw_env_query_module_eeprom(mlxsw_core, module,
          SFP_DIAGMON, 1, &diag_mon,
          &read_size);
  if (err)
   return err;

  if (read_size < 1)
   return -EIO;

  modinfo->type = ETH_MODULE_SFF_8472;
  if (diag_mon)
   modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN;
  else
   modinfo->eeprom_len = ETH_MODULE_SFF_8472_LEN / 2;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
