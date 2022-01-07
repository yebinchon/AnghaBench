
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int num_mac_filters; } ;
struct TYPE_4__ {TYPE_1__ resc; } ;
struct qed_vf_iov {TYPE_2__ acquire_resp; } ;
struct qed_hwfn {struct qed_vf_iov* vf_iov_info; } ;



void qed_vf_get_num_mac_filters(struct qed_hwfn *p_hwfn, u8 *num_mac_filters)
{
 struct qed_vf_iov *p_vf = p_hwfn->vf_iov_info;

 *num_mac_filters = p_vf->acquire_resp.resc.num_mac_filters;
}
