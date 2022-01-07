
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_rpm {int ramclk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct qcom_rpm* dev_get_drvdata (int *) ;
 int of_platform_depopulate (int *) ;

__attribute__((used)) static int qcom_rpm_remove(struct platform_device *pdev)
{
 struct qcom_rpm *rpm = dev_get_drvdata(&pdev->dev);

 of_platform_depopulate(&pdev->dev);
 clk_disable_unprepare(rpm->ramclk);

 return 0;
}
