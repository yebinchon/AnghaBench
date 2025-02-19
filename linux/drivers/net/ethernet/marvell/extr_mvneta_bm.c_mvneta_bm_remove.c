
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dummy; } ;
struct mvneta_bm_pool {int dummy; } ;
struct mvneta_bm {int clk; struct mvneta_bm_pool* bm_pools; } ;


 int MVNETA_BM_COMMAND_REG ;
 int MVNETA_BM_POOLS_NUM ;
 int MVNETA_BM_STOP_MASK ;
 int clk_disable_unprepare (int ) ;
 int mvneta_bm_pool_destroy (struct mvneta_bm*,struct mvneta_bm_pool*,int) ;
 int mvneta_bm_put_sram (struct mvneta_bm*) ;
 int mvneta_bm_write (struct mvneta_bm*,int ,int ) ;
 struct mvneta_bm* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mvneta_bm_remove(struct platform_device *pdev)
{
 struct mvneta_bm *priv = platform_get_drvdata(pdev);
 u8 all_ports_map = 0xff;
 int i = 0;

 for (i = 0; i < MVNETA_BM_POOLS_NUM; i++) {
  struct mvneta_bm_pool *bm_pool = &priv->bm_pools[i];

  mvneta_bm_pool_destroy(priv, bm_pool, all_ports_map);
 }

 mvneta_bm_put_sram(priv);


 mvneta_bm_write(priv, MVNETA_BM_COMMAND_REG, MVNETA_BM_STOP_MASK);

 clk_disable_unprepare(priv->clk);

 return 0;
}
