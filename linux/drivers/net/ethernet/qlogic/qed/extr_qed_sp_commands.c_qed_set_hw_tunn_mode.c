
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int b_mode_enabled; } ;
struct TYPE_9__ {int b_mode_enabled; } ;
struct TYPE_8__ {int b_mode_enabled; } ;
struct TYPE_7__ {int b_mode_enabled; } ;
struct TYPE_6__ {int b_mode_enabled; } ;
struct qed_tunnel_info {TYPE_5__ ip_geneve; TYPE_4__ l2_geneve; TYPE_3__ vxlan; TYPE_2__ ip_gre; TYPE_1__ l2_gre; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int qed_set_geneve_enable (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;
 int qed_set_gre_enable (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;
 int qed_set_vxlan_enable (struct qed_hwfn*,struct qed_ptt*,int ) ;

__attribute__((used)) static void qed_set_hw_tunn_mode(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt,
     struct qed_tunnel_info *p_tun)
{
 qed_set_gre_enable(p_hwfn, p_ptt, p_tun->l2_gre.b_mode_enabled,
      p_tun->ip_gre.b_mode_enabled);
 qed_set_vxlan_enable(p_hwfn, p_ptt, p_tun->vxlan.b_mode_enabled);

 qed_set_geneve_enable(p_hwfn, p_ptt, p_tun->l2_geneve.b_mode_enabled,
         p_tun->ip_geneve.b_mode_enabled);
}
