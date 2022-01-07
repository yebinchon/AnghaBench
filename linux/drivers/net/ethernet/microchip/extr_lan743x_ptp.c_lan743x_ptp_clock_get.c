
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_ptp {int command_lock; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;


 int PTP_CLOCK_NS ;
 int PTP_CLOCK_SEC ;
 int PTP_CLOCK_SUBNS ;
 int PTP_CMD_CTL ;
 int PTP_CMD_CTL_PTP_CLOCK_READ_ ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;
 int lan743x_ptp_wait_till_cmd_done (struct lan743x_adapter*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void lan743x_ptp_clock_get(struct lan743x_adapter *adapter,
      u32 *seconds, u32 *nano_seconds,
      u32 *sub_nano_seconds)
{
 struct lan743x_ptp *ptp = &adapter->ptp;

 mutex_lock(&ptp->command_lock);

 lan743x_csr_write(adapter, PTP_CMD_CTL, PTP_CMD_CTL_PTP_CLOCK_READ_);
 lan743x_ptp_wait_till_cmd_done(adapter, PTP_CMD_CTL_PTP_CLOCK_READ_);

 if (seconds)
  (*seconds) = lan743x_csr_read(adapter, PTP_CLOCK_SEC);

 if (nano_seconds)
  (*nano_seconds) = lan743x_csr_read(adapter, PTP_CLOCK_NS);

 if (sub_nano_seconds)
  (*sub_nano_seconds) =
  lan743x_csr_read(adapter, PTP_CLOCK_SUBNS);

 mutex_unlock(&ptp->command_lock);
}
