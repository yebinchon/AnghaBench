
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfpf_update_tunn_param_tlv {scalar_t__ update_vxlan_port; scalar_t__ update_geneve_port; scalar_t__ update_tun_cls; scalar_t__ tun_mode_update_mask; } ;



__attribute__((used)) static bool
qed_iov_pf_validate_tunn_param(struct vfpf_update_tunn_param_tlv *p_req)
{
 bool b_update_requested = 0;

 if (p_req->tun_mode_update_mask || p_req->update_tun_cls ||
     p_req->update_geneve_port || p_req->update_vxlan_port)
  b_update_requested = 1;

 return b_update_requested;
}
