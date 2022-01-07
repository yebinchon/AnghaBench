
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct stfsm_seq {int seq_cfg; int addr1; int addr2; int data_size; } ;
struct stfsm {int configuration; int dev; struct stfsm_seq stfsm_seq_read; } ;


 int CFG_READ_TOGGLE_32BIT_ADDR ;
 int FLASH_PAGESIZE_32 ;
 int TRANSFER_SIZE (int) ;
 int dev_dbg (int ,char*,int,int) ;
 int memcpy (int *,...) ;
 int stfsm_clear_fifo (struct stfsm*) ;
 int stfsm_enter_32bit_addr (struct stfsm*,int) ;
 int stfsm_load_seq (struct stfsm*,struct stfsm_seq*) ;
 int stfsm_read_fifo (struct stfsm*,int*,int) ;
 int stfsm_wait_seq (struct stfsm*) ;

__attribute__((used)) static int stfsm_read(struct stfsm *fsm, uint8_t *buf, uint32_t size,
        uint32_t offset)
{
 struct stfsm_seq *seq = &fsm->stfsm_seq_read;
 uint32_t data_pads;
 uint32_t read_mask;
 uint32_t size_ub;
 uint32_t size_lb;
 uint32_t size_mop;
 uint32_t tmp[4];
 uint32_t page_buf[FLASH_PAGESIZE_32];
 uint8_t *p;

 dev_dbg(fsm->dev, "reading %d bytes from 0x%08x\n", size, offset);


 if (fsm->configuration & CFG_READ_TOGGLE_32BIT_ADDR)
  stfsm_enter_32bit_addr(fsm, 1);


 data_pads = ((seq->seq_cfg >> 16) & 0x3) + 1;
 read_mask = (data_pads << 2) - 1;


 p = ((uintptr_t)buf & 0x3) ? (uint8_t *)page_buf : buf;


 size_ub = (size + read_mask) & ~read_mask;
 size_lb = size & ~read_mask;
 size_mop = size & read_mask;

 seq->data_size = TRANSFER_SIZE(size_ub);
 seq->addr1 = (offset >> 16) & 0xffff;
 seq->addr2 = offset & 0xffff;

 stfsm_load_seq(fsm, seq);

 if (size_lb)
  stfsm_read_fifo(fsm, (uint32_t *)p, size_lb);

 if (size_mop) {
  stfsm_read_fifo(fsm, tmp, read_mask + 1);
  memcpy(p + size_lb, &tmp, size_mop);
 }


 if ((uintptr_t)buf & 0x3)
  memcpy(buf, page_buf, size);


 stfsm_wait_seq(fsm);

 stfsm_clear_fifo(fsm);


 if (fsm->configuration & CFG_READ_TOGGLE_32BIT_ADDR)
  stfsm_enter_32bit_addr(fsm, 0);

 return 0;
}
