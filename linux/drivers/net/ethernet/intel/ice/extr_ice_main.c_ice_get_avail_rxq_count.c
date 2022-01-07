
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_pf {int max_pf_rxqs; int avail_q_mutex; int avail_rxqs; } ;


 int ice_get_avail_q_count (int ,int *,int ) ;

u16 ice_get_avail_rxq_count(struct ice_pf *pf)
{
 return ice_get_avail_q_count(pf->avail_rxqs, &pf->avail_q_mutex,
         pf->max_pf_rxqs);
}
