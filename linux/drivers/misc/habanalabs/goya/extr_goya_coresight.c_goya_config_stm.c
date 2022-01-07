
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hl_device {int dev; } ;
struct hl_debug_params_stm {int id; int frequency; int sp_mask; int he_mask; } ;
struct hl_debug_params {size_t reg_idx; struct hl_debug_params_stm* input; scalar_t__ enable; } ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ CFG_BASE ;
 int CORESIGHT_UNLOCK ;
 int EINVAL ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__* debug_stm_regs ;
 int dev_err (int ,char*,...) ;
 int goya_coresight_timeout (struct hl_device*,scalar_t__,int,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int goya_config_stm(struct hl_device *hdev,
  struct hl_debug_params *params)
{
 struct hl_debug_params_stm *input;
 u64 base_reg;
 int rc;

 if (params->reg_idx >= ARRAY_SIZE(debug_stm_regs)) {
  dev_err(hdev->dev, "Invalid register index in STM\n");
  return -EINVAL;
 }

 base_reg = debug_stm_regs[params->reg_idx] - CFG_BASE;

 WREG32(base_reg + 0xFB0, CORESIGHT_UNLOCK);

 if (params->enable) {
  input = params->input;

  if (!input)
   return -EINVAL;

  WREG32(base_reg + 0xE80, 0x80004);
  WREG32(base_reg + 0xD64, 7);
  WREG32(base_reg + 0xD60, 0);
  WREG32(base_reg + 0xD00, lower_32_bits(input->he_mask));
  WREG32(base_reg + 0xD20, lower_32_bits(input->sp_mask));
  WREG32(base_reg + 0xD60, 1);
  WREG32(base_reg + 0xD00, upper_32_bits(input->he_mask));
  WREG32(base_reg + 0xD20, upper_32_bits(input->sp_mask));
  WREG32(base_reg + 0xE70, 0x10);
  WREG32(base_reg + 0xE60, 0);
  WREG32(base_reg + 0xE64, 0x420000);
  WREG32(base_reg + 0xE00, 0xFFFFFFFF);
  WREG32(base_reg + 0xE20, 0xFFFFFFFF);
  WREG32(base_reg + 0xEF4, input->id);
  WREG32(base_reg + 0xDF4, 0x80);
  WREG32(base_reg + 0xE8C, input->frequency);
  WREG32(base_reg + 0xE90, 0x7FF);
  WREG32(base_reg + 0xE80, 0x7 | (input->id << 16));
 } else {
  WREG32(base_reg + 0xE80, 4);
  WREG32(base_reg + 0xD64, 0);
  WREG32(base_reg + 0xD60, 1);
  WREG32(base_reg + 0xD00, 0);
  WREG32(base_reg + 0xD20, 0);
  WREG32(base_reg + 0xD60, 0);
  WREG32(base_reg + 0xE20, 0);
  WREG32(base_reg + 0xE00, 0);
  WREG32(base_reg + 0xDF4, 0x80);
  WREG32(base_reg + 0xE70, 0);
  WREG32(base_reg + 0xE60, 0);
  WREG32(base_reg + 0xE64, 0);
  WREG32(base_reg + 0xE8C, 0);

  rc = goya_coresight_timeout(hdev, base_reg + 0xE80, 23, 0);
  if (rc) {
   dev_err(hdev->dev,
    "Failed to disable STM on timeout, error %d\n",
    rc);
   return rc;
  }

  WREG32(base_reg + 0xE80, 4);
 }

 return 0;
}
