
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct asic3 {scalar_t__ bus_shift; int tmio_cnf; } ;


 struct asic3* dev_get_drvdata (int ) ;
 int tmio_core_mmc_clk_div (int ,scalar_t__,int) ;

__attribute__((used)) static void asic3_mmc_clk_div(struct platform_device *pdev, int state)
{
 struct asic3 *asic = dev_get_drvdata(pdev->dev.parent);

 tmio_core_mmc_clk_div(asic->tmio_cnf, 1 - asic->bus_shift, state);
}
