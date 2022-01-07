
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi {int num_q_vectors; int vsi_num; scalar_t__* q_vectors; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EEXIST ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int,int ,int) ;
 int ice_free_q_vector (struct ice_vsi*,int) ;
 int ice_vsi_alloc_q_vector (struct ice_vsi*,int) ;

__attribute__((used)) static int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 int v_idx = 0, num_q_vectors;
 int err;

 if (vsi->q_vectors[0]) {
  dev_dbg(&pf->pdev->dev, "VSI %d has existing q_vectors\n",
   vsi->vsi_num);
  return -EEXIST;
 }

 num_q_vectors = vsi->num_q_vectors;

 for (v_idx = 0; v_idx < num_q_vectors; v_idx++) {
  err = ice_vsi_alloc_q_vector(vsi, v_idx);
  if (err)
   goto err_out;
 }

 return 0;

err_out:
 while (v_idx--)
  ice_free_q_vector(vsi, v_idx);

 dev_err(&pf->pdev->dev,
  "Failed to allocate %d q_vector for VSI %d, ret=%d\n",
  vsi->num_q_vectors, vsi->vsi_num, err);
 vsi->num_q_vectors = 0;
 return err;
}
