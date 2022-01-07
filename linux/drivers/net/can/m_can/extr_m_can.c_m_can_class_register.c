
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct m_can_classdev {TYPE_1__* net; int dev; scalar_t__ pm_clock_support; int version; } ;
struct TYPE_5__ {int irq; int name; } ;


 int KBUILD_MODNAME ;
 int dev_err (int ,char*,int ,int) ;
 int dev_info (int ,char*,int ,int ,int ) ;
 int devm_can_led_init (TYPE_1__*) ;
 int free_candev (TYPE_1__*) ;
 int m_can_clk_start (struct m_can_classdev*) ;
 int m_can_clk_stop (struct m_can_classdev*) ;
 int m_can_dev_setup (struct m_can_classdev*) ;
 int of_can_transceiver (TYPE_1__*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_enable (int ) ;
 int register_m_can_dev (TYPE_1__*) ;

int m_can_class_register(struct m_can_classdev *m_can_dev)
{
 int ret;

 if (m_can_dev->pm_clock_support) {
  pm_runtime_enable(m_can_dev->dev);
  ret = m_can_clk_start(m_can_dev);
  if (ret)
   goto pm_runtime_fail;
 }

 ret = m_can_dev_setup(m_can_dev);
 if (ret)
  goto clk_disable;

 ret = register_m_can_dev(m_can_dev->net);
 if (ret) {
  dev_err(m_can_dev->dev, "registering %s failed (err=%d)\n",
   m_can_dev->net->name, ret);
  goto clk_disable;
 }

 devm_can_led_init(m_can_dev->net);

 of_can_transceiver(m_can_dev->net);

 dev_info(m_can_dev->dev, "%s device registered (irq=%d, version=%d)\n",
   KBUILD_MODNAME, m_can_dev->net->irq, m_can_dev->version);




clk_disable:
 m_can_clk_stop(m_can_dev);
pm_runtime_fail:
 if (ret) {
  if (m_can_dev->pm_clock_support)
   pm_runtime_disable(m_can_dev->dev);
  free_candev(m_can_dev->net);
 }

 return ret;
}
