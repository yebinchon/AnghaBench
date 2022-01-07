
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_dev {int clk; struct device* dev; } ;
struct device {int dummy; } ;


 int CLK_RATE ;
 int EINVAL ;
 int HVA_PREFIX ;
 scalar_t__ clk_prepare_enable (int ) ;
 scalar_t__ clk_set_rate (int ,int ) ;
 int dev_err (struct device*,char*,int ) ;
 struct hva_dev* dev_get_drvdata (struct device*) ;

int hva_hw_runtime_resume(struct device *dev)
{
 struct hva_dev *hva = dev_get_drvdata(dev);

 if (clk_prepare_enable(hva->clk)) {
  dev_err(hva->dev, "%s     failed to prepare hva clk\n",
   HVA_PREFIX);
  return -EINVAL;
 }

 if (clk_set_rate(hva->clk, CLK_RATE)) {
  dev_err(dev, "%s     failed to set clock frequency\n",
   HVA_PREFIX);
  return -EINVAL;
 }

 return 0;
}
