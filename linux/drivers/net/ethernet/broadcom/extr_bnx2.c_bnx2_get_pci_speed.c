
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int bus_speed_mhz; int flags; } ;


 int BNX2_FLAG_PCIX ;
 int BNX2_FLAG_PCI_32BIT ;
 int BNX2_PCICFG_MISC_STATUS ;
 int BNX2_PCICFG_MISC_STATUS_32BIT_DET ;
 int BNX2_PCICFG_MISC_STATUS_M66EN ;
 int BNX2_PCICFG_MISC_STATUS_PCIX_DET ;
 int BNX2_PCICFG_PCI_CLOCK_CONTROL_BITS ;
 int BNX2_PCICFG_PCI_CLOCK_CONTROL_BITS_PCI_CLK_SPD_DET ;
 int BNX2_RD (struct bnx2*,int ) ;

__attribute__((used)) static void
bnx2_get_pci_speed(struct bnx2 *bp)
{
 u32 reg;

 reg = BNX2_RD(bp, BNX2_PCICFG_MISC_STATUS);
 if (reg & BNX2_PCICFG_MISC_STATUS_PCIX_DET) {
  u32 clkreg;

  bp->flags |= BNX2_FLAG_PCIX;

  clkreg = BNX2_RD(bp, BNX2_PCICFG_PCI_CLOCK_CONTROL_BITS);

  clkreg &= BNX2_PCICFG_PCI_CLOCK_CONTROL_BITS_PCI_CLK_SPD_DET;
  switch (clkreg) {
  case 136:
   bp->bus_speed_mhz = 133;
   break;

  case 129:
   bp->bus_speed_mhz = 100;
   break;

  case 131:
  case 130:
   bp->bus_speed_mhz = 66;
   break;

  case 133:
  case 132:
   bp->bus_speed_mhz = 50;
   break;

  case 128:
  case 135:
  case 134:
   bp->bus_speed_mhz = 33;
   break;
  }
 }
 else {
  if (reg & BNX2_PCICFG_MISC_STATUS_M66EN)
   bp->bus_speed_mhz = 66;
  else
   bp->bus_speed_mhz = 33;
 }

 if (reg & BNX2_PCICFG_MISC_STATUS_32BIT_DET)
  bp->flags |= BNX2_FLAG_PCI_32BIT;

}
