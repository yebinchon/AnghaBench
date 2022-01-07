
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int radio_ver; int radio_rev; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_rfatt_list {int max_val; scalar_t__ min_val; void* len; struct b43_rfatt const* list; } ;
struct b43_rfatt {int att; int with_padmix; } ;


 void* ARRAY_SIZE (struct b43_rfatt const*) ;
 int b43_has_hardware_pctl (struct b43_wldev*) ;

__attribute__((used)) static void generate_rfatt_list(struct b43_wldev *dev,
    struct b43_rfatt_list *list)
{
 struct b43_phy *phy = &dev->phy;


 static const struct b43_rfatt rfatt_0[] = {
  {.att = 3,.with_padmix = 0,},
  {.att = 1,.with_padmix = 0,},
  {.att = 5,.with_padmix = 0,},
  {.att = 7,.with_padmix = 0,},
  {.att = 9,.with_padmix = 0,},
  {.att = 2,.with_padmix = 0,},
  {.att = 0,.with_padmix = 0,},
  {.att = 4,.with_padmix = 0,},
  {.att = 6,.with_padmix = 0,},
  {.att = 8,.with_padmix = 0,},
  {.att = 1,.with_padmix = 1,},
  {.att = 2,.with_padmix = 1,},
  {.att = 3,.with_padmix = 1,},
  {.att = 4,.with_padmix = 1,},
 };

 static const struct b43_rfatt rfatt_1[] = {
  {.att = 2,.with_padmix = 1,},
  {.att = 4,.with_padmix = 1,},
  {.att = 6,.with_padmix = 1,},
  {.att = 8,.with_padmix = 1,},
  {.att = 10,.with_padmix = 1,},
  {.att = 12,.with_padmix = 1,},
  {.att = 14,.with_padmix = 1,},
 };

 static const struct b43_rfatt rfatt_2[] = {
  {.att = 0,.with_padmix = 1,},
  {.att = 2,.with_padmix = 1,},
  {.att = 4,.with_padmix = 1,},
  {.att = 6,.with_padmix = 1,},
  {.att = 8,.with_padmix = 1,},
  {.att = 9,.with_padmix = 1,},
  {.att = 9,.with_padmix = 1,},
 };

 if (!b43_has_hardware_pctl(dev)) {

  list->list = rfatt_0;
  list->len = ARRAY_SIZE(rfatt_0);
  list->min_val = 0;
  list->max_val = 9;
  return;
 }
 if (phy->radio_ver == 0x2050 && phy->radio_rev == 8) {

  list->list = rfatt_1;
  list->len = ARRAY_SIZE(rfatt_1);
  list->min_val = 0;
  list->max_val = 14;
  return;
 }

 list->list = rfatt_2;
 list->len = ARRAY_SIZE(rfatt_2);
 list->min_val = 0;
 list->max_val = 9;
}
