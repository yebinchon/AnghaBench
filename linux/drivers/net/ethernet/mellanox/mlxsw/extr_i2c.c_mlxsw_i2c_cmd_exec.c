
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlxsw_i2c {int dev; } ;


 int mlxsw_i2c_cmd (int ,int ,int ,size_t,char*,size_t,char*,int *) ;

__attribute__((used)) static int mlxsw_i2c_cmd_exec(void *bus_priv, u16 opcode, u8 opcode_mod,
         u32 in_mod, bool out_mbox_direct,
         char *in_mbox, size_t in_mbox_size,
         char *out_mbox, size_t out_mbox_size,
         u8 *status)
{
 struct mlxsw_i2c *mlxsw_i2c = bus_priv;

 return mlxsw_i2c_cmd(mlxsw_i2c->dev, opcode, in_mod, in_mbox_size,
        in_mbox, out_mbox_size, out_mbox, status);
}
