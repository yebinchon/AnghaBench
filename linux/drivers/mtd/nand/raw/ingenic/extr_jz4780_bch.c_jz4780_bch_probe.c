
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ingenic_ecc {int clk; } ;


 int BCH_CLK_RATE ;
 int clk_set_rate (int ,int ) ;
 int ingenic_ecc_probe (struct platform_device*) ;
 struct ingenic_ecc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int jz4780_bch_probe(struct platform_device *pdev)
{
 struct ingenic_ecc *bch;
 int ret;

 ret = ingenic_ecc_probe(pdev);
 if (ret)
  return ret;

 bch = platform_get_drvdata(pdev);
 clk_set_rate(bch->clk, BCH_CLK_RATE);

 return 0;
}
