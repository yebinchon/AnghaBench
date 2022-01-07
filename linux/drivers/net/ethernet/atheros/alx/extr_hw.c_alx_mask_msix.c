
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct alx_hw {int dummy; } ;


 scalar_t__ ALX_MSIX_ENTRY_BASE ;
 scalar_t__ PCI_MSIX_ENTRY_CTRL_MASKBIT ;
 int PCI_MSIX_ENTRY_SIZE ;
 scalar_t__ PCI_MSIX_ENTRY_VECTOR_CTRL ;
 int alx_post_write (struct alx_hw*) ;
 int alx_write_mem32 (struct alx_hw*,scalar_t__,scalar_t__) ;

void alx_mask_msix(struct alx_hw *hw, int index, bool mask)
{
 u32 reg, val;

 reg = ALX_MSIX_ENTRY_BASE + index * PCI_MSIX_ENTRY_SIZE +
  PCI_MSIX_ENTRY_VECTOR_CTRL;

 val = mask ? PCI_MSIX_ENTRY_CTRL_MASKBIT : 0;

 alx_write_mem32(hw, reg, val);
 alx_post_write(hw);
}
