
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da8xx_ddrctl_setting {int name; } ;
struct da8xx_ddrctl_config_knob {int name; } ;


 int ARRAY_SIZE (struct da8xx_ddrctl_config_knob*) ;
 struct da8xx_ddrctl_config_knob* da8xx_ddrctl_knobs ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static const struct da8xx_ddrctl_config_knob *
da8xx_ddrctl_match_knob(const struct da8xx_ddrctl_setting *setting)
{
 const struct da8xx_ddrctl_config_knob *knob;
 int i;

 for (i = 0; i < ARRAY_SIZE(da8xx_ddrctl_knobs); i++) {
  knob = &da8xx_ddrctl_knobs[i];

  if (strcmp(knob->name, setting->name) == 0)
   return knob;
 }

 return ((void*)0);
}
