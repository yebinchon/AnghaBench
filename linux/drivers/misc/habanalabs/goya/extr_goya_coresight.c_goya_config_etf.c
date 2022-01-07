
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct hl_device {int dev; } ;
struct hl_debug_params_etf {int sink_mode; } ;
struct hl_debug_params {size_t reg_idx; struct hl_debug_params_etf* input; scalar_t__ enable; } ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ CFG_BASE ;
 int CORESIGHT_UNLOCK ;
 int EINVAL ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__* debug_etf_regs ;
 int dev_err (int ,char*,...) ;
 int goya_coresight_timeout (struct hl_device*,scalar_t__,int,int) ;

__attribute__((used)) static int goya_config_etf(struct hl_device *hdev,
  struct hl_debug_params *params)
{
 struct hl_debug_params_etf *input;
 u64 base_reg;
 u32 val;
 int rc;

 if (params->reg_idx >= ARRAY_SIZE(debug_etf_regs)) {
  dev_err(hdev->dev, "Invalid register index in ETF\n");
  return -EINVAL;
 }

 base_reg = debug_etf_regs[params->reg_idx] - CFG_BASE;

 WREG32(base_reg + 0xFB0, CORESIGHT_UNLOCK);

 val = RREG32(base_reg + 0x304);
 val |= 0x1000;
 WREG32(base_reg + 0x304, val);
 val |= 0x40;
 WREG32(base_reg + 0x304, val);

 rc = goya_coresight_timeout(hdev, base_reg + 0x304, 6, 0);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to %s ETF on timeout, error %d\n",
    params->enable ? "enable" : "disable", rc);
  return rc;
 }

 rc = goya_coresight_timeout(hdev, base_reg + 0xC, 2, 1);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to %s ETF on timeout, error %d\n",
    params->enable ? "enable" : "disable", rc);
  return rc;
 }

 WREG32(base_reg + 0x20, 0);

 if (params->enable) {
  input = params->input;

  if (!input)
   return -EINVAL;

  WREG32(base_reg + 0x34, 0x3FFC);
  WREG32(base_reg + 0x28, input->sink_mode);
  WREG32(base_reg + 0x304, 0x4001);
  WREG32(base_reg + 0x308, 0xA);
  WREG32(base_reg + 0x20, 1);
 } else {
  WREG32(base_reg + 0x34, 0);
  WREG32(base_reg + 0x28, 0);
  WREG32(base_reg + 0x304, 0);
 }

 return 0;
}
