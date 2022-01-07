
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv76xx_state {int dummy; } ;


 int ADV7604_PAGE_AVLINK ;
 int ADV76XX_PAGE_MAX ;
 int ENODEV ;
 int configure_regmap (struct adv76xx_state*,int) ;

__attribute__((used)) static int configure_regmaps(struct adv76xx_state *state)
{
 int i, err;

 for (i = ADV7604_PAGE_AVLINK ; i < ADV76XX_PAGE_MAX; i++) {
  err = configure_regmap(state, i);
  if (err && (err != -ENODEV))
   return err;
 }
 return 0;
}
