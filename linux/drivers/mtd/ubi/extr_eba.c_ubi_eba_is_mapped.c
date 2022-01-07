
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubi_volume {TYPE_2__* eba_tbl; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {scalar_t__ pnum; } ;



bool ubi_eba_is_mapped(struct ubi_volume *vol, int lnum)
{
 return vol->eba_tbl->entries[lnum].pnum >= 0;
}
