
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {scalar_t__ pldm; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int HW_CAP_TPC_MBIST ;
 int TPC_MAX_NUM ;
 int _goya_tpc_mbist_workaround (struct hl_device*,int) ;

__attribute__((used)) static void goya_tpc_mbist_workaround(struct hl_device *hdev)
{
 struct goya_device *goya = hdev->asic_specific;
 int i;

 if (hdev->pldm)
  return;

 if (goya->hw_cap_initialized & HW_CAP_TPC_MBIST)
  return;



 for (i = 0 ; i < TPC_MAX_NUM ; i++)
  _goya_tpc_mbist_workaround(hdev, i);

 goya->hw_cap_initialized |= HW_CAP_TPC_MBIST;
}
