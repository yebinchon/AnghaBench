
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i40e_vsi {scalar_t__ type; } ;
struct i40e_pf {size_t lan_vsi; TYPE_2__* pdev; TYPE_1__** vsi; } ;
struct i40e_channel {scalar_t__ initialized; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int uplink_seid; } ;


 scalar_t__ I40E_VSI_MAIN ;
 int I40E_VSI_VMDQ2 ;
 int dev_err (int *,char*,...) ;
 int i40e_setup_hw_channel (struct i40e_pf*,struct i40e_vsi*,struct i40e_channel*,int ,int ) ;

__attribute__((used)) static bool i40e_setup_channel(struct i40e_pf *pf, struct i40e_vsi *vsi,
          struct i40e_channel *ch)
{
 u8 vsi_type;
 u16 seid;
 int ret;

 if (vsi->type == I40E_VSI_MAIN) {
  vsi_type = I40E_VSI_VMDQ2;
 } else {
  dev_err(&pf->pdev->dev, "unsupported parent vsi type(%d)\n",
   vsi->type);
  return 0;
 }


 seid = pf->vsi[pf->lan_vsi]->uplink_seid;


 ret = i40e_setup_hw_channel(pf, vsi, ch, seid, vsi_type);
 if (ret) {
  dev_err(&pf->pdev->dev, "failed to setup hw_channel\n");
  return 0;
 }

 return ch->initialized ? 1 : 0;
}
