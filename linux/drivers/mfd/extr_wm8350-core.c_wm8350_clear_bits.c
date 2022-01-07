
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int regmap; } ;


 int regmap_update_bits (int ,int ,int ,int ) ;

int wm8350_clear_bits(struct wm8350 *wm8350, u16 reg, u16 mask)
{
 return regmap_update_bits(wm8350->regmap, reg, mask, 0);
}
