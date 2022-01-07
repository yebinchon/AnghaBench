
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clk32k_src; } ;
struct arizona {int clk32k_ref; int clk_lock; int regmap; int * mclk; int dev; TYPE_1__ pdata; } ;




 int ARIZONA_CLK_32K_ENA ;
 int ARIZONA_CLOCK_32K_1 ;
 size_t ARIZONA_MCLK1 ;
 size_t ARIZONA_MCLK2 ;
 int clk_prepare_enable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

int arizona_clk32k_enable(struct arizona *arizona)
{
 int ret = 0;

 mutex_lock(&arizona->clk_lock);

 arizona->clk32k_ref++;

 if (arizona->clk32k_ref == 1) {
  switch (arizona->pdata.clk32k_src) {
  case 129:
   ret = pm_runtime_get_sync(arizona->dev);
   if (ret != 0)
    goto err_ref;
   ret = clk_prepare_enable(arizona->mclk[ARIZONA_MCLK1]);
   if (ret != 0) {
    pm_runtime_put_sync(arizona->dev);
    goto err_ref;
   }
   break;
  case 128:
   ret = clk_prepare_enable(arizona->mclk[ARIZONA_MCLK2]);
   if (ret != 0)
    goto err_ref;
   break;
  }

  ret = regmap_update_bits(arizona->regmap, ARIZONA_CLOCK_32K_1,
      ARIZONA_CLK_32K_ENA,
      ARIZONA_CLK_32K_ENA);
 }

err_ref:
 if (ret != 0)
  arizona->clk32k_ref--;

 mutex_unlock(&arizona->clk_lock);

 return ret;
}
