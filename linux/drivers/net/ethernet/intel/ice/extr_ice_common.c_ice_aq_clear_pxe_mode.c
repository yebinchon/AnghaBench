
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct TYPE_3__ {int rx_cnt; } ;
struct TYPE_4__ {TYPE_1__ clear_pxe; } ;
struct ice_aq_desc {TYPE_2__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQC_CLEAR_PXE_RX_CNT ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,int *) ;
 int ice_aqc_opc_clear_pxe_mode ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

__attribute__((used)) static enum ice_status ice_aq_clear_pxe_mode(struct ice_hw *hw)
{
 struct ice_aq_desc desc;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_clear_pxe_mode);
 desc.params.clear_pxe.rx_cnt = ICE_AQC_CLEAR_PXE_RX_CNT;

 return ice_aq_send_cmd(hw, &desc, ((void*)0), 0, ((void*)0));
}
