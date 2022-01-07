
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cec {int adap; int clk_hdmi_cec; int clk_cec; } ;
struct platform_device {int dummy; } ;


 int cec_unregister_adapter (int ) ;
 int clk_unprepare (int ) ;
 struct stm32_cec* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int stm32_cec_remove(struct platform_device *pdev)
{
 struct stm32_cec *cec = platform_get_drvdata(pdev);

 clk_unprepare(cec->clk_cec);
 clk_unprepare(cec->clk_hdmi_cec);

 cec_unregister_adapter(cec->adap);

 return 0;
}
