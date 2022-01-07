
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vsi {int dummy; } ;
struct i40e_pf {int flags; size_t lan_vsi; TYPE_2__* pdev; TYPE_1__** vsi; int hw; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int seid; } ;


 int I40E_FLAG_FD_SB_ENABLED ;
 int I40E_FLAG_FD_SB_INACTIVE ;
 int I40E_GLQF_HKEY (int) ;
 int I40E_GLQF_HKEY_MAX_INDEX ;
 int I40E_VSI_FDIR ;
 int dev_info (int *,char*) ;
 int i40e_fdir_clean_ring ;
 struct i40e_vsi* i40e_find_vsi_by_type (struct i40e_pf*,int ) ;
 struct i40e_vsi* i40e_vsi_setup (struct i40e_pf*,int ,int ,int ) ;
 int i40e_vsi_setup_irqhandler (struct i40e_vsi*,int ) ;
 int rd32 (int *,int ) ;
 int wr32 (int *,int ,int const) ;

__attribute__((used)) static void i40e_fdir_sb_setup(struct i40e_pf *pf)
{
 struct i40e_vsi *vsi;




 if (!rd32(&pf->hw, I40E_GLQF_HKEY(0))) {
  static const u32 hkey[] = {
   0xe640d33f, 0xcdfe98ab, 0x73fa7161, 0x0d7a7d36,
   0xeacb7d61, 0xaa4f05b6, 0x9c5c89ed, 0xfc425ddb,
   0xa4654832, 0xfc7461d4, 0x8f827619, 0xf5c63c21,
   0x95b3a76d};
  int i;

  for (i = 0; i <= I40E_GLQF_HKEY_MAX_INDEX; i++)
   wr32(&pf->hw, I40E_GLQF_HKEY(i), hkey[i]);
 }

 if (!(pf->flags & I40E_FLAG_FD_SB_ENABLED))
  return;


 vsi = i40e_find_vsi_by_type(pf, I40E_VSI_FDIR);


 if (!vsi) {
  vsi = i40e_vsi_setup(pf, I40E_VSI_FDIR,
         pf->vsi[pf->lan_vsi]->seid, 0);
  if (!vsi) {
   dev_info(&pf->pdev->dev, "Couldn't create FDir VSI\n");
   pf->flags &= ~I40E_FLAG_FD_SB_ENABLED;
   pf->flags |= I40E_FLAG_FD_SB_INACTIVE;
   return;
  }
 }

 i40e_vsi_setup_irqhandler(vsi, i40e_fdir_clean_ring);
}
