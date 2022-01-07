
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct i40e_vf {int num_tc; TYPE_1__* ch; scalar_t__ adq_enabled; } ;
struct TYPE_2__ {scalar_t__ num_qps; scalar_t__ vsi_id; } ;


 scalar_t__ i40e_vc_get_pf_queue_id (struct i40e_vf*,scalar_t__,scalar_t__) ;

__attribute__((used)) static u16 i40e_get_real_pf_qid(struct i40e_vf *vf, u16 vsi_id, u16 queue_id)
{
 int i;

 if (vf->adq_enabled) {




  for (i = 0; i < vf->num_tc; i++) {
   if (queue_id < vf->ch[i].num_qps) {
    vsi_id = vf->ch[i].vsi_id;
    break;
   }



   queue_id -= vf->ch[i].num_qps;
   }
  }

 return i40e_vc_get_pf_queue_id(vf, vsi_id, queue_id);
}
