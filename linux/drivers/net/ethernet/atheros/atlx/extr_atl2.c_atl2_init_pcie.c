
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl2_hw {int dummy; } ;


 int ATL2_WRITE_REG (struct atl2_hw*,int ,int ) ;
 int LTSSM_TEST_MODE_DEF ;
 int PCIE_DLL_TX_CTRL1_DEF ;
 int REG_LTSSM_TEST_MODE ;
 int REG_PCIE_DLL_TX_CTRL1 ;

__attribute__((used)) static void atl2_init_pcie(struct atl2_hw *hw)
{
    u32 value;
    value = LTSSM_TEST_MODE_DEF;
    ATL2_WRITE_REG(hw, REG_LTSSM_TEST_MODE, value);

    value = PCIE_DLL_TX_CTRL1_DEF;
    ATL2_WRITE_REG(hw, REG_PCIE_DLL_TX_CTRL1, value);
}
