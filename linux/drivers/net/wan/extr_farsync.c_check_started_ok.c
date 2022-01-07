
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_card_info {scalar_t__ nports; int card_no; void* state; } ;


 scalar_t__ END_SIG ;
 void* FST_BADVERSION ;
 void* FST_HALTED ;
 int FST_RDB (struct fst_card_info*,int ) ;
 scalar_t__ FST_RDL (struct fst_card_info*,int ) ;
 scalar_t__ FST_RDW (struct fst_card_info*,int ) ;
 void* FST_RUNNING ;
 scalar_t__ SMC_VERSION ;
 int endOfSmcSignature ;
 int numberOfPorts ;
 int pr_err (char*,...) ;
 int pr_warn (char*,int ,scalar_t__,scalar_t__) ;
 int smcVersion ;
 int taskStatus ;

__attribute__((used)) static void
check_started_ok(struct fst_card_info *card)
{
 int i;


 if (FST_RDW(card, smcVersion) != SMC_VERSION) {
  pr_err("Bad shared memory version %d expected %d\n",
         FST_RDW(card, smcVersion), SMC_VERSION);
  card->state = FST_BADVERSION;
  return;
 }
 if (FST_RDL(card, endOfSmcSignature) != END_SIG) {
  pr_err("Missing shared memory signature\n");
  card->state = FST_BADVERSION;
  return;
 }

 if ((i = FST_RDB(card, taskStatus)) == 0x01) {
  card->state = FST_RUNNING;
 } else if (i == 0xFF) {
  pr_err("Firmware initialisation failed. Card halted\n");
  card->state = FST_HALTED;
  return;
 } else if (i != 0x00) {
  pr_err("Unknown firmware status 0x%x\n", i);
  card->state = FST_HALTED;
  return;
 }





 if (FST_RDL(card, numberOfPorts) != card->nports) {
  pr_warn("Port count mismatch on card %d.  Firmware thinks %d we say %d\n",
   card->card_no,
   FST_RDL(card, numberOfPorts), card->nports);
 }
}
