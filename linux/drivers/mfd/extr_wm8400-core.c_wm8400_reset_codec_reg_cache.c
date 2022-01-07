
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8400 {int regmap; } ;


 int regmap_reinit_cache (int ,int *) ;
 int wm8400_regmap_config ;

void wm8400_reset_codec_reg_cache(struct wm8400 *wm8400)
{
 regmap_reinit_cache(wm8400->regmap, &wm8400_regmap_config);
}
