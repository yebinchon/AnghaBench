
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int DRAM_PHYS_BASE ;
 int HOST_PHYS_BASE ;
 int HOST_PHYS_SIZE ;
 int SRAM_BASE_ADDR ;
 int hl_pci_init_iatu (struct hl_device*,int ,int ,int ,int ) ;

__attribute__((used)) static int goya_init_iatu(struct hl_device *hdev)
{
 return hl_pci_init_iatu(hdev, SRAM_BASE_ADDR, DRAM_PHYS_BASE,
    HOST_PHYS_BASE, HOST_PHYS_SIZE);
}
