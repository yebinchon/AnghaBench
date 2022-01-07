
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_dev {int clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct hva_dev* dev_get_drvdata (struct device*) ;

int hva_hw_runtime_suspend(struct device *dev)
{
 struct hva_dev *hva = dev_get_drvdata(dev);

 clk_disable_unprepare(hva->clk);

 return 0;
}
