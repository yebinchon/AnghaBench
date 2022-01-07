
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int GCR ;
 int PCIE_NO_SNOOP_ALL ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

void e1000e_set_pcie_no_snoop(struct e1000_hw *hw, u32 no_snoop)
{
 u32 gcr;

 if (no_snoop) {
  gcr = er32(GCR);
  gcr &= ~(PCIE_NO_SNOOP_ALL);
  gcr |= no_snoop;
  ew32(GCR, gcr);
 }
}
