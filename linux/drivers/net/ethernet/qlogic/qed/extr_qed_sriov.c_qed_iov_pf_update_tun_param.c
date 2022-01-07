
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct vfpf_update_tunn_param_tlv {int dummy; } ;
struct qed_tunn_update_udp_port {int b_update_port; int port; } ;
struct qed_tunn_update_type {int dummy; } ;
typedef enum qed_tunn_mode { ____Placeholder_qed_tunn_mode } qed_tunn_mode ;


 int __qed_iov_pf_update_tun_param (struct vfpf_update_tunn_param_tlv*,struct qed_tunn_update_type*,int,scalar_t__) ;

__attribute__((used)) static void
qed_iov_pf_update_tun_param(struct vfpf_update_tunn_param_tlv *p_req,
       struct qed_tunn_update_type *p_tun,
       struct qed_tunn_update_udp_port *p_port,
       enum qed_tunn_mode mask,
       u8 tun_cls, u8 update_port, u16 port)
{
 if (update_port) {
  p_port->b_update_port = 1;
  p_port->port = port;
 }

 __qed_iov_pf_update_tun_param(p_req, p_tun, mask, tun_cls);
}
