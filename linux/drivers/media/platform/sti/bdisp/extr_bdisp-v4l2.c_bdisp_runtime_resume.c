
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bdisp_dev {int clock; } ;


 int bdisp_m2m_resume (struct bdisp_dev*) ;
 int clk_enable (int ) ;
 struct bdisp_dev* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int bdisp_runtime_resume(struct device *dev)
{
 struct bdisp_dev *bdisp = dev_get_drvdata(dev);
 int ret = clk_enable(bdisp->clock);

 if (ret)
  return ret;

 return bdisp_m2m_resume(bdisp);
}
