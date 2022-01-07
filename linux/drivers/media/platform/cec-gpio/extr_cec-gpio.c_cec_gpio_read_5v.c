
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_gpio {int v5_gpio; } ;
struct cec_adapter {int dummy; } ;


 int ENOTTY ;
 struct cec_gpio* cec_get_drvdata (struct cec_adapter*) ;
 int gpiod_get_value (int ) ;

__attribute__((used)) static int cec_gpio_read_5v(struct cec_adapter *adap)
{
 struct cec_gpio *cec = cec_get_drvdata(adap);

 if (!cec->v5_gpio)
  return -ENOTTY;
 return gpiod_get_value(cec->v5_gpio);
}
