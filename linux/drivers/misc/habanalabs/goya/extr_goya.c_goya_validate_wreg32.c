
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct packet_wreg32 {int ctl; int value; } ;
struct hl_device {int dev; struct goya_device* asic_specific; } ;
struct hl_cs_parser {int dummy; } ;
struct goya_device {int hw_cap_initialized; } ;


 scalar_t__ CFG_BASE ;
 int EPERM ;
 int GOYA_PKT_WREG32_CTL_REG_OFFSET_MASK ;
 int HW_CAP_MMU ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int le32_to_cpu (int) ;
 int lower_32_bits (scalar_t__) ;
 int mmDMA_CH_0_WR_COMP_ADDR_LO ;
 scalar_t__ mmSYNC_MNGR_SOB_OBJ_0 ;
 scalar_t__ mmSYNC_MNGR_SOB_OBJ_1023 ;

__attribute__((used)) static int goya_validate_wreg32(struct hl_device *hdev,
    struct hl_cs_parser *parser,
    struct packet_wreg32 *wreg_pkt)
{
 struct goya_device *goya = hdev->asic_specific;
 u32 sob_start_addr, sob_end_addr;
 u16 reg_offset;

 reg_offset = le32_to_cpu(wreg_pkt->ctl) &
   GOYA_PKT_WREG32_CTL_REG_OFFSET_MASK;

 dev_dbg(hdev->dev, "WREG32 packet details:\n");
 dev_dbg(hdev->dev, "reg_offset == 0x%x\n", reg_offset);
 dev_dbg(hdev->dev, "value      == 0x%x\n",
  le32_to_cpu(wreg_pkt->value));

 if (reg_offset != (mmDMA_CH_0_WR_COMP_ADDR_LO & 0x1FFF)) {
  dev_err(hdev->dev, "WREG32 packet with illegal address 0x%x\n",
   reg_offset);
  return -EPERM;
 }






 if (goya->hw_cap_initialized & HW_CAP_MMU)
  return 0;

 sob_start_addr = lower_32_bits(CFG_BASE + mmSYNC_MNGR_SOB_OBJ_0);
 sob_end_addr = lower_32_bits(CFG_BASE + mmSYNC_MNGR_SOB_OBJ_1023);

 if ((le32_to_cpu(wreg_pkt->value) < sob_start_addr) ||
   (le32_to_cpu(wreg_pkt->value) > sob_end_addr)) {

  dev_err(hdev->dev, "WREG32 packet with illegal value 0x%x\n",
   wreg_pkt->value);
  return -EPERM;
 }

 return 0;
}
