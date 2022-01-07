
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct INFTLrecord {int nb_blocks; int lastEUN; int nb_boot_blocks; int LastFreeEUN; int numfreeEUNs; int firstEUN; int numvunits; int cylinders; int sectors; int heads; int EraseSize; int * PUtable; int * VUtable; } ;


 int pr_debug (char*,...) ;

void INFTL_dumptables(struct INFTLrecord *s)
{
 int i;

 pr_debug("-------------------------------------------"
  "----------------------------------\n");

 pr_debug("VUtable[%d] ->", s->nb_blocks);
 for (i = 0; i < s->nb_blocks; i++) {
  if ((i % 8) == 0)
   pr_debug("\n%04x: ", i);
  pr_debug("%04x ", s->VUtable[i]);
 }

 pr_debug("\n-------------------------------------------"
  "----------------------------------\n");

 pr_debug("PUtable[%d-%d=%d] ->", s->firstEUN, s->lastEUN, s->nb_blocks);
 for (i = 0; i <= s->lastEUN; i++) {
  if ((i % 8) == 0)
   pr_debug("\n%04x: ", i);
  pr_debug("%04x ", s->PUtable[i]);
 }

 pr_debug("\n-------------------------------------------"
  "----------------------------------\n");

 pr_debug("INFTL ->\n"
  "  EraseSize       = %d\n"
  "  h/s/c           = %d/%d/%d\n"
  "  numvunits       = %d\n"
  "  firstEUN        = %d\n"
  "  lastEUN         = %d\n"
  "  numfreeEUNs     = %d\n"
  "  LastFreeEUN     = %d\n"
  "  nb_blocks       = %d\n"
  "  nb_boot_blocks  = %d",
  s->EraseSize, s->heads, s->sectors, s->cylinders,
  s->numvunits, s->firstEUN, s->lastEUN, s->numfreeEUNs,
  s->LastFreeEUN, s->nb_blocks, s->nb_boot_blocks);

 pr_debug("\n-------------------------------------------"
  "----------------------------------\n");
}
