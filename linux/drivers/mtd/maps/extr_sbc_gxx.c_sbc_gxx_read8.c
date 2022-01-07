
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {int dummy; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 unsigned long WINDOW_MASK ;
 scalar_t__ iomapadr ;
 int readb (scalar_t__) ;
 int sbc_gxx_page (struct map_info*,unsigned long) ;
 int sbc_gxx_spin ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static map_word sbc_gxx_read8(struct map_info *map, unsigned long ofs)
{
 map_word ret;
 spin_lock(&sbc_gxx_spin);
 sbc_gxx_page(map, ofs);
 ret.x[0] = readb(iomapadr + (ofs & WINDOW_MASK));
 spin_unlock(&sbc_gxx_spin);
 return ret;
}
