
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stfsm_seq {int addr1; int addr2; } ;
struct stfsm {int configuration; int dev; } ;


 int CFG_ERASESEC_TOGGLE_32BIT_ADDR ;
 int CFG_S25FL_CHECK_ERROR_FLAGS ;
 int dev_dbg (int ,char*,int) ;
 int stfsm_enter_32bit_addr (struct stfsm*,int) ;
 int stfsm_load_seq (struct stfsm*,struct stfsm_seq*) ;
 int stfsm_s25fl_clear_status_reg (struct stfsm*) ;
 struct stfsm_seq stfsm_seq_erase_sector ;
 int stfsm_wait_busy (struct stfsm*) ;
 int stfsm_wait_seq (struct stfsm*) ;

__attribute__((used)) static int stfsm_erase_sector(struct stfsm *fsm, uint32_t offset)
{
 struct stfsm_seq *seq = &stfsm_seq_erase_sector;
 int ret;

 dev_dbg(fsm->dev, "erasing sector at 0x%08x\n", offset);


 if (fsm->configuration & CFG_ERASESEC_TOGGLE_32BIT_ADDR)
  stfsm_enter_32bit_addr(fsm, 1);

 seq->addr1 = (offset >> 16) & 0xffff;
 seq->addr2 = offset & 0xffff;

 stfsm_load_seq(fsm, seq);

 stfsm_wait_seq(fsm);


 ret = stfsm_wait_busy(fsm);
 if (ret && fsm->configuration & CFG_S25FL_CHECK_ERROR_FLAGS)
  stfsm_s25fl_clear_status_reg(fsm);


 if (fsm->configuration & CFG_ERASESEC_TOGGLE_32BIT_ADDR)
  stfsm_enter_32bit_addr(fsm, 0);

 return ret;
}
