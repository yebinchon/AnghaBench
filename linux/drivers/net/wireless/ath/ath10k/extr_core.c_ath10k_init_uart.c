
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uart_pin; scalar_t__ uart_pin_workaround; } ;
struct ath10k {TYPE_1__ hw_params; } ;


 int ath10k_bmi_write32 (struct ath10k*,int ,int) ;
 int ath10k_info (struct ath10k*,char*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int hi_dbg_uart_txpin ;
 int hi_desired_baud_rate ;
 int hi_serial_enable ;
 int uart_print ;

__attribute__((used)) static int ath10k_init_uart(struct ath10k *ar)
{
 int ret;





 ret = ath10k_bmi_write32(ar, hi_serial_enable, 0);
 if (ret) {
  ath10k_warn(ar, "could not disable UART prints (%d)\n", ret);
  return ret;
 }

 if (!uart_print) {
  if (ar->hw_params.uart_pin_workaround) {
   ret = ath10k_bmi_write32(ar, hi_dbg_uart_txpin,
       ar->hw_params.uart_pin);
   if (ret) {
    ath10k_warn(ar, "failed to set UART TX pin: %d",
         ret);
    return ret;
   }
  }

  return 0;
 }

 ret = ath10k_bmi_write32(ar, hi_dbg_uart_txpin, ar->hw_params.uart_pin);
 if (ret) {
  ath10k_warn(ar, "could not enable UART prints (%d)\n", ret);
  return ret;
 }

 ret = ath10k_bmi_write32(ar, hi_serial_enable, 1);
 if (ret) {
  ath10k_warn(ar, "could not enable UART prints (%d)\n", ret);
  return ret;
 }


 ret = ath10k_bmi_write32(ar, hi_desired_baud_rate, 19200);
 if (ret) {
  ath10k_warn(ar, "could not set the baud rate (%d)\n", ret);
  return ret;
 }

 ath10k_info(ar, "UART prints enabled\n");
 return 0;
}
