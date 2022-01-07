
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int dev; int state; } ;


 int MTK_HW_INIT ;
 int mtk_clk_disable (struct mtk_eth*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_put_sync (int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int mtk_hw_deinit(struct mtk_eth *eth)
{
 if (!test_and_clear_bit(MTK_HW_INIT, &eth->state))
  return 0;

 mtk_clk_disable(eth);

 pm_runtime_put_sync(eth->dev);
 pm_runtime_disable(eth->dev);

 return 0;
}
