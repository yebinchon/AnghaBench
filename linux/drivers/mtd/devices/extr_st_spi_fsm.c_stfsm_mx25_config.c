
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int seq_cfg; } ;
struct stfsm {int configuration; TYPE_2__ stfsm_seq_read; int booted_from_spi; int stfsm_seq_en_32bit_addr; TYPE_1__* info; } ;
struct TYPE_3__ {int flags; } ;


 int CFG_ERASESEC_TOGGLE_32BIT_ADDR ;
 int CFG_READ_TOGGLE_32BIT_ADDR ;
 int CFG_WRITE_TOGGLE_32BIT_ADDR ;
 int FLASH_FLAG_32BIT_ADDR ;
 int MX25_STATUS_QE ;
 int SPINOR_OP_RDSR ;
 int SPINOR_OP_WRSR ;
 int stfsm_can_handle_soc_reset (struct stfsm*) ;
 int stfsm_enter_32bit_addr (struct stfsm*,int) ;
 int stfsm_mx25_en_32bit_addr_seq (int *) ;
 int stfsm_prepare_rwe_seqs_default (struct stfsm*) ;
 int stfsm_read_status (struct stfsm*,int ,int*,int) ;
 int stfsm_write_status (struct stfsm*,int ,int,int,int) ;

__attribute__((used)) static int stfsm_mx25_config(struct stfsm *fsm)
{
 uint32_t flags = fsm->info->flags;
 uint32_t data_pads;
 uint8_t sta;
 int ret;
 bool soc_reset;




 ret = stfsm_prepare_rwe_seqs_default(fsm);
 if (ret)
  return ret;




 if (flags & FLASH_FLAG_32BIT_ADDR) {

  stfsm_mx25_en_32bit_addr_seq(&fsm->stfsm_seq_en_32bit_addr);

  soc_reset = stfsm_can_handle_soc_reset(fsm);
  if (soc_reset || !fsm->booted_from_spi)


   stfsm_enter_32bit_addr(fsm, 1);

  else


   fsm->configuration = (CFG_READ_TOGGLE_32BIT_ADDR |
           CFG_WRITE_TOGGLE_32BIT_ADDR |
           CFG_ERASESEC_TOGGLE_32BIT_ADDR);
 }


 stfsm_read_status(fsm, SPINOR_OP_RDSR, &sta, 1);
 data_pads = ((fsm->stfsm_seq_read.seq_cfg >> 16) & 0x3) + 1;
 if (data_pads == 4) {
  if (!(sta & MX25_STATUS_QE)) {

   sta |= MX25_STATUS_QE;

   stfsm_write_status(fsm, SPINOR_OP_WRSR, sta, 1, 1);
  }
 } else {
  if (sta & MX25_STATUS_QE) {

   sta &= ~MX25_STATUS_QE;

   stfsm_write_status(fsm, SPINOR_OP_WRSR, sta, 1, 1);
  }
 }

 return 0;
}
