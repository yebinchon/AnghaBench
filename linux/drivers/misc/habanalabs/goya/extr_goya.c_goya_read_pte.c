
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hl_device {scalar_t__* pcie_bar; scalar_t__ hard_reset_pending; struct goya_device* asic_specific; } ;
struct goya_device {scalar_t__ ddr_bar_cur_addr; } ;


 size_t DDR_BAR_ID ;
 scalar_t__ U64_MAX ;
 scalar_t__ readq (scalar_t__) ;

__attribute__((used)) static u64 goya_read_pte(struct hl_device *hdev, u64 addr)
{
 struct goya_device *goya = hdev->asic_specific;

 if (hdev->hard_reset_pending)
  return U64_MAX;

 return readq(hdev->pcie_bar[DDR_BAR_ID] +
   (addr - goya->ddr_bar_cur_addr));
}
