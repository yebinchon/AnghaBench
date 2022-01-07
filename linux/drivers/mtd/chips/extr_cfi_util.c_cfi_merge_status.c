
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {int dummy; } ;
struct cfi_private {int dummy; } ;
struct TYPE_3__ {unsigned long* x; } ;
typedef TYPE_1__ map_word ;


 int BUG () ;
 unsigned long cfi16_to_cpu (struct map_info*,unsigned long) ;
 unsigned long cfi32_to_cpu (struct map_info*,unsigned long) ;
 int cfi_interleave (struct cfi_private*) ;
 int map_bankwidth (struct map_info*) ;
 scalar_t__ map_bankwidth_is_large (struct map_info*) ;

unsigned long cfi_merge_status(map_word val, struct map_info *map,
        struct cfi_private *cfi)
{
 int wordwidth, words_per_bus, chip_mode, chips_per_word;
 unsigned long onestat, res = 0;
 int i;





 if (map_bankwidth_is_large(map)) {
  wordwidth = sizeof(unsigned long);
  words_per_bus = (map_bankwidth(map)) / wordwidth;
 } else {
  wordwidth = map_bankwidth(map);
  words_per_bus = 1;
 }

 chip_mode = map_bankwidth(map) / cfi_interleave(cfi);
 chips_per_word = wordwidth * cfi_interleave(cfi) / map_bankwidth(map);

 onestat = val.x[0];

 for (i=1; i < words_per_bus; i++) {
  onestat |= val.x[i];
 }

 res = onestat;
 switch(chips_per_word) {
 default: BUG();





 case 4:
  res |= (onestat >> (chip_mode * 16));

 case 2:
  res |= (onestat >> (chip_mode * 8));

 case 1:
  ;
 }



 switch (chip_mode) {
 case 1:
  break;
 case 2:
  res = cfi16_to_cpu(map, res);
  break;
 case 4:
  res = cfi32_to_cpu(map, res);
  break;
 default: BUG();
 }
 return res;
}
