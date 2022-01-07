
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {int dummy; } ;
struct i40e_vf {int lan_vsi_id; } ;
struct i40e_pf {int num_alloc_vfs; struct i40e_vf* vf; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,int) ;
 struct i40e_vsi* i40e_find_vsi_from_id (struct i40e_pf*,int ) ;

__attribute__((used)) static int i40e_validate_vf(struct i40e_pf *pf, int vf_id)
{
 struct i40e_vsi *vsi;
 struct i40e_vf *vf;
 int ret = 0;

 if (vf_id >= pf->num_alloc_vfs) {
  dev_err(&pf->pdev->dev,
   "Invalid VF Identifier %d\n", vf_id);
  ret = -EINVAL;
  goto err_out;
 }
 vf = &pf->vf[vf_id];
 vsi = i40e_find_vsi_from_id(pf, vf->lan_vsi_id);
 if (!vsi)
  ret = -EINVAL;
err_out:
 return ret;
}
