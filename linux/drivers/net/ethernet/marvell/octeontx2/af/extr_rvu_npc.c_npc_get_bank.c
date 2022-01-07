
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npc_mcam {int banksize; scalar_t__ keysize; } ;


 scalar_t__ NPC_MCAM_KEY_X2 ;

__attribute__((used)) static int npc_get_bank(struct npc_mcam *mcam, int index)
{
 int bank = index / mcam->banksize;


 if (mcam->keysize == NPC_MCAM_KEY_X2)
  return bank ? 2 : 0;

 return bank;
}
