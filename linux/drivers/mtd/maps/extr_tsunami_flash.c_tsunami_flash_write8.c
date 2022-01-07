
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct map_info {int dummy; } ;
struct TYPE_3__ {int * x; } ;
typedef TYPE_1__ map_word ;


 int tsunami_tig_writeb (int ,unsigned long) ;

__attribute__((used)) static void tsunami_flash_write8(struct map_info *map, map_word value, unsigned long offset)
{
 tsunami_tig_writeb(value.x[0], offset);
}
