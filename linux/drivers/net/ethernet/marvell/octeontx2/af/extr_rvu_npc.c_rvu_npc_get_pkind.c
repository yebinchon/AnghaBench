
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct rvu {TYPE_1__* hw; } ;
struct TYPE_4__ {int max; } ;
struct npc_pkind {int* pfchan_map; TYPE_2__ rsrc; } ;
struct TYPE_3__ {struct npc_pkind pkind; } ;



int rvu_npc_get_pkind(struct rvu *rvu, u16 pf)
{
 struct npc_pkind *pkind = &rvu->hw->pkind;
 u32 map;
 int i;

 for (i = 0; i < pkind->rsrc.max; i++) {
  map = pkind->pfchan_map[i];
  if (((map >> 16) & 0x3F) == pf)
   return i;
 }
 return -1;
}
