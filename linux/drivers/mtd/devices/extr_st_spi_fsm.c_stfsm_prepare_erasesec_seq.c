
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stfsm_seq {int addr_cfg; } ;
struct stfsm {TYPE_1__* info; } ;
struct TYPE_2__ {int flags; } ;


 int ADR_CFG_CSDEASSERT_ADD2 ;
 int ADR_CFG_CYCLES_ADD1 (int) ;
 int ADR_CFG_CYCLES_ADD2 (int) ;
 int ADR_CFG_PADS_1_ADD1 ;
 int ADR_CFG_PADS_1_ADD2 ;
 int FLASH_FLAG_32BIT_ADDR ;

__attribute__((used)) static void stfsm_prepare_erasesec_seq(struct stfsm *fsm,
           struct stfsm_seq *seq)
{
 int addr1_cycles = fsm->info->flags & FLASH_FLAG_32BIT_ADDR ? 16 : 8;

 seq->addr_cfg = (ADR_CFG_CYCLES_ADD1(addr1_cycles) |
    ADR_CFG_PADS_1_ADD1 |
    ADR_CFG_CYCLES_ADD2(16) |
    ADR_CFG_PADS_1_ADD2 |
    ADR_CFG_CSDEASSERT_ADD2);
}
