
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mcia ;
 int mlxsw_reg_mcia_device_address_set (char*,int ) ;
 int mlxsw_reg_mcia_i2c_device_address_set (char*,int ) ;
 int mlxsw_reg_mcia_l_set (char*,int ) ;
 int mlxsw_reg_mcia_module_set (char*,int ) ;
 int mlxsw_reg_mcia_page_number_set (char*,int ) ;
 int mlxsw_reg_mcia_size_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_mcia_pack(char *payload, u8 module, u8 lock,
           u8 page_number, u16 device_addr,
           u8 size, u8 i2c_device_addr)
{
 MLXSW_REG_ZERO(mcia, payload);
 mlxsw_reg_mcia_module_set(payload, module);
 mlxsw_reg_mcia_l_set(payload, lock);
 mlxsw_reg_mcia_page_number_set(payload, page_number);
 mlxsw_reg_mcia_device_address_set(payload, device_addr);
 mlxsw_reg_mcia_size_set(payload, size);
 mlxsw_reg_mcia_i2c_device_address_set(payload, i2c_device_addr);
}
