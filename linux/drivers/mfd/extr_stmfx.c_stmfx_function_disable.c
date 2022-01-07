
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stmfx {int map; } ;


 int STMFX_REG_SYS_CTRL ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int stmfx_func_to_mask (int ) ;

int stmfx_function_disable(struct stmfx *stmfx, u32 func)
{
 u8 mask = stmfx_func_to_mask(func);

 return regmap_update_bits(stmfx->map, STMFX_REG_SYS_CTRL, mask, 0);
}
