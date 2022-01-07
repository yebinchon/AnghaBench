
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_ptp {int perout_gpio_bit; int perout_event_ch; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;


 int PTP_CLOCK_TARGET_NS_X (int) ;
 int PTP_CLOCK_TARGET_SEC_X (int) ;
 int PTP_GENERAL_CONFIG ;
 int PTP_GENERAL_CONFIG_RELOAD_ADD_X_ (int) ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int lan743x_gpio_release (struct lan743x_adapter*,int) ;
 int lan743x_ptp_release_event_ch (struct lan743x_adapter*,int) ;

__attribute__((used)) static void lan743x_ptp_perout_off(struct lan743x_adapter *adapter)
{
 struct lan743x_ptp *ptp = &adapter->ptp;
 u32 general_config = 0;

 if (ptp->perout_gpio_bit >= 0) {
  lan743x_gpio_release(adapter, ptp->perout_gpio_bit);
  ptp->perout_gpio_bit = -1;
 }

 if (ptp->perout_event_ch >= 0) {

  lan743x_csr_write(adapter,
      PTP_CLOCK_TARGET_SEC_X(ptp->perout_event_ch),
      0xFFFF0000);
  lan743x_csr_write(adapter,
      PTP_CLOCK_TARGET_NS_X(ptp->perout_event_ch),
      0);

  general_config = lan743x_csr_read(adapter, PTP_GENERAL_CONFIG);
  general_config |= PTP_GENERAL_CONFIG_RELOAD_ADD_X_
      (ptp->perout_event_ch);
  lan743x_csr_write(adapter, PTP_GENERAL_CONFIG, general_config);
  lan743x_ptp_release_event_ch(adapter, ptp->perout_event_ch);
  ptp->perout_event_ch = -1;
 }
}
