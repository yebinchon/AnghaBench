
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int cec_gpio; scalar_t__ cec_is_low; } ;
struct cec_adapter {int dummy; } ;


 struct cec_gpio* cec_get_drvdata (struct cec_adapter*) ;
 int gpiod_get_value (int ) ;

__attribute__((used)) static bool cec_gpio_read(struct cec_adapter *adap)
{
 struct cec_gpio *cec = cec_get_drvdata(adap);

 if (cec->cec_is_low)
  return 0;
 return gpiod_get_value(cec->cec_gpio);
}
