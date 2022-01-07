
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usdhi6_host {int pins_default; int pinctrl; int pins_uhs; } ;


 scalar_t__ IS_ERR (int ) ;


 int pinctrl_select_state (int ,int ) ;

__attribute__((used)) static int usdhi6_set_pinstates(struct usdhi6_host *host, int voltage)
{
 if (IS_ERR(host->pins_uhs))
  return 0;

 switch (voltage) {
 case 128:
 case 129:
  return pinctrl_select_state(host->pinctrl,
         host->pins_uhs);

 default:
  return pinctrl_select_state(host->pinctrl,
         host->pins_default);
 }
}
