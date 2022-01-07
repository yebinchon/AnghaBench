
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_adapter {int dummy; } ;


 int cec_gpio_disable_irq (struct cec_adapter*) ;

__attribute__((used)) static void cec_gpio_free(struct cec_adapter *adap)
{
 cec_gpio_disable_irq(adap);
}
