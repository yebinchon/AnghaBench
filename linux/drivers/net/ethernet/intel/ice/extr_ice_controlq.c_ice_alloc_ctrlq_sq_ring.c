
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct TYPE_3__ {size_t size; int pa; int * va; } ;
struct TYPE_4__ {TYPE_1__ desc_buf; int cmd_buf; } ;
struct ice_ctl_q_info {int num_sq_entries; TYPE_2__ sq; } ;
struct ice_aq_desc {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_ERR_NO_MEMORY ;
 int __GFP_ZERO ;
 int devm_kcalloc (int ,int,int,int) ;
 int * dmam_alloc_coherent (int ,size_t,int *,int) ;
 int dmam_free_coherent (int ,size_t,int *,int ) ;
 int ice_hw_to_dev (struct ice_hw*) ;

__attribute__((used)) static enum ice_status
ice_alloc_ctrlq_sq_ring(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{
 size_t size = cq->num_sq_entries * sizeof(struct ice_aq_desc);

 cq->sq.desc_buf.va = dmam_alloc_coherent(ice_hw_to_dev(hw), size,
       &cq->sq.desc_buf.pa,
       GFP_KERNEL | __GFP_ZERO);
 if (!cq->sq.desc_buf.va)
  return ICE_ERR_NO_MEMORY;
 cq->sq.desc_buf.size = size;

 cq->sq.cmd_buf = devm_kcalloc(ice_hw_to_dev(hw), cq->num_sq_entries,
          sizeof(struct ice_sq_cd), GFP_KERNEL);
 if (!cq->sq.cmd_buf) {
  dmam_free_coherent(ice_hw_to_dev(hw), cq->sq.desc_buf.size,
       cq->sq.desc_buf.va, cq->sq.desc_buf.pa);
  cq->sq.desc_buf.va = ((void*)0);
  cq->sq.desc_buf.pa = 0;
  cq->sq.desc_buf.size = 0;
  return ICE_ERR_NO_MEMORY;
 }

 return 0;
}
