
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct asic3 {int * clocks; } ;


 size_t ASIC3_CLOCK_EX0 ;
 size_t ASIC3_CLOCK_EX1 ;
 size_t ASIC3_CLOCK_SD_BUS ;
 size_t ASIC3_CLOCK_SD_HOST ;
 int ASIC3_OFFSET (int ,int ) ;
 int ASIC3_SDHWCTRL_SUSPEND ;
 int SDCONF ;
 int SDHWCTRL ;
 int asic3_clk_disable (struct asic3*,int *) ;
 int asic3_set_register (struct asic3*,int ,int ,int) ;
 struct asic3* dev_get_drvdata (int ) ;

__attribute__((used)) static int asic3_mmc_disable(struct platform_device *pdev)
{
 struct asic3 *asic = dev_get_drvdata(pdev->dev.parent);


 asic3_set_register(asic, ASIC3_OFFSET(SDHWCTRL, SDCONF),
      ASIC3_SDHWCTRL_SUSPEND, 1);


 asic3_clk_disable(asic, &asic->clocks[ASIC3_CLOCK_SD_HOST]);
 asic3_clk_disable(asic, &asic->clocks[ASIC3_CLOCK_SD_BUS]);
 asic3_clk_disable(asic, &asic->clocks[ASIC3_CLOCK_EX0]);
 asic3_clk_disable(asic, &asic->clocks[ASIC3_CLOCK_EX1]);
 return 0;
}
