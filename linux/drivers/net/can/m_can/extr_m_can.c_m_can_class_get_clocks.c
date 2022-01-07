
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_can_classdev {int dev; void* cclk; void* hclk; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (void*) ;
 int dev_err (int ,char*) ;
 void* devm_clk_get (int ,char*) ;

int m_can_class_get_clocks(struct m_can_classdev *m_can_dev)
{
 int ret = 0;

 m_can_dev->hclk = devm_clk_get(m_can_dev->dev, "hclk");
 m_can_dev->cclk = devm_clk_get(m_can_dev->dev, "cclk");

 if (IS_ERR(m_can_dev->cclk)) {
  dev_err(m_can_dev->dev, "no clock found\n");
  ret = -ENODEV;
 }

 return ret;
}
