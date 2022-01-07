
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ice_vsi {scalar_t__ type; int base_vector; int vsi_num; int idx; scalar_t__ num_q_vectors; struct ice_pf* back; } ;
struct ice_pf {int num_avail_sw_msix; TYPE_1__* pdev; int irq_tracker; } ;
struct TYPE_2__ {int dev; } ;


 int EEXIST ;
 int ENOENT ;
 scalar_t__ ICE_VSI_VF ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,scalar_t__,int ,int ) ;
 int ice_get_res (struct ice_pf*,int ,scalar_t__,int ) ;

__attribute__((used)) static int ice_vsi_setup_vector_base(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 u16 num_q_vectors;


 if (vsi->type == ICE_VSI_VF)
  return 0;

 if (vsi->base_vector) {
  dev_dbg(&pf->pdev->dev, "VSI %d has non-zero base vector %d\n",
   vsi->vsi_num, vsi->base_vector);
  return -EEXIST;
 }

 num_q_vectors = vsi->num_q_vectors;

 vsi->base_vector = ice_get_res(pf, pf->irq_tracker, num_q_vectors,
           vsi->idx);
 if (vsi->base_vector < 0) {
  dev_err(&pf->pdev->dev,
   "Failed to get tracking for %d vectors for VSI %d, err=%d\n",
   num_q_vectors, vsi->vsi_num, vsi->base_vector);
  return -ENOENT;
 }
 pf->num_avail_sw_msix -= num_q_vectors;

 return 0;
}
