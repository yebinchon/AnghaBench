
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code; int height; int width; } ;
struct s5k6aa_preset {int index; scalar_t__ clk_id; TYPE_1__ mbus_fmt; } ;
struct s5k6aa {struct s5k6aa_preset* presets; struct s5k6aa_preset* preset; int * fiv; } ;
struct TYPE_4__ {int code; } ;


 size_t S5K6AA_INTERVAL_DEF_INDEX ;
 int S5K6AA_MAX_PRESETS ;
 int S5K6AA_OUT_HEIGHT_DEF ;
 int S5K6AA_OUT_WIDTH_DEF ;
 TYPE_2__* s5k6aa_formats ;
 int * s5k6aa_intervals ;

__attribute__((used)) static void s5k6aa_presets_data_init(struct s5k6aa *s5k6aa)
{
 struct s5k6aa_preset *preset = &s5k6aa->presets[0];
 int i;

 for (i = 0; i < S5K6AA_MAX_PRESETS; i++) {
  preset->mbus_fmt.width = S5K6AA_OUT_WIDTH_DEF;
  preset->mbus_fmt.height = S5K6AA_OUT_HEIGHT_DEF;
  preset->mbus_fmt.code = s5k6aa_formats[0].code;
  preset->index = i;
  preset->clk_id = 0;
  preset++;
 }

 s5k6aa->fiv = &s5k6aa_intervals[S5K6AA_INTERVAL_DEF_INDEX];
 s5k6aa->preset = &s5k6aa->presets[0];
}
