
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int E1000_SWFW_CSR_SM ;
 int e1000_release_swfw_sync_80003es2lan (struct e1000_hw*,int ) ;

__attribute__((used)) static void e1000_release_mac_csr_80003es2lan(struct e1000_hw *hw)
{
 u16 mask;

 mask = E1000_SWFW_CSR_SM;

 e1000_release_swfw_sync_80003es2lan(hw, mask);
}
