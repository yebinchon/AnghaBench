
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hl_device {int dummy; } ;


 int WREG32_AND (int ,int) ;
 int WREG32_OR (int ,int ) ;

__attribute__((used)) static void goya_mmu_prepare_reg(struct hl_device *hdev, u64 reg, u32 asid)
{

 WREG32_AND(reg, ~0x7FF);
 WREG32_OR(reg, asid);
}
