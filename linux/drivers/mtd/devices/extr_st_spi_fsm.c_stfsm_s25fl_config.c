
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int seq_cfg; } ;
struct stfsm {int configuration; TYPE_1__ stfsm_seq_read; TYPE_1__ stfsm_seq_write; struct flash_info* info; } ;
struct flash_info {int flags; int sector_size; int n_sectors; } ;


 int CFG_S25FL_CHECK_ERROR_FLAGS ;
 int FLASH_FLAG_32BIT_ADDR ;
 int FLASH_FLAG_DYB_LOCKING ;
 int SPINOR_OP_RDCR ;
 int SPINOR_OP_RDSR ;
 int SPINOR_OP_WRSR ;
 int STFSM_S25FL_CONFIG_QE ;
 int stfsm_prepare_rwe_seqs_default (struct stfsm*) ;
 int stfsm_read_status (struct stfsm*,int ,int*,int) ;
 int stfsm_s25fl_prepare_erasesec_seq_32 (int *) ;
 int stfsm_s25fl_read4_configs ;
 int stfsm_s25fl_read_dyb (struct stfsm*,int,int*) ;
 int stfsm_s25fl_write4_configs ;
 int stfsm_s25fl_write_dyb (struct stfsm*,int,int) ;
 int stfsm_search_prepare_rw_seq (struct stfsm*,TYPE_1__*,int ) ;
 int stfsm_seq_erase_sector ;
 int stfsm_write_status (struct stfsm*,int ,int,int,int) ;

__attribute__((used)) static int stfsm_s25fl_config(struct stfsm *fsm)
{
 struct flash_info *info = fsm->info;
 uint32_t flags = info->flags;
 uint32_t data_pads;
 uint32_t offs;
 uint16_t sta_wr;
 uint8_t sr1, cr1, dyb;
 int update_sr = 0;
 int ret;

 if (flags & FLASH_FLAG_32BIT_ADDR) {




  ret = stfsm_search_prepare_rw_seq(fsm, &fsm->stfsm_seq_read,
        stfsm_s25fl_read4_configs);
  if (ret)
   return ret;

  ret = stfsm_search_prepare_rw_seq(fsm, &fsm->stfsm_seq_write,
        stfsm_s25fl_write4_configs);
  if (ret)
   return ret;

  stfsm_s25fl_prepare_erasesec_seq_32(&stfsm_seq_erase_sector);

 } else {

  ret = stfsm_prepare_rwe_seqs_default(fsm);
  if (ret)
   return ret;
 }






 if (flags & FLASH_FLAG_DYB_LOCKING) {
  offs = 0;
  for (offs = 0; offs < info->sector_size * info->n_sectors;) {
   stfsm_s25fl_read_dyb(fsm, offs, &dyb);
   if (dyb == 0x00)
    stfsm_s25fl_write_dyb(fsm, offs, 0xff);


   if ((offs < info->sector_size * 2) ||
       (offs >= (info->sector_size - info->n_sectors * 4)))
    offs += 0x1000;
   else
    offs += 0x10000;
  }
 }


 stfsm_read_status(fsm, SPINOR_OP_RDCR, &cr1, 1);
 data_pads = ((fsm->stfsm_seq_read.seq_cfg >> 16) & 0x3) + 1;
 if (data_pads == 4) {
  if (!(cr1 & STFSM_S25FL_CONFIG_QE)) {

   cr1 |= STFSM_S25FL_CONFIG_QE;

   update_sr = 1;
  }
 } else {
  if (cr1 & STFSM_S25FL_CONFIG_QE) {

   cr1 &= ~STFSM_S25FL_CONFIG_QE;

   update_sr = 1;
  }
 }
 if (update_sr) {
  stfsm_read_status(fsm, SPINOR_OP_RDSR, &sr1, 1);
  sta_wr = ((uint16_t)cr1 << 8) | sr1;
  stfsm_write_status(fsm, SPINOR_OP_WRSR, sta_wr, 2, 1);
 }





 fsm->configuration |= CFG_S25FL_CHECK_ERROR_FLAGS;

 return 0;
}
