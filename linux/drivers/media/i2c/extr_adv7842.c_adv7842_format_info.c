
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct adv7842_state {int dummy; } ;
struct adv7842_format_info {scalar_t__ code; } ;


 unsigned int ARRAY_SIZE (struct adv7842_format_info const*) ;
 struct adv7842_format_info const* adv7842_formats ;

__attribute__((used)) static const struct adv7842_format_info *
adv7842_format_info(struct adv7842_state *state, u32 code)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(adv7842_formats); ++i) {
  if (adv7842_formats[i].code == code)
   return &adv7842_formats[i];
 }

 return ((void*)0);
}
