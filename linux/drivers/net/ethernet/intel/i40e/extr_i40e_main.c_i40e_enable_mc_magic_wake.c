
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_9__ {scalar_t__ flex10_enable; } ;
struct TYPE_8__ {int addr; } ;
struct i40e_hw {int partition_id; TYPE_4__ func_caps; TYPE_3__ mac; } ;
struct i40e_pf {size_t lan_vsi; TYPE_5__* pdev; TYPE_2__** vsi; struct i40e_hw hw; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_10__ {int dev; } ;
struct TYPE_7__ {TYPE_1__* netdev; } ;
struct TYPE_6__ {int dev_addr; } ;


 int I40E_AQC_MC_MAG_EN ;
 int I40E_AQC_WOL_PRESERVE_ON_PFR ;
 int I40E_AQC_WRITE_TYPE_LAA_ONLY ;
 int I40E_AQC_WRITE_TYPE_LAA_WOL ;
 int I40E_AQC_WRITE_TYPE_UPDATE_MC_MAG ;
 int dev_err (int *,char*) ;
 int ether_addr_copy (int *,int ) ;
 scalar_t__ i40e_aq_mac_address_write (struct i40e_hw*,int,int *,int *) ;

__attribute__((used)) static void i40e_enable_mc_magic_wake(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 i40e_status ret;
 u8 mac_addr[6];
 u16 flags = 0;


 if (pf->vsi[pf->lan_vsi] && pf->vsi[pf->lan_vsi]->netdev) {
  ether_addr_copy(mac_addr,
    pf->vsi[pf->lan_vsi]->netdev->dev_addr);
 } else {
  dev_err(&pf->pdev->dev,
   "Failed to retrieve MAC address; using default\n");
  ether_addr_copy(mac_addr, hw->mac.addr);
 }





 flags = I40E_AQC_WRITE_TYPE_LAA_WOL;

 if (hw->func_caps.flex10_enable && hw->partition_id != 1)
  flags = I40E_AQC_WRITE_TYPE_LAA_ONLY;

 ret = i40e_aq_mac_address_write(hw, flags, mac_addr, ((void*)0));
 if (ret) {
  dev_err(&pf->pdev->dev,
   "Failed to update MAC address registers; cannot enable Multicast Magic packet wake up");
  return;
 }

 flags = I40E_AQC_MC_MAG_EN
   | I40E_AQC_WOL_PRESERVE_ON_PFR
   | I40E_AQC_WRITE_TYPE_UPDATE_MC_MAG;
 ret = i40e_aq_mac_address_write(hw, flags, mac_addr, ((void*)0));
 if (ret)
  dev_err(&pf->pdev->dev,
   "Failed to enable Multicast Magic Packet wake up\n");
}
