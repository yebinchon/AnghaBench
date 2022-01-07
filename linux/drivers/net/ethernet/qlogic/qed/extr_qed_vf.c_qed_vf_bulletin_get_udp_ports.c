
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qed_hwfn {TYPE_1__* vf_iov_info; } ;
struct qed_bulletin_content {int geneve_udp_port; int vxlan_udp_port; } ;
struct TYPE_2__ {struct qed_bulletin_content bulletin_shadow; } ;



__attribute__((used)) static void
qed_vf_bulletin_get_udp_ports(struct qed_hwfn *p_hwfn,
         u16 *p_vxlan_port, u16 *p_geneve_port)
{
 struct qed_bulletin_content *p_bulletin;

 p_bulletin = &p_hwfn->vf_iov_info->bulletin_shadow;

 *p_vxlan_port = p_bulletin->vxlan_udp_port;
 *p_geneve_port = p_bulletin->geneve_udp_port;
}
