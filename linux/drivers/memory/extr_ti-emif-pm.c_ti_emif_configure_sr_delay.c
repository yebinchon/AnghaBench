
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ti_emif_base_addr_virt; } ;
struct ti_emif_data {TYPE_1__ pm_data; } ;


 scalar_t__ EMIF_POWER_MANAGEMENT_CONTROL ;
 scalar_t__ EMIF_POWER_MANAGEMENT_CTRL_SHDW ;
 int EMIF_POWER_MGMT_WAIT_SELF_REFRESH_8192_CYCLES ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ti_emif_configure_sr_delay(struct ti_emif_data *emif_data)
{
 writel(EMIF_POWER_MGMT_WAIT_SELF_REFRESH_8192_CYCLES,
        (emif_data->pm_data.ti_emif_base_addr_virt +
  EMIF_POWER_MANAGEMENT_CONTROL));

 writel(EMIF_POWER_MGMT_WAIT_SELF_REFRESH_8192_CYCLES,
        (emif_data->pm_data.ti_emif_base_addr_virt +
  EMIF_POWER_MANAGEMENT_CTRL_SHDW));
}
