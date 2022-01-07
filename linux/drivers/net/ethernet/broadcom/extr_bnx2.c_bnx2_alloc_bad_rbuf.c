
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bnx2 {int dummy; } ;


 int BNX2_MISC_ENABLE_SET_BITS ;
 int BNX2_MISC_ENABLE_SET_BITS_RX_MBUF_ENABLE ;
 int BNX2_RBUF_COMMAND ;
 int BNX2_RBUF_COMMAND_ALLOC_REQ ;
 int BNX2_RBUF_FW_BUF_ALLOC ;
 int BNX2_RBUF_FW_BUF_ALLOC_VALUE ;
 int BNX2_RBUF_FW_BUF_FREE ;
 int BNX2_RBUF_STATUS1 ;
 int BNX2_RBUF_STATUS1_FREE_COUNT ;
 int BNX2_WR (struct bnx2*,int ,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bnx2_reg_rd_ind (struct bnx2*,int ) ;
 int bnx2_reg_wr_ind (struct bnx2*,int ,int) ;
 int kfree (int*) ;
 int* kmalloc_array (int,int,int ) ;

__attribute__((used)) static int
bnx2_alloc_bad_rbuf(struct bnx2 *bp)
{
 u16 *good_mbuf;
 u32 good_mbuf_cnt;
 u32 val;

 good_mbuf = kmalloc_array(512, sizeof(u16), GFP_KERNEL);
 if (!good_mbuf)
  return -ENOMEM;

 BNX2_WR(bp, BNX2_MISC_ENABLE_SET_BITS,
  BNX2_MISC_ENABLE_SET_BITS_RX_MBUF_ENABLE);

 good_mbuf_cnt = 0;


 val = bnx2_reg_rd_ind(bp, BNX2_RBUF_STATUS1);
 while (val & BNX2_RBUF_STATUS1_FREE_COUNT) {
  bnx2_reg_wr_ind(bp, BNX2_RBUF_COMMAND,
    BNX2_RBUF_COMMAND_ALLOC_REQ);

  val = bnx2_reg_rd_ind(bp, BNX2_RBUF_FW_BUF_ALLOC);

  val &= BNX2_RBUF_FW_BUF_ALLOC_VALUE;


  if (!(val & (1 << 9))) {
   good_mbuf[good_mbuf_cnt] = (u16) val;
   good_mbuf_cnt++;
  }

  val = bnx2_reg_rd_ind(bp, BNX2_RBUF_STATUS1);
 }



 while (good_mbuf_cnt) {
  good_mbuf_cnt--;

  val = good_mbuf[good_mbuf_cnt];
  val = (val << 9) | val | 1;

  bnx2_reg_wr_ind(bp, BNX2_RBUF_FW_BUF_FREE, val);
 }
 kfree(good_mbuf);
 return 0;
}
