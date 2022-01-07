
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int disabled_state; int p; } ;


 scalar_t__ IS_ERR (int ) ;
 int dev_err (int ,char*) ;
 TYPE_1__* gf ;
 int pinctrl_select_state (int ,int ) ;

__attribute__((used)) static void gemini_flash_disable_pins(void)
{
 int ret;

 if (IS_ERR(gf->disabled_state))
  return;
 ret = pinctrl_select_state(gf->p, gf->disabled_state);
 if (ret)
  dev_err(gf->dev, "failed to disable pins\n");
}
