
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 scalar_t__ CFG_BASE ;
 int HW_CAP_TPC ;
 int TPC0_QMAN_BASE_OFFSET ;
 int TPC1_QMAN_BASE_OFFSET ;
 int TPC2_QMAN_BASE_OFFSET ;
 int TPC3_QMAN_BASE_OFFSET ;
 int TPC4_QMAN_BASE_OFFSET ;
 int TPC5_QMAN_BASE_OFFSET ;
 int TPC6_QMAN_BASE_OFFSET ;
 int TPC7_QMAN_BASE_OFFSET ;
 int TPC_MAX_NUM ;
 int WREG32 (int,int) ;
 int goya_init_tpc_cmdq (struct hl_device*,int) ;
 int goya_init_tpc_qman (struct hl_device*,int ,int) ;
 int lower_32_bits (scalar_t__) ;
 scalar_t__ mmSYNC_MNGR_SOB_OBJ_0 ;
 int mmTPC0_CFG_SM_BASE_ADDRESS_HIGH ;
 int mmTPC0_CFG_SM_BASE_ADDRESS_LOW ;
 int mmTPC1_CFG_SM_BASE_ADDRESS_LOW ;
 int upper_32_bits (scalar_t__) ;

void goya_init_tpc_qmans(struct hl_device *hdev)
{
 struct goya_device *goya = hdev->asic_specific;
 u32 so_base_lo, so_base_hi;
 u32 cfg_off = mmTPC1_CFG_SM_BASE_ADDRESS_LOW -
   mmTPC0_CFG_SM_BASE_ADDRESS_LOW;
 int i;

 if (goya->hw_cap_initialized & HW_CAP_TPC)
  return;

 so_base_lo = lower_32_bits(CFG_BASE + mmSYNC_MNGR_SOB_OBJ_0);
 so_base_hi = upper_32_bits(CFG_BASE + mmSYNC_MNGR_SOB_OBJ_0);

 for (i = 0 ; i < TPC_MAX_NUM ; i++) {
  WREG32(mmTPC0_CFG_SM_BASE_ADDRESS_LOW + i * cfg_off,
    so_base_lo);
  WREG32(mmTPC0_CFG_SM_BASE_ADDRESS_HIGH + i * cfg_off,
    so_base_hi);
 }

 goya_init_tpc_qman(hdev, TPC0_QMAN_BASE_OFFSET, 0);
 goya_init_tpc_qman(hdev, TPC1_QMAN_BASE_OFFSET, 1);
 goya_init_tpc_qman(hdev, TPC2_QMAN_BASE_OFFSET, 2);
 goya_init_tpc_qman(hdev, TPC3_QMAN_BASE_OFFSET, 3);
 goya_init_tpc_qman(hdev, TPC4_QMAN_BASE_OFFSET, 4);
 goya_init_tpc_qman(hdev, TPC5_QMAN_BASE_OFFSET, 5);
 goya_init_tpc_qman(hdev, TPC6_QMAN_BASE_OFFSET, 6);
 goya_init_tpc_qman(hdev, TPC7_QMAN_BASE_OFFSET, 7);

 for (i = 0 ; i < TPC_MAX_NUM ; i++)
  goya_init_tpc_cmdq(hdev, i);

 goya->hw_cap_initialized |= HW_CAP_TPC;
}
