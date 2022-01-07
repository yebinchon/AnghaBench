
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vfpf_update_tunn_param_tlv {int tunn_mode; int tun_mode_update_mask; } ;
struct qed_tunn_update_type {int tun_cls; scalar_t__ b_mode_enabled; scalar_t__ b_update_mode; } ;
typedef enum qed_tunn_mode { ____Placeholder_qed_tunn_mode } qed_tunn_mode ;


 int BIT (int) ;

__attribute__((used)) static void
__qed_vf_prep_tunn_req_tlv(struct vfpf_update_tunn_param_tlv *p_req,
      struct qed_tunn_update_type *p_src,
      enum qed_tunn_mode mask, u8 *p_cls)
{
 if (p_src->b_update_mode) {
  p_req->tun_mode_update_mask |= BIT(mask);

  if (p_src->b_mode_enabled)
   p_req->tunn_mode |= BIT(mask);
 }

 *p_cls = p_src->tun_cls;
}
