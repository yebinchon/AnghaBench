
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clk32k_src; } ;
struct arizona {scalar_t__ clk32k_ref; int clk_lock; int * mclk; int dev; TYPE_1__ pdata; int regmap; } ;




 int ARIZONA_CLK_32K_ENA ;
 int ARIZONA_CLOCK_32K_1 ;
 size_t ARIZONA_MCLK1 ;
 size_t ARIZONA_MCLK2 ;
 int BUG_ON (int) ;
 int clk_disable_unprepare (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put_sync (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

int arizona_clk32k_disable(struct arizona *arizona)
{
 mutex_lock(&arizona->clk_lock);

 BUG_ON(arizona->clk32k_ref <= 0);

 arizona->clk32k_ref--;

 if (arizona->clk32k_ref == 0) {
  regmap_update_bits(arizona->regmap, ARIZONA_CLOCK_32K_1,
       ARIZONA_CLK_32K_ENA, 0);

  switch (arizona->pdata.clk32k_src) {
  case 129:
   pm_runtime_put_sync(arizona->dev);
   clk_disable_unprepare(arizona->mclk[ARIZONA_MCLK1]);
   break;
  case 128:
   clk_disable_unprepare(arizona->mclk[ARIZONA_MCLK2]);
   break;
  }
 }

 mutex_unlock(&arizona->clk_lock);

 return 0;
}
