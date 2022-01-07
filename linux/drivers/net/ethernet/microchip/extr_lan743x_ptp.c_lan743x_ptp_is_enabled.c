
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_adapter {int dummy; } ;


 int PTP_CMD_CTL ;
 int PTP_CMD_CTL_PTP_ENABLE_ ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;

__attribute__((used)) static bool lan743x_ptp_is_enabled(struct lan743x_adapter *adapter)
{
 if (lan743x_csr_read(adapter, PTP_CMD_CTL) & PTP_CMD_CTL_PTP_ENABLE_)
  return 1;
 return 0;
}
