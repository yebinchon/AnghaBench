
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmfx {scalar_t__ vdd; int map; } ;
struct i2c_client {int dummy; } ;


 int STMFX_REG_IRQ_SRC_EN ;
 int STMFX_REG_SYS_CTRL ;
 struct stmfx* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_write (int ,int ,int ) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int stmfx_chip_exit(struct i2c_client *client)
{
 struct stmfx *stmfx = i2c_get_clientdata(client);

 regmap_write(stmfx->map, STMFX_REG_IRQ_SRC_EN, 0);
 regmap_write(stmfx->map, STMFX_REG_SYS_CTRL, 0);

 if (stmfx->vdd)
  return regulator_disable(stmfx->vdd);

 return 0;
}
