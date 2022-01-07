
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmfx {int map; } ;


 int STMFX_BOOT_TIME_MS ;
 int STMFX_REG_SYS_CTRL ;
 int STMFX_REG_SYS_CTRL_SWRST ;
 int msleep (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int stmfx_chip_reset(struct stmfx *stmfx)
{
 int ret;

 ret = regmap_write(stmfx->map, STMFX_REG_SYS_CTRL,
      STMFX_REG_SYS_CTRL_SWRST);
 if (ret)
  return ret;

 msleep(STMFX_BOOT_TIME_MS);

 return ret;
}
