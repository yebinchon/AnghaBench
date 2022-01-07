
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union octnic_cmd_setup {int dummy; } octnic_cmd_setup ;
typedef union octeon_instr_64B {int dummy; } octeon_instr_64B ;
typedef int u32 ;
struct octeon_device {int dummy; } ;


 scalar_t__ OCTEON_CN6XXX (struct octeon_device*) ;
 int octnet_prepare_pci_cmd_o2 (struct octeon_device*,union octeon_instr_64B*,union octnic_cmd_setup*,int ) ;
 int octnet_prepare_pci_cmd_o3 (struct octeon_device*,union octeon_instr_64B*,union octnic_cmd_setup*,int ) ;

__attribute__((used)) static inline void
octnet_prepare_pci_cmd(struct octeon_device *oct, union octeon_instr_64B *cmd,
         union octnic_cmd_setup *setup, u32 tag)
{
 if (OCTEON_CN6XXX(oct))
  octnet_prepare_pci_cmd_o2(oct, cmd, setup, tag);
 else
  octnet_prepare_pci_cmd_o3(oct, cmd, setup, tag);
}
