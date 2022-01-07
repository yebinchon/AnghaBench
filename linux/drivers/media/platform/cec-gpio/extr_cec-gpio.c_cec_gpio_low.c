
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int cec_is_low; int cec_gpio; } ;
struct cec_adapter {int dummy; } ;


 struct cec_gpio* cec_get_drvdata (struct cec_adapter*) ;
 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static void cec_gpio_low(struct cec_adapter *adap)
{
 struct cec_gpio *cec = cec_get_drvdata(adap);

 if (cec->cec_is_low)
  return;
 cec->cec_is_low = 1;
 gpiod_set_value(cec->cec_gpio, 0);
}
