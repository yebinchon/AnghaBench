
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mxc_nand_host {int clk; scalar_t__ clk_act; int nand; } ;


 int clk_disable_unprepare (int ) ;
 int nand_release (int *) ;
 struct mxc_nand_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mxcnd_remove(struct platform_device *pdev)
{
 struct mxc_nand_host *host = platform_get_drvdata(pdev);

 nand_release(&host->nand);
 if (host->clk_act)
  clk_disable_unprepare(host->clk);

 return 0;
}
