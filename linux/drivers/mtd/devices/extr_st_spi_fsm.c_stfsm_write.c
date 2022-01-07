
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct stfsm_seq {int seq_cfg; int addr1; int addr2; int data_size; } ;
struct stfsm {int configuration; scalar_t__ fifo_dir_delay; scalar_t__ base; int dev; struct stfsm_seq stfsm_seq_write; } ;


 int CFG_S25FL_CHECK_ERROR_FLAGS ;
 int CFG_WRITE_TOGGLE_32BIT_ADDR ;
 int FLASH_PAGESIZE_32 ;
 scalar_t__ SPI_FAST_SEQ_CFG ;
 int TRANSFER_SIZE (int) ;
 int dev_dbg (int ,char*,int,int) ;
 int memcpy (int*,int const*,int) ;
 int memset (int *,int,int) ;
 int readl (scalar_t__) ;
 int stfsm_enter_32bit_addr (struct stfsm*,int) ;
 int stfsm_load_seq (struct stfsm*,struct stfsm_seq*) ;
 int stfsm_s25fl_clear_status_reg (struct stfsm*) ;
 int stfsm_wait_busy (struct stfsm*) ;
 int stfsm_wait_seq (struct stfsm*) ;
 int stfsm_write_fifo (struct stfsm*,int*,int) ;
 int udelay (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int stfsm_write(struct stfsm *fsm, const uint8_t *buf,
         uint32_t size, uint32_t offset)
{
 struct stfsm_seq *seq = &fsm->stfsm_seq_write;
 uint32_t data_pads;
 uint32_t write_mask;
 uint32_t size_ub;
 uint32_t size_lb;
 uint32_t size_mop;
 uint32_t tmp[4];
 uint32_t i;
 uint32_t page_buf[FLASH_PAGESIZE_32];
 uint8_t *t = (uint8_t *)&tmp;
 const uint8_t *p;
 int ret;

 dev_dbg(fsm->dev, "writing %d bytes to 0x%08x\n", size, offset);


 if (fsm->configuration & CFG_WRITE_TOGGLE_32BIT_ADDR)
  stfsm_enter_32bit_addr(fsm, 1);


 data_pads = ((seq->seq_cfg >> 16) & 0x3) + 1;
 write_mask = (data_pads << 2) - 1;


 if ((uintptr_t)buf & 0x3) {
  memcpy(page_buf, buf, size);
  p = (uint8_t *)page_buf;
 } else {
  p = buf;
 }


 size_ub = (size + write_mask) & ~write_mask;
 size_lb = size & ~write_mask;
 size_mop = size & write_mask;

 seq->data_size = TRANSFER_SIZE(size_ub);
 seq->addr1 = (offset >> 16) & 0xffff;
 seq->addr2 = offset & 0xffff;




 writel(0x00040000, fsm->base + SPI_FAST_SEQ_CFG);





 if (fsm->fifo_dir_delay == 0)
  readl(fsm->base + SPI_FAST_SEQ_CFG);
 else
  udelay(fsm->fifo_dir_delay);



 if (size_lb) {
  stfsm_write_fifo(fsm, (uint32_t *)p, size_lb);
  p += size_lb;
 }


 if (size_mop) {
  memset(t, 0xff, write_mask + 1);
  for (i = 0; i < size_mop; i++)
   t[i] = *p++;

  stfsm_write_fifo(fsm, tmp, write_mask + 1);
 }


 stfsm_load_seq(fsm, seq);


 stfsm_wait_seq(fsm);


 ret = stfsm_wait_busy(fsm);
 if (ret && fsm->configuration & CFG_S25FL_CHECK_ERROR_FLAGS)
  stfsm_s25fl_clear_status_reg(fsm);


 if (fsm->configuration & CFG_WRITE_TOGGLE_32BIT_ADDR)
  stfsm_enter_32bit_addr(fsm, 0);

 return 0;
}
