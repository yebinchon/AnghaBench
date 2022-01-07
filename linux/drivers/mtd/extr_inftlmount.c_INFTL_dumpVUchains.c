
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct INFTLrecord {int nb_blocks; int* VUtable; int* PUtable; } ;


 int BLOCK_NIL ;
 int pr_debug (char*,...) ;

void INFTL_dumpVUchains(struct INFTLrecord *s)
{
 int logical, block, i;

 pr_debug("-------------------------------------------"
  "----------------------------------\n");

 pr_debug("INFTL Virtual Unit Chains:\n");
 for (logical = 0; logical < s->nb_blocks; logical++) {
  block = s->VUtable[logical];
  if (block >= s->nb_blocks)
   continue;
  pr_debug("  LOGICAL %d --> %d ", logical, block);
  for (i = 0; i < s->nb_blocks; i++) {
   if (s->PUtable[block] == BLOCK_NIL)
    break;
   block = s->PUtable[block];
   pr_debug("%d ", block);
  }
  pr_debug("\n");
 }

 pr_debug("-------------------------------------------"
  "----------------------------------\n");
}
