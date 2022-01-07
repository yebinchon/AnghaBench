
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long u_long ;
struct map_info {int dummy; } ;
struct cfi_private {int dummy; } ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {unsigned long* x; TYPE_1__ member_0; } ;
typedef TYPE_2__ map_word ;


 int BUG () ;
 int cfi_interleave (struct cfi_private*) ;
 unsigned long cpu_to_cfi16 (struct map_info*,unsigned long) ;
 unsigned long cpu_to_cfi32 (struct map_info*,unsigned long) ;
 int map_bankwidth (struct map_info*) ;
 scalar_t__ map_bankwidth_is_large (struct map_info*) ;

map_word cfi_build_cmd(u_long cmd, struct map_info *map, struct cfi_private *cfi)
{
 map_word val = { {0} };
 int wordwidth, words_per_bus, chip_mode, chips_per_word;
 unsigned long onecmd;
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



 switch (chip_mode) {
 default: BUG();
 case 1:
  onecmd = cmd;
  break;
 case 2:
  onecmd = cpu_to_cfi16(map, cmd);
  break;
 case 4:
  onecmd = cpu_to_cfi32(map, cmd);
  break;
 }



 switch (chips_per_word) {
 default: BUG();





 case 4:
  onecmd |= (onecmd << (chip_mode * 16));

 case 2:
  onecmd |= (onecmd << (chip_mode * 8));

 case 1:
  ;
 }



 for (i=0; i < words_per_bus; i++) {
  val.x[i] = onecmd;
 }

 return val;
}
