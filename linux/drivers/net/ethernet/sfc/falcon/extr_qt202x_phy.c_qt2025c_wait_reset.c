
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int net_dev; } ;


 int ETIMEDOUT ;
 int hw ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*) ;
 int qt2025c_restart_firmware (struct ef4_nic*) ;
 int qt2025c_wait_fw_status_good (struct ef4_nic*) ;
 int qt2025c_wait_heartbeat (struct ef4_nic*) ;

__attribute__((used)) static int qt2025c_wait_reset(struct ef4_nic *efx)
{
 int rc;

 rc = qt2025c_wait_heartbeat(efx);
 if (rc != 0)
  return rc;

 rc = qt2025c_wait_fw_status_good(efx);
 if (rc == -ETIMEDOUT) {



  netif_dbg(efx, hw, efx->net_dev,
     "bashing QT2025C microcontroller\n");
  qt2025c_restart_firmware(efx);
  rc = qt2025c_wait_heartbeat(efx);
  if (rc != 0)
   return rc;
  rc = qt2025c_wait_fw_status_good(efx);
 }

 return rc;
}
