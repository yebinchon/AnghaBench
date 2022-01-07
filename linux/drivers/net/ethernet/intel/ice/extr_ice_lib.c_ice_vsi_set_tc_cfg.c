
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numtc; int ena_tc; } ;
struct ice_vsi {TYPE_2__ tc_cfg; TYPE_1__* port_info; } ;
struct ice_dcbx_cfg {int dummy; } ;
struct TYPE_3__ {struct ice_dcbx_cfg local_dcbx_cfg; } ;


 int ice_dcb_get_ena_tc (struct ice_dcbx_cfg*) ;
 int ice_dcb_get_num_tc (struct ice_dcbx_cfg*) ;

__attribute__((used)) static void ice_vsi_set_tc_cfg(struct ice_vsi *vsi)
{
 struct ice_dcbx_cfg *cfg = &vsi->port_info->local_dcbx_cfg;

 vsi->tc_cfg.ena_tc = ice_dcb_get_ena_tc(cfg);
 vsi->tc_cfg.numtc = ice_dcb_get_num_tc(cfg);
}
