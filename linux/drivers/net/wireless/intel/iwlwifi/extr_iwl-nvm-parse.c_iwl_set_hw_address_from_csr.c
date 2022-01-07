
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_nvm_data {int hw_addr; } ;
typedef int __le32 ;
struct TYPE_4__ {int mac_addr1_otp; int mac_addr0_otp; int mac_addr1_strap; int mac_addr0_strap; } ;
struct TYPE_3__ {TYPE_2__* csr; } ;


 int cpu_to_le32 (int ) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int iwl_flip_hw_address (int ,int ,int ) ;
 int iwl_read32 (struct iwl_trans*,int ) ;

__attribute__((used)) static void iwl_set_hw_address_from_csr(struct iwl_trans *trans,
     struct iwl_nvm_data *data)
{
 __le32 mac_addr0 =
  cpu_to_le32(iwl_read32(trans,
           trans->trans_cfg->csr->mac_addr0_strap));
 __le32 mac_addr1 =
  cpu_to_le32(iwl_read32(trans,
           trans->trans_cfg->csr->mac_addr1_strap));

 iwl_flip_hw_address(mac_addr0, mac_addr1, data->hw_addr);




 if (is_valid_ether_addr(data->hw_addr))
  return;

 mac_addr0 = cpu_to_le32(iwl_read32(trans,
     trans->trans_cfg->csr->mac_addr0_otp));
 mac_addr1 = cpu_to_le32(iwl_read32(trans,
     trans->trans_cfg->csr->mac_addr1_otp));

 iwl_flip_hw_address(mac_addr0, mac_addr1, data->hw_addr);
}
