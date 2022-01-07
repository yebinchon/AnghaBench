
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_res_tracker {scalar_t__ num_entries; scalar_t__ end; } ;
struct ice_pf {scalar_t__ sriov_base_vector; int num_avail_sw_msix; struct ice_res_tracker* irq_tracker; } ;


 int EINVAL ;

__attribute__((used)) static int ice_sriov_free_msix_res(struct ice_pf *pf)
{
 struct ice_res_tracker *res;

 if (!pf)
  return -EINVAL;

 res = pf->irq_tracker;
 if (!res)
  return -EINVAL;


 if (pf->sriov_base_vector < res->num_entries) {
  res->end = res->num_entries;
  pf->num_avail_sw_msix +=
   res->num_entries - pf->sriov_base_vector;
 }

 pf->sriov_base_vector = 0;

 return 0;
}
