
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bdisp_dev {int clock; } ;


 int bdisp_m2m_suspend (struct bdisp_dev*) ;
 int clk_disable (int ) ;
 struct bdisp_dev* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int bdisp_runtime_suspend(struct device *dev)
{
 struct bdisp_dev *bdisp = dev_get_drvdata(dev);
 int ret = bdisp_m2m_suspend(bdisp);

 if (!ret)
  clk_disable(bdisp->clock);

 return ret;
}
