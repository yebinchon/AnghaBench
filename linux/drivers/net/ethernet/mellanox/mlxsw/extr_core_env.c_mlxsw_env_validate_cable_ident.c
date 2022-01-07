
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct mlxsw_core {int dummy; } ;


 int EINVAL ;
 int MLXSW_REG (int ) ;





 int MLXSW_REG_MCIA_EEPROM_SIZE ;
 int MLXSW_REG_MCIA_I2C_ADDR_LOW ;
 int MLXSW_REG_MCIA_LEN ;
 int MLXSW_REG_MCIA_PAGE0_LO_OFF ;
 int mcia ;
 int mlxsw_reg_mcia_eeprom_memcpy_from (char*,char*) ;
 int mlxsw_reg_mcia_pack (char*,int,int ,int ,int ,int,int ) ;
 int mlxsw_reg_query (struct mlxsw_core*,int ,char*) ;

__attribute__((used)) static int mlxsw_env_validate_cable_ident(struct mlxsw_core *core, int id,
       bool *qsfp)
{
 char eeprom_tmp[MLXSW_REG_MCIA_EEPROM_SIZE];
 char mcia_pl[MLXSW_REG_MCIA_LEN];
 u8 ident;
 int err;

 mlxsw_reg_mcia_pack(mcia_pl, id, 0, MLXSW_REG_MCIA_PAGE0_LO_OFF, 0, 1,
       MLXSW_REG_MCIA_I2C_ADDR_LOW);
 err = mlxsw_reg_query(core, MLXSW_REG(mcia), mcia_pl);
 if (err)
  return err;
 mlxsw_reg_mcia_eeprom_memcpy_from(mcia_pl, eeprom_tmp);
 ident = eeprom_tmp[0];
 switch (ident) {
 case 128:
  *qsfp = 0;
  break;
 case 132:
 case 129:
 case 131:
 case 130:
  *qsfp = 1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
