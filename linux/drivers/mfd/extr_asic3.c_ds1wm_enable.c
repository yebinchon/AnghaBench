
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
 size_t ASIC3_CLOCK_OWM ;
 int ASIC3_EXTCF_OWM_EN ;
 int ASIC3_EXTCF_OWM_RESET ;
 int ASIC3_OFFSET (int ,int ) ;
 int EXTCF ;
 int RESET ;
 int SELECT ;
 int asic3_clk_enable (struct asic3*,int *) ;
 int asic3_set_register (struct asic3*,int ,int ,int) ;
 struct asic3* dev_get_drvdata (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ds1wm_enable(struct platform_device *pdev)
{
 struct asic3 *asic = dev_get_drvdata(pdev->dev.parent);


 asic3_clk_enable(asic, &asic->clocks[ASIC3_CLOCK_EX0]);
 asic3_clk_enable(asic, &asic->clocks[ASIC3_CLOCK_EX1]);
 asic3_clk_enable(asic, &asic->clocks[ASIC3_CLOCK_OWM]);
 usleep_range(1000, 5000);


 asic3_set_register(asic, ASIC3_OFFSET(EXTCF, RESET),
      ASIC3_EXTCF_OWM_RESET, 1);
 usleep_range(1000, 5000);
 asic3_set_register(asic, ASIC3_OFFSET(EXTCF, RESET),
      ASIC3_EXTCF_OWM_RESET, 0);
 usleep_range(1000, 5000);
 asic3_set_register(asic, ASIC3_OFFSET(EXTCF, SELECT),
      ASIC3_EXTCF_OWM_EN, 1);
 usleep_range(1000, 5000);

 return 0;
}
