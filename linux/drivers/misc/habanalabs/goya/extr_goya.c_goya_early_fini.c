
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int hl_pci_fini (struct hl_device*) ;

__attribute__((used)) static int goya_early_fini(struct hl_device *hdev)
{
 hl_pci_fini(hdev);

 return 0;
}
