
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct marvell_nfc {scalar_t__ regs; } ;


 unsigned int FIFO_DEPTH ;
 int FIFO_REP (unsigned int) ;
 scalar_t__ NDDB ;
 int ioread32_rep (scalar_t__,int *,int ) ;
 int memcpy (int *,int *,unsigned int) ;
 unsigned int round_down (unsigned int,unsigned int) ;

__attribute__((used)) static int marvell_nfc_xfer_data_in_pio(struct marvell_nfc *nfc, u8 *in,
     unsigned int len)
{
 unsigned int last_len = len % FIFO_DEPTH;
 unsigned int last_full_offset = round_down(len, FIFO_DEPTH);
 int i;

 for (i = 0; i < last_full_offset; i += FIFO_DEPTH)
  ioread32_rep(nfc->regs + NDDB, in + i, FIFO_REP(FIFO_DEPTH));

 if (last_len) {
  u8 tmp_buf[FIFO_DEPTH];

  ioread32_rep(nfc->regs + NDDB, tmp_buf, FIFO_REP(FIFO_DEPTH));
  memcpy(in + last_full_offset, tmp_buf, last_len);
 }

 return 0;
}
