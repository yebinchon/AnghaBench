
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int GOYA_MMU_REGS_NUM ;
 int HW_CAP_MMU ;
 int MME_QM_GLBL_SECURE_PROPS_ASID_MASK ;
 int WARN (int,char*,int) ;
 int goya_mmu_prepare_reg (struct hl_device*,int ,int) ;
 int * goya_mmu_regs ;

__attribute__((used)) static void goya_mmu_prepare(struct hl_device *hdev, u32 asid)
{
 struct goya_device *goya = hdev->asic_specific;
 int i;

 if (!(goya->hw_cap_initialized & HW_CAP_MMU))
  return;

 if (asid & ~MME_QM_GLBL_SECURE_PROPS_ASID_MASK) {
  WARN(1, "asid %u is too big\n", asid);
  return;
 }


 for (i = 0 ; i < GOYA_MMU_REGS_NUM ; i++)
  goya_mmu_prepare_reg(hdev, goya_mmu_regs[i], asid);
}
