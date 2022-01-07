
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_nic {scalar_t__ regs; } ;


 scalar_t__ FW_VER ;
 int pr_info (char*,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void print_fw_id(struct pci_nic *nic)
{
 pr_info("fw 0x%x\n", readl(nic->regs + FW_VER));
}
