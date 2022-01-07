
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {size_t id; } ;
struct asic3 {int * clocks; } ;


 int asic3_clk_disable (struct asic3*,int *) ;
 size_t* clock_ledn ;
 struct asic3* dev_get_drvdata (int ) ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;

__attribute__((used)) static int asic3_leds_disable(struct platform_device *pdev)
{
 const struct mfd_cell *cell = mfd_get_cell(pdev);
 struct asic3 *asic = dev_get_drvdata(pdev->dev.parent);

 asic3_clk_disable(asic, &asic->clocks[clock_ledn[cell->id]]);

 return 0;
}
