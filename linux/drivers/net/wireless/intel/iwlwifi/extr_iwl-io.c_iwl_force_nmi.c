
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int DEVICE_SET_NMI_REG ;
 int DEVICE_SET_NMI_VAL_DRV ;
 scalar_t__ IWL_DEVICE_FAMILY_9000 ;
 scalar_t__ IWL_DEVICE_FAMILY_AX210 ;
 int UREG_DOORBELL_TO_ISR6 ;
 int UREG_DOORBELL_TO_ISR6_NMI_BIT ;
 int UREG_NIC_SET_NMI_DRIVER ;
 int UREG_NIC_SET_NMI_DRIVER_NMI_FROM_DRIVER_MSK ;
 int iwl_write_prph (struct iwl_trans*,int ,int ) ;
 int iwl_write_umac_prph (struct iwl_trans*,int ,int ) ;

void iwl_force_nmi(struct iwl_trans *trans)
{
 if (trans->trans_cfg->device_family < IWL_DEVICE_FAMILY_9000)
  iwl_write_prph(trans, DEVICE_SET_NMI_REG,
          DEVICE_SET_NMI_VAL_DRV);
 else if (trans->trans_cfg->device_family < IWL_DEVICE_FAMILY_AX210)
  iwl_write_umac_prph(trans, UREG_NIC_SET_NMI_DRIVER,
    UREG_NIC_SET_NMI_DRIVER_NMI_FROM_DRIVER_MSK);
 else
  iwl_write_umac_prph(trans, UREG_DOORBELL_TO_ISR6,
        UREG_DOORBELL_TO_ISR6_NMI_BIT);
}
