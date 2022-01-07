
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct adv76xx_state {TYPE_1__* info; } ;
struct adv76xx_format_info {scalar_t__ code; } ;
struct TYPE_2__ {unsigned int nformats; struct adv76xx_format_info const* formats; } ;



__attribute__((used)) static const struct adv76xx_format_info *
adv76xx_format_info(struct adv76xx_state *state, u32 code)
{
 unsigned int i;

 for (i = 0; i < state->info->nformats; ++i) {
  if (state->info->formats[i].code == code)
   return &state->info->formats[i];
 }

 return ((void*)0);
}
