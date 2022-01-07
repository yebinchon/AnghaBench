
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long GPIOF_OUT_INIT_HIGH ;
 unsigned long GPIOF_OUT_INIT_LOW ;
 int gpio_export (int,int ) ;
 int gpio_is_valid (int) ;
 int gpio_request_one (int,unsigned long,char const*) ;

__attribute__((used)) static int s5k4ecgx_config_gpio(int nr, int val, const char *name)
{
 unsigned long flags = val ? GPIOF_OUT_INIT_HIGH : GPIOF_OUT_INIT_LOW;
 int ret;

 if (!gpio_is_valid(nr))
  return 0;
 ret = gpio_request_one(nr, flags, name);
 if (!ret)
  gpio_export(nr, 0);

 return ret;
}
