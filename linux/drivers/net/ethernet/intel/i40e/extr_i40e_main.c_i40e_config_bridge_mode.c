
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40e_veb {int bridge_mode; struct i40e_pf* pf; } ;
struct TYPE_3__ {int debug_mask; } ;
struct i40e_pf {TYPE_2__* pdev; TYPE_1__ hw; } ;
struct TYPE_4__ {int dev; } ;


 int BRIDGE_MODE_VEPA ;
 int I40E_DEBUG_LAN ;
 int dev_info (int *,char*,char*) ;
 int i40e_disable_pf_switch_lb (struct i40e_pf*) ;
 int i40e_enable_pf_switch_lb (struct i40e_pf*) ;

__attribute__((used)) static void i40e_config_bridge_mode(struct i40e_veb *veb)
{
 struct i40e_pf *pf = veb->pf;

 if (pf->hw.debug_mask & I40E_DEBUG_LAN)
  dev_info(&pf->pdev->dev, "enabling bridge mode: %s\n",
    veb->bridge_mode == BRIDGE_MODE_VEPA ? "VEPA" : "VEB");
 if (veb->bridge_mode & BRIDGE_MODE_VEPA)
  i40e_disable_pf_switch_lb(pf);
 else
  i40e_enable_pf_switch_lb(pf);
}
