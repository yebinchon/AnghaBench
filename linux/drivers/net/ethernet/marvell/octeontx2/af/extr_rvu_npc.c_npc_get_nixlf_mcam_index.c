
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct npc_mcam {int pf_offset; int nixlf_offset; } ;


 int NIXLF_BCAST_ENTRY ;
 int NIXLF_PROMISC_ENTRY ;
 int RSVD_MCAM_ENTRIES_PER_NIXLF ;
 int RSVD_MCAM_ENTRIES_PER_PF ;
 int RVU_PFVF_FUNC_MASK ;
 int rvu_get_pf (int) ;

__attribute__((used)) static int npc_get_nixlf_mcam_index(struct npc_mcam *mcam,
        u16 pcifunc, int nixlf, int type)
{
 int pf = rvu_get_pf(pcifunc);
 int index;


 if (pf && !(pcifunc & RVU_PFVF_FUNC_MASK)) {

  pf--;
  index = mcam->pf_offset + (pf * RSVD_MCAM_ENTRIES_PER_PF);



  if (type == NIXLF_BCAST_ENTRY)
   return index;
  else if (type == NIXLF_PROMISC_ENTRY)
   return index + 1;
 }

 return (mcam->nixlf_offset + (nixlf * RSVD_MCAM_ENTRIES_PER_NIXLF));
}
