
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_hw {int dummy; } ;


 int GMR_FS_ANY_ERR ;
 int GMR_FS_RX_OK ;
 int XMR_FS_2L_VLAN ;
 int XMR_FS_ERR ;
 scalar_t__ is_genesis (struct skge_hw const*) ;

__attribute__((used)) static inline int bad_phy_status(const struct skge_hw *hw, u32 status)
{
 if (is_genesis(hw))
  return (status & (XMR_FS_ERR | XMR_FS_2L_VLAN)) != 0;
 else
  return (status & GMR_FS_ANY_ERR) ||
   (status & GMR_FS_RX_OK) == 0;
}
