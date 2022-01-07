
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int driver_data; int subdevice; int subvendor; } ;


 int pr_cont (char*,...) ;
 int pr_warn (char*,...) ;
 unsigned int saa7134_bcount ;
 TYPE_2__* saa7134_boards ;
 TYPE_1__* saa7134_pci_tbl ;

__attribute__((used)) static void must_configure_manually(int has_eeprom)
{
 unsigned int i,p;

 if (!has_eeprom)
  pr_warn("saa7134: <rant>\n"
   "saa7134:  Congratulations!  Your TV card vendor saved a few\n"
   "saa7134:  cents for a eeprom, thus your pci board has no\n"
   "saa7134:  subsystem ID and I can't identify it automatically\n"
   "saa7134: </rant>\n"
   "saa7134: I feel better now.  Ok, here are the good news:\n"
   "saa7134: You can use the card=<nr> insmod option to specify\n"
   "saa7134: which board do you have.  The list:\n");
 else
  pr_warn("saa7134: Board is currently unknown. You might try to use the card=<nr>\n"
   "saa7134: insmod option to specify which board do you have, but this is\n"
   "saa7134: somewhat risky, as might damage your card. It is better to ask\n"
   "saa7134: for support at linux-media@vger.kernel.org.\n"
   "saa7134: The supported cards are:\n");

 for (i = 0; i < saa7134_bcount; i++) {
  pr_warn("saa7134:   card=%d -> %-40.40s",
         i,saa7134_boards[i].name);
  for (p = 0; saa7134_pci_tbl[p].driver_data; p++) {
   if (saa7134_pci_tbl[p].driver_data != i)
    continue;
   pr_cont(" %04x:%04x",
          saa7134_pci_tbl[p].subvendor,
          saa7134_pci_tbl[p].subdevice);
  }
  pr_cont("\n");
 }
}
