
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {int dummy; } ;


 unsigned int Y2_CFG_SPC ;
 int sky2_write16 (struct sky2_hw*,unsigned int,int ) ;

__attribute__((used)) static inline void sky2_pci_write16(struct sky2_hw *hw, unsigned reg, u16 val)
{
 sky2_write16(hw, Y2_CFG_SPC + reg, val);
}
