
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int workaround_35388; int workaround_61265; } ;


 int ENOSYS ;
 unsigned int MC_CMD_GET_WORKAROUNDS_OUT_BUG35388 ;
 unsigned int MC_CMD_GET_WORKAROUNDS_OUT_BUG61265 ;
 int MC_CMD_WORKAROUND_BUG35388 ;
 int efx_mcdi_get_workarounds (struct efx_nic*,unsigned int*,unsigned int*) ;
 int efx_mcdi_set_workaround (struct efx_nic*,int ,int,int *) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,char*) ;
 int probe ;

__attribute__((used)) static int efx_ef10_get_timer_workarounds(struct efx_nic *efx)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;
 unsigned int implemented;
 unsigned int enabled;
 int rc;

 nic_data->workaround_35388 = 0;
 nic_data->workaround_61265 = 0;

 rc = efx_mcdi_get_workarounds(efx, &implemented, &enabled);

 if (rc == -ENOSYS) {

  rc = 0;
 } else if (rc == 0) {

  if (enabled & MC_CMD_GET_WORKAROUNDS_OUT_BUG61265)
   nic_data->workaround_61265 = 1;

  if (enabled & MC_CMD_GET_WORKAROUNDS_OUT_BUG35388) {
   nic_data->workaround_35388 = 1;
  } else if (implemented & MC_CMD_GET_WORKAROUNDS_OUT_BUG35388) {



   rc = efx_mcdi_set_workaround(efx,
           MC_CMD_WORKAROUND_BUG35388,
           1, ((void*)0));
   if (rc == 0)
    nic_data->workaround_35388 = 1;

   rc = 0;
  }
 }

 netif_dbg(efx, probe, efx->net_dev,
    "workaround for bug 35388 is %sabled\n",
    nic_data->workaround_35388 ? "en" : "dis");
 netif_dbg(efx, probe, efx->net_dev,
    "workaround for bug 61265 is %sabled\n",
    nic_data->workaround_61265 ? "en" : "dis");

 return rc;
}
