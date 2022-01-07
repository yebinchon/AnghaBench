
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct npc_mcam {int bmap_fcnt; int bmap_reverse; int bmap; scalar_t__ bmap_entries; } ;


 int __clear_bit (scalar_t__,int ) ;

__attribute__((used)) static void npc_mcam_clear_bit(struct npc_mcam *mcam, u16 index)
{
 u16 entry, rentry;

 entry = index;
 rentry = mcam->bmap_entries - index - 1;

 __clear_bit(entry, mcam->bmap);
 __clear_bit(rentry, mcam->bmap_reverse);
 mcam->bmap_fcnt++;
}
