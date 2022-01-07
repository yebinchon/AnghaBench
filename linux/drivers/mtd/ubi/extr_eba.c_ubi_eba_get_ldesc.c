
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubi_volume {TYPE_2__* eba_tbl; } ;
struct ubi_eba_leb_desc {int lnum; int pnum; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {int pnum; } ;



void ubi_eba_get_ldesc(struct ubi_volume *vol, int lnum,
         struct ubi_eba_leb_desc *ldesc)
{
 ldesc->lnum = lnum;
 ldesc->pnum = vol->eba_tbl->entries[lnum].pnum;
}
