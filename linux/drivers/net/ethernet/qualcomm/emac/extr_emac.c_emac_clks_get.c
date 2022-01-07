
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct emac_adapter {struct clk** clk; } ;
struct clk {int dummy; } ;


 unsigned int EMAC_CLK_CNT ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_err (int *,char*,int ,int) ;
 struct clk* devm_clk_get (int *,int ) ;
 int * emac_clk_name ;

__attribute__((used)) static int emac_clks_get(struct platform_device *pdev,
    struct emac_adapter *adpt)
{
 unsigned int i;

 for (i = 0; i < EMAC_CLK_CNT; i++) {
  struct clk *clk = devm_clk_get(&pdev->dev, emac_clk_name[i]);

  if (IS_ERR(clk)) {
   dev_err(&pdev->dev,
    "could not claim clock %s (error=%li)\n",
    emac_clk_name[i], PTR_ERR(clk));

   return PTR_ERR(clk);
  }

  adpt->clk[i] = clk;
 }

 return 0;
}
