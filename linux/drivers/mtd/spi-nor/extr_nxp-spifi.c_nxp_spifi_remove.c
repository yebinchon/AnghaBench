
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int mtd; } ;
struct nxp_spifi {int clk_reg; int clk_spifi; TYPE_1__ nor; } ;


 int clk_disable_unprepare (int ) ;
 int mtd_device_unregister (int *) ;
 struct nxp_spifi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int nxp_spifi_remove(struct platform_device *pdev)
{
 struct nxp_spifi *spifi = platform_get_drvdata(pdev);

 mtd_device_unregister(&spifi->nor.mtd);
 clk_disable_unprepare(spifi->clk_spifi);
 clk_disable_unprepare(spifi->clk_reg);

 return 0;
}
