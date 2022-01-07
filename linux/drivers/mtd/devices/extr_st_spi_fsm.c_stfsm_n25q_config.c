
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct stfsm {int configuration; int booted_from_spi; int stfsm_seq_en_32bit_addr; int dev; int stfsm_seq_write; int stfsm_seq_read; TYPE_1__* info; } ;
struct TYPE_2__ {int flags; } ;


 int CFG_ERASESEC_TOGGLE_32BIT_ADDR ;
 int CFG_WRITE_TOGGLE_32BIT_ADDR ;
 int FLASH_FLAG_32BIT_ADDR ;
 int N25Q_CMD_WRVCR ;
 int N25Q_VCR_DUMMY_CYCLES (int) ;
 int N25Q_VCR_WRAP_CONT ;
 int N25Q_VCR_XIP_DISABLED ;
 int default_write_configs ;
 int dev_err (int ,char*,int) ;
 int n25q_read3_configs ;
 int n25q_read4_configs ;
 int stfsm_can_handle_soc_reset (struct stfsm*) ;
 int stfsm_enter_32bit_addr (struct stfsm*,int) ;
 int stfsm_n25q_en_32bit_addr_seq (int *) ;
 int stfsm_prepare_erasesec_seq (struct stfsm*,int *) ;
 int stfsm_search_prepare_rw_seq (struct stfsm*,int *,int ) ;
 int stfsm_seq_erase_sector ;
 int stfsm_write_status (struct stfsm*,int ,int,int,int ) ;

__attribute__((used)) static int stfsm_n25q_config(struct stfsm *fsm)
{
 uint32_t flags = fsm->info->flags;
 uint8_t vcr;
 int ret = 0;
 bool soc_reset;


 if (flags & FLASH_FLAG_32BIT_ADDR)
  ret = stfsm_search_prepare_rw_seq(fsm, &fsm->stfsm_seq_read,
        n25q_read4_configs);
 else
  ret = stfsm_search_prepare_rw_seq(fsm, &fsm->stfsm_seq_read,
        n25q_read3_configs);
 if (ret) {
  dev_err(fsm->dev,
   "failed to prepare READ sequence with flags [0x%08x]\n",
   flags);
  return ret;
 }


 ret = stfsm_search_prepare_rw_seq(fsm, &fsm->stfsm_seq_write,
       default_write_configs);
 if (ret) {
  dev_err(fsm->dev,
   "preparing WRITE sequence using flags [0x%08x] failed\n",
   flags);
  return ret;
 }


 stfsm_prepare_erasesec_seq(fsm, &stfsm_seq_erase_sector);


 if (flags & FLASH_FLAG_32BIT_ADDR) {
  stfsm_n25q_en_32bit_addr_seq(&fsm->stfsm_seq_en_32bit_addr);

  soc_reset = stfsm_can_handle_soc_reset(fsm);
  if (soc_reset || !fsm->booted_from_spi) {




   stfsm_enter_32bit_addr(fsm, 1);
  } else {




   fsm->configuration = (CFG_WRITE_TOGGLE_32BIT_ADDR |
           CFG_ERASESEC_TOGGLE_32BIT_ADDR);
  }
 }




 vcr = (N25Q_VCR_DUMMY_CYCLES(8) | N25Q_VCR_XIP_DISABLED |
        N25Q_VCR_WRAP_CONT);
 stfsm_write_status(fsm, N25Q_CMD_WRVCR, vcr, 1, 0);

 return 0;
}
