
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int STMFX_FUNC_ALTGPIO_HIGH ;
 int STMFX_FUNC_ALTGPIO_LOW ;
 int STMFX_FUNC_GPIO ;
 int STMFX_FUNC_IDD ;
 int STMFX_FUNC_TS ;
 int STMFX_REG_SYS_CTRL_ALTGPIO_EN ;
 int STMFX_REG_SYS_CTRL_GPIO_EN ;
 int STMFX_REG_SYS_CTRL_IDD_EN ;
 int STMFX_REG_SYS_CTRL_TS_EN ;

__attribute__((used)) static u8 stmfx_func_to_mask(u32 func)
{
 u8 mask = 0;

 if (func & STMFX_FUNC_GPIO)
  mask |= STMFX_REG_SYS_CTRL_GPIO_EN;

 if ((func & STMFX_FUNC_ALTGPIO_LOW) || (func & STMFX_FUNC_ALTGPIO_HIGH))
  mask |= STMFX_REG_SYS_CTRL_ALTGPIO_EN;

 if (func & STMFX_FUNC_TS)
  mask |= STMFX_REG_SYS_CTRL_TS_EN;

 if (func & STMFX_FUNC_IDD)
  mask |= STMFX_REG_SYS_CTRL_IDD_EN;

 return mask;
}
