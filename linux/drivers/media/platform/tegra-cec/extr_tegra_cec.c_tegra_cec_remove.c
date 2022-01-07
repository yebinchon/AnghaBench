
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_cec {int adap; int notifier; int clk; } ;
struct platform_device {int dummy; } ;


 int cec_notifier_cec_adap_unregister (int ) ;
 int cec_unregister_adapter (int ) ;
 int clk_disable_unprepare (int ) ;
 struct tegra_cec* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tegra_cec_remove(struct platform_device *pdev)
{
 struct tegra_cec *cec = platform_get_drvdata(pdev);

 clk_disable_unprepare(cec->clk);

 cec_notifier_cec_adap_unregister(cec->notifier);
 cec_unregister_adapter(cec->adap);

 return 0;
}
