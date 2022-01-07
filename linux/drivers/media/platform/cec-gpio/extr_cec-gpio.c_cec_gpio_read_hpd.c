
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int hpd_gpio; } ;
struct cec_adapter {int dummy; } ;


 int ENOTTY ;
 struct cec_gpio* cec_get_drvdata (struct cec_adapter*) ;
 int gpiod_get_value (int ) ;

__attribute__((used)) static int cec_gpio_read_hpd(struct cec_adapter *adap)
{
 struct cec_gpio *cec = cec_get_drvdata(adap);

 if (!cec->hpd_gpio)
  return -ENOTTY;
 return gpiod_get_value(cec->hpd_gpio);
}
