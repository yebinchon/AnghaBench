
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hl_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;



__attribute__((used)) static u32 goya_get_pci_id(struct hl_device *hdev)
{
 return hdev->pdev->device;
}
