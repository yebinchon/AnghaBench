
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_ptp {int command_lock; } ;
struct lan743x_adapter {int netdev; struct lan743x_ptp ptp; } ;


 int PTP_CMD_CTL ;
 int PTP_CMD_CTL_PTP_RESET_ ;
 int drv ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;
 scalar_t__ lan743x_ptp_is_enabled (struct lan743x_adapter*) ;
 int lan743x_ptp_wait_till_cmd_done (struct lan743x_adapter*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_err (struct lan743x_adapter*,int ,int ,char*) ;

__attribute__((used)) static void lan743x_ptp_reset(struct lan743x_adapter *adapter)
{
 struct lan743x_ptp *ptp = &adapter->ptp;

 mutex_lock(&ptp->command_lock);

 if (lan743x_ptp_is_enabled(adapter)) {
  netif_err(adapter, drv, adapter->netdev,
     "Attempting reset while enabled\n");
  goto done;
 }

 lan743x_csr_write(adapter, PTP_CMD_CTL, PTP_CMD_CTL_PTP_RESET_);
 lan743x_ptp_wait_till_cmd_done(adapter, PTP_CMD_CTL_PTP_RESET_);
done:
 mutex_unlock(&ptp->command_lock);
}
