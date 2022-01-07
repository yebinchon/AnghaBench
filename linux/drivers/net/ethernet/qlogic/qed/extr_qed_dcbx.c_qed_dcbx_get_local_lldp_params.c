
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_dcbx_info; } ;
struct TYPE_4__ {int local_port_id; int local_chassis_id; } ;
struct qed_dcbx_get {TYPE_2__ lldp_local; } ;
struct lldp_config_params_s {int local_port_id; int local_chassis_id; } ;
struct TYPE_3__ {struct lldp_config_params_s* lldp_local; } ;


 size_t LLDP_NEAREST_BRIDGE ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
qed_dcbx_get_local_lldp_params(struct qed_hwfn *p_hwfn,
          struct qed_dcbx_get *params)
{
 struct lldp_config_params_s *p_local;

 p_local = &p_hwfn->p_dcbx_info->lldp_local[LLDP_NEAREST_BRIDGE];

 memcpy(params->lldp_local.local_chassis_id, p_local->local_chassis_id,
        sizeof(p_local->local_chassis_id));
 memcpy(params->lldp_local.local_port_id, p_local->local_port_id,
        sizeof(p_local->local_port_id));
}
