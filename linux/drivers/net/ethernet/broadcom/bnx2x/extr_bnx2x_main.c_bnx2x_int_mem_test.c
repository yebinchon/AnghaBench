
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BLOCK_BRB1 ;
 int BLOCK_PRS ;
 int BNX2X_ERR (char*,...) ;
 scalar_t__ CFC_REG_DEBUG0 ;
 scalar_t__ CHIP_REV_IS_EMUL (struct bnx2x*) ;
 scalar_t__ CHIP_REV_IS_FPGA (struct bnx2x*) ;
 int CNIC_SUPPORT (struct bnx2x*) ;
 int DP (int ,char*) ;
 scalar_t__ GRCBASE_MISC ;
 scalar_t__ MISC_REGISTERS_RESET_REG_1_CLEAR ;
 scalar_t__ MISC_REGISTERS_RESET_REG_1_SET ;
 int NETIF_MSG_HW ;
 int NIG_REG_INGRESS_EOP_LB_EMPTY ;
 int NIG_REG_INGRESS_EOP_LB_FIFO ;
 scalar_t__ NIG_REG_PRS_REQ_IN_EN ;
 int NIG_REG_STAT2_BRB_OCTET ;
 int PHASE_COMMON ;
 scalar_t__ PRS_REG_CFC_SEARCH_INITIAL_CREDIT ;
 scalar_t__ PRS_REG_NIC_MODE ;
 int PRS_REG_NUM_OF_PACKETS ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 scalar_t__ TCM_REG_PRS_IFEN ;
 scalar_t__ TSDM_REG_ENABLE_IN1 ;
 int bnx2x_init_block (struct bnx2x*,int ,int ) ;
 int bnx2x_lb_pckt (struct bnx2x*) ;
 int bnx2x_read_dmae (struct bnx2x*,int ,int) ;
 int* bnx2x_sp (struct bnx2x*,int ) ;
 int msleep (int) ;
 int usleep_range (int,int) ;
 int * wb_data ;

__attribute__((used)) static int bnx2x_int_mem_test(struct bnx2x *bp)
{
 int factor;
 int count, i;
 u32 val = 0;

 if (CHIP_REV_IS_FPGA(bp))
  factor = 120;
 else if (CHIP_REV_IS_EMUL(bp))
  factor = 200;
 else
  factor = 1;


 REG_WR(bp, TSDM_REG_ENABLE_IN1, 0x0);
 REG_WR(bp, TCM_REG_PRS_IFEN, 0x0);
 REG_WR(bp, CFC_REG_DEBUG0, 0x1);
 REG_WR(bp, NIG_REG_PRS_REQ_IN_EN, 0x0);


 REG_WR(bp, PRS_REG_CFC_SEARCH_INITIAL_CREDIT, 0x0);


 bnx2x_lb_pckt(bp);



 count = 1000 * factor;
 while (count) {

  bnx2x_read_dmae(bp, NIG_REG_STAT2_BRB_OCTET, 2);
  val = *bnx2x_sp(bp, wb_data[0]);
  if (val == 0x10)
   break;

  usleep_range(10000, 20000);
  count--;
 }
 if (val != 0x10) {
  BNX2X_ERR("NIG timeout  val = 0x%x\n", val);
  return -1;
 }


 count = 1000 * factor;
 while (count) {
  val = REG_RD(bp, PRS_REG_NUM_OF_PACKETS);
  if (val == 1)
   break;

  usleep_range(10000, 20000);
  count--;
 }
 if (val != 0x1) {
  BNX2X_ERR("PRS timeout val = 0x%x\n", val);
  return -2;
 }


 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR, 0x03);
 msleep(50);
 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_SET, 0x03);
 msleep(50);
 bnx2x_init_block(bp, BLOCK_BRB1, PHASE_COMMON);
 bnx2x_init_block(bp, BLOCK_PRS, PHASE_COMMON);

 DP(NETIF_MSG_HW, "part2\n");


 REG_WR(bp, TSDM_REG_ENABLE_IN1, 0x0);
 REG_WR(bp, TCM_REG_PRS_IFEN, 0x0);
 REG_WR(bp, CFC_REG_DEBUG0, 0x1);
 REG_WR(bp, NIG_REG_PRS_REQ_IN_EN, 0x0);


 REG_WR(bp, PRS_REG_CFC_SEARCH_INITIAL_CREDIT, 0x0);


 for (i = 0; i < 10; i++)
  bnx2x_lb_pckt(bp);



 count = 1000 * factor;
 while (count) {

  bnx2x_read_dmae(bp, NIG_REG_STAT2_BRB_OCTET, 2);
  val = *bnx2x_sp(bp, wb_data[0]);
  if (val == 0xb0)
   break;

  usleep_range(10000, 20000);
  count--;
 }
 if (val != 0xb0) {
  BNX2X_ERR("NIG timeout  val = 0x%x\n", val);
  return -3;
 }


 val = REG_RD(bp, PRS_REG_NUM_OF_PACKETS);
 if (val != 2)
  BNX2X_ERR("PRS timeout  val = 0x%x\n", val);


 REG_WR(bp, PRS_REG_CFC_SEARCH_INITIAL_CREDIT, 0x1);


 msleep(10 * factor);

 val = REG_RD(bp, PRS_REG_NUM_OF_PACKETS);
 if (val != 3)
  BNX2X_ERR("PRS timeout  val = 0x%x\n", val);


 for (i = 0; i < 11; i++)
  REG_RD(bp, NIG_REG_INGRESS_EOP_LB_FIFO);
 val = REG_RD(bp, NIG_REG_INGRESS_EOP_LB_EMPTY);
 if (val != 1) {
  BNX2X_ERR("clear of NIG failed\n");
  return -4;
 }


 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR, 0x03);
 msleep(50);
 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_SET, 0x03);
 msleep(50);
 bnx2x_init_block(bp, BLOCK_BRB1, PHASE_COMMON);
 bnx2x_init_block(bp, BLOCK_PRS, PHASE_COMMON);
 if (!CNIC_SUPPORT(bp))

  REG_WR(bp, PRS_REG_NIC_MODE, 1);


 REG_WR(bp, TSDM_REG_ENABLE_IN1, 0x7fffffff);
 REG_WR(bp, TCM_REG_PRS_IFEN, 0x1);
 REG_WR(bp, CFC_REG_DEBUG0, 0x0);
 REG_WR(bp, NIG_REG_PRS_REQ_IN_EN, 0x1);

 DP(NETIF_MSG_HW, "done\n");

 return 0;
}
