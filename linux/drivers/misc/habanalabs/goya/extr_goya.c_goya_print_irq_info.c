
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hl_device {int dev; } ;
typedef int desc ;


 int dev_err (int ,char*,int ,char*) ;
 int goya_get_event_desc (int ,char*,int) ;
 int goya_print_mmu_error_info (struct hl_device*) ;
 int goya_print_razwi_info (struct hl_device*) ;

__attribute__((used)) static void goya_print_irq_info(struct hl_device *hdev, u16 event_type,
    bool razwi)
{
 char desc[20] = "";

 goya_get_event_desc(event_type, desc, sizeof(desc));
 dev_err(hdev->dev, "Received H/W interrupt %d [\"%s\"]\n",
  event_type, desc);

 if (razwi) {
  goya_print_razwi_info(hdev);
  goya_print_mmu_error_info(hdev);
 }
}
