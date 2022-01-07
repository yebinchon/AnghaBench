
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int cec_irq; } ;
struct cec_adapter {int dummy; } ;


 struct cec_gpio* cec_get_drvdata (struct cec_adapter*) ;
 int enable_irq (int ) ;

__attribute__((used)) static bool cec_gpio_enable_irq(struct cec_adapter *adap)
{
 struct cec_gpio *cec = cec_get_drvdata(adap);

 enable_irq(cec->cec_irq);
 return 1;
}
