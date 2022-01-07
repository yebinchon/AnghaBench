
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {int dummy; } ;


 int WREG32 (int ,int ) ;
 int mmCPU_EQ_CI ;

void goya_update_eq_ci(struct hl_device *hdev, u32 val)
{
 WREG32(mmCPU_EQ_CI, val);
}
