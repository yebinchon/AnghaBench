
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stmfx {int map; int dev; } ;


 int EBUSY ;
 int STMFX_FUNC_ALTGPIO_HIGH ;
 int STMFX_FUNC_ALTGPIO_LOW ;
 int STMFX_FUNC_IDD ;
 int STMFX_FUNC_TS ;
 int STMFX_REG_SYS_CTRL ;
 int STMFX_REG_SYS_CTRL_ALTGPIO_EN ;
 int STMFX_REG_SYS_CTRL_IDD_EN ;
 int STMFX_REG_SYS_CTRL_TS_EN ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int stmfx_func_to_mask (int) ;

int stmfx_function_enable(struct stmfx *stmfx, u32 func)
{
 u32 sys_ctrl;
 u8 mask;
 int ret;

 ret = regmap_read(stmfx->map, STMFX_REG_SYS_CTRL, &sys_ctrl);
 if (ret)
  return ret;







 if (((func & STMFX_FUNC_IDD) || (func & STMFX_FUNC_TS)) &&
     (sys_ctrl & STMFX_REG_SYS_CTRL_ALTGPIO_EN)) {
  dev_err(stmfx->dev, "ALTGPIO function already enabled\n");
  return -EBUSY;
 }


 if ((func & STMFX_FUNC_ALTGPIO_LOW) &&
     (sys_ctrl & STMFX_REG_SYS_CTRL_TS_EN)) {
  dev_err(stmfx->dev, "TS in use, aGPIO[3:0] unavailable\n");
  return -EBUSY;
 }


 if ((func & STMFX_FUNC_ALTGPIO_HIGH) &&
     (sys_ctrl & STMFX_REG_SYS_CTRL_IDD_EN)) {
  dev_err(stmfx->dev, "IDD in use, aGPIO[7:4] unavailable\n");
  return -EBUSY;
 }

 mask = stmfx_func_to_mask(func);

 return regmap_update_bits(stmfx->map, STMFX_REG_SYS_CTRL, mask, mask);
}
