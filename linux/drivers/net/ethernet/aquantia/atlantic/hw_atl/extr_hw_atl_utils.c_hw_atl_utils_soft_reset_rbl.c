
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int AQ_HW_SLEEP (int) ;
 int BIT (int ) ;
 int EIO ;
 int ENOTSUPP ;
 scalar_t__ FORCE_FLASHLESS ;
 int HW_ATL_GLB_SOFT_RES_ADR ;
 int HW_ATL_MAC_PHY_CONTROL ;
 int HW_ATL_MAC_PHY_MPI_RESET_BIT ;
 int HW_ATL_MPI_FW_VERSION ;
 int aq_hw_read_reg (struct aq_hw_s*,int) ;
 int aq_hw_write_reg (struct aq_hw_s*,int,int) ;
 int aq_hw_write_reg_bit (struct aq_hw_s*,int ,int ,int ,int) ;
 int aq_pr_err (char*) ;
 int hw_atl_rx_rx_reg_res_dis_set (struct aq_hw_s*,unsigned int) ;
 int hw_atl_tx_tx_reg_res_dis_set (struct aq_hw_s*,unsigned int) ;

__attribute__((used)) static int hw_atl_utils_soft_reset_rbl(struct aq_hw_s *self)
{
 u32 gsr, val, rbl_status;
 int k;

 aq_hw_write_reg(self, 0x404, 0x40e1);
 aq_hw_write_reg(self, 0x3a0, 0x1);
 aq_hw_write_reg(self, 0x32a8, 0x0);


 aq_hw_write_reg(self, 0x388, 0xDEAD);


 val = aq_hw_read_reg(self, 0x53C);
 aq_hw_write_reg(self, 0x53C, val | 0x10);


 hw_atl_rx_rx_reg_res_dis_set(self, 0U);
 hw_atl_tx_tx_reg_res_dis_set(self, 0U);
 aq_hw_write_reg_bit(self, HW_ATL_MAC_PHY_CONTROL,
       BIT(HW_ATL_MAC_PHY_MPI_RESET_BIT),
       HW_ATL_MAC_PHY_MPI_RESET_BIT, 0x0);
 gsr = aq_hw_read_reg(self, HW_ATL_GLB_SOFT_RES_ADR);
 aq_hw_write_reg(self, HW_ATL_GLB_SOFT_RES_ADR,
   (gsr & 0xFFFFBFFF) | 0x8000);

 if (FORCE_FLASHLESS)
  aq_hw_write_reg(self, 0x534, 0x0);

 aq_hw_write_reg(self, 0x404, 0x40e0);


 for (k = 0; k < 1000; k++) {
  rbl_status = aq_hw_read_reg(self, 0x388) & 0xFFFF;
  if (rbl_status && rbl_status != 0xDEAD)
   break;
  AQ_HW_SLEEP(10);
 }
 if (!rbl_status || rbl_status == 0xDEAD) {
  aq_pr_err("RBL Restart failed");
  return -EIO;
 }


 if (FORCE_FLASHLESS)
  aq_hw_write_reg(self, 0x534, 0xA0);

 if (rbl_status == 0xF1A7) {
  aq_pr_err("No FW detected. Dynamic FW load not implemented\n");
  return -ENOTSUPP;
 }

 for (k = 0; k < 1000; k++) {
  u32 fw_state = aq_hw_read_reg(self, HW_ATL_MPI_FW_VERSION);

  if (fw_state)
   break;
  AQ_HW_SLEEP(10);
 }
 if (k == 1000) {
  aq_pr_err("FW kickstart failed\n");
  return -EIO;
 }

 AQ_HW_SLEEP(15);

 return 0;
}
