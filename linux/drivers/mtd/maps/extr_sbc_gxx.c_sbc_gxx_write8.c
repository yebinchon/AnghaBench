
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
 int sbc_gxx_page (struct map_info*,unsigned long) ;
 int sbc_gxx_spin ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void sbc_gxx_write8(struct map_info *map, map_word d, unsigned long adr)
{
 spin_lock(&sbc_gxx_spin);
 sbc_gxx_page(map, adr);
 writeb(d.x[0], iomapadr + (adr & WINDOW_MASK));
 spin_unlock(&sbc_gxx_spin);
}
