
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {scalar_t__ pdev; void* mac_regs; } ;


 int pci_set_power_state (scalar_t__,char) ;
 int writeb (char,void*) ;

__attribute__((used)) static void velocity_set_power_state(struct velocity_info *vptr, char state)
{
 void *addr = vptr->mac_regs;

 if (vptr->pdev)
  pci_set_power_state(vptr->pdev, state);
 else
  writeb(state, addr + 0x154);
}
