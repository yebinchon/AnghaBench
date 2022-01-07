
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_hw {scalar_t__ chip_id; scalar_t__ chip_rev; } ;


 scalar_t__ CHIP_ID_YUKON ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 scalar_t__ is_genesis (struct skge_hw const*) ;

__attribute__((used)) static u32 wol_supported(const struct skge_hw *hw)
{
 if (is_genesis(hw))
  return 0;

 if (hw->chip_id == CHIP_ID_YUKON && hw->chip_rev == 0)
  return 0;

 return WAKE_MAGIC | WAKE_PHY;
}
