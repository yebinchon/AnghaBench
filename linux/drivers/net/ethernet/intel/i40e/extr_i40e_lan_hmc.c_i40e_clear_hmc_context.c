
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {TYPE_1__* hmc_obj; } ;
struct i40e_hw {TYPE_2__ hmc; } ;
typedef int i40e_status ;
typedef enum i40e_hmc_lan_rsrc_type { ____Placeholder_i40e_hmc_lan_rsrc_type } i40e_hmc_lan_rsrc_type ;
struct TYPE_3__ {scalar_t__ size; } ;


 int memset (int *,int ,int ) ;

__attribute__((used)) static i40e_status i40e_clear_hmc_context(struct i40e_hw *hw,
     u8 *context_bytes,
     enum i40e_hmc_lan_rsrc_type hmc_type)
{

 memset(context_bytes, 0, (u32)hw->hmc.hmc_obj[hmc_type].size);

 return 0;
}
