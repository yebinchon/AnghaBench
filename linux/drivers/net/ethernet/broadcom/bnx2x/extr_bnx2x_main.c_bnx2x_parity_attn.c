
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dev; } ;


 int DP (int ,char*,int,int,int,int,int) ;
 int HW_PRTY_ASSERT_SET_0 ;
 int HW_PRTY_ASSERT_SET_1 ;
 int HW_PRTY_ASSERT_SET_2 ;
 int HW_PRTY_ASSERT_SET_3 ;
 int HW_PRTY_ASSERT_SET_3_WITHOUT_SCPAD ;
 int HW_PRTY_ASSERT_SET_4 ;
 int NETIF_MSG_HW ;
 int bnx2x_check_blocks_with_parity0 (struct bnx2x*,int,int*,int) ;
 int bnx2x_check_blocks_with_parity1 (struct bnx2x*,int,int*,int*,int) ;
 int bnx2x_check_blocks_with_parity2 (struct bnx2x*,int,int*,int) ;
 int bnx2x_check_blocks_with_parity3 (struct bnx2x*,int,int*,int*,int) ;
 int bnx2x_check_blocks_with_parity4 (struct bnx2x*,int,int*,int) ;
 int netdev_err (int ,char*) ;
 int pr_cont (char*) ;

__attribute__((used)) static bool bnx2x_parity_attn(struct bnx2x *bp, bool *global, bool print,
         u32 *sig)
{
 bool res = 0;

 if ((sig[0] & HW_PRTY_ASSERT_SET_0) ||
     (sig[1] & HW_PRTY_ASSERT_SET_1) ||
     (sig[2] & HW_PRTY_ASSERT_SET_2) ||
     (sig[3] & HW_PRTY_ASSERT_SET_3) ||
     (sig[4] & HW_PRTY_ASSERT_SET_4)) {
  int par_num = 0;

  DP(NETIF_MSG_HW, "Was parity error: HW block parity attention:\n"
     "[0]:0x%08x [1]:0x%08x [2]:0x%08x [3]:0x%08x [4]:0x%08x\n",
     sig[0] & HW_PRTY_ASSERT_SET_0,
     sig[1] & HW_PRTY_ASSERT_SET_1,
     sig[2] & HW_PRTY_ASSERT_SET_2,
     sig[3] & HW_PRTY_ASSERT_SET_3,
     sig[4] & HW_PRTY_ASSERT_SET_4);
  if (print) {
   if (((sig[0] & HW_PRTY_ASSERT_SET_0) ||
        (sig[1] & HW_PRTY_ASSERT_SET_1) ||
        (sig[2] & HW_PRTY_ASSERT_SET_2) ||
        (sig[4] & HW_PRTY_ASSERT_SET_4)) ||
        (sig[3] & HW_PRTY_ASSERT_SET_3_WITHOUT_SCPAD)) {
    netdev_err(bp->dev,
        "Parity errors detected in blocks: ");
   } else {
    print = 0;
   }
  }
  res |= bnx2x_check_blocks_with_parity0(bp,
   sig[0] & HW_PRTY_ASSERT_SET_0, &par_num, print);
  res |= bnx2x_check_blocks_with_parity1(bp,
   sig[1] & HW_PRTY_ASSERT_SET_1, &par_num, global, print);
  res |= bnx2x_check_blocks_with_parity2(bp,
   sig[2] & HW_PRTY_ASSERT_SET_2, &par_num, print);
  res |= bnx2x_check_blocks_with_parity3(bp,
   sig[3] & HW_PRTY_ASSERT_SET_3, &par_num, global, print);
  res |= bnx2x_check_blocks_with_parity4(bp,
   sig[4] & HW_PRTY_ASSERT_SET_4, &par_num, print);

  if (print)
   pr_cont("\n");
 }

 return res;
}
