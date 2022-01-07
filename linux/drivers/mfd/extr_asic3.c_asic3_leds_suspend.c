
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {size_t id; } ;
struct asic3 {int * clocks; int gpio; } ;


 int ASIC3_GPIO (int ,size_t) ;
 int C ;
 int asic3_clk_disable (struct asic3*,int *) ;
 scalar_t__ asic3_gpio_get (int *,int ) ;
 size_t* clock_ledn ;
 struct asic3* dev_get_drvdata (int ) ;
 struct mfd_cell* mfd_get_cell (struct platform_device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int asic3_leds_suspend(struct platform_device *pdev)
{
 const struct mfd_cell *cell = mfd_get_cell(pdev);
 struct asic3 *asic = dev_get_drvdata(pdev->dev.parent);

 while (asic3_gpio_get(&asic->gpio, ASIC3_GPIO(C, cell->id)) != 0)
  usleep_range(1000, 5000);

 asic3_clk_disable(asic, &asic->clocks[clock_ledn[cell->id]]);

 return 0;
}
