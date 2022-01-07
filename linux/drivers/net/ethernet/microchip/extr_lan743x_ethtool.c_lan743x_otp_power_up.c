
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int OTP_PWR_DN ;
 int OTP_PWR_DN_PWRDN_N_ ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lan743x_otp_power_up(struct lan743x_adapter *adapter)
{
 u32 reg_value;

 reg_value = lan743x_csr_read(adapter, OTP_PWR_DN);

 if (reg_value & OTP_PWR_DN_PWRDN_N_) {

  reg_value &= ~OTP_PWR_DN_PWRDN_N_;
  lan743x_csr_write(adapter, OTP_PWR_DN, reg_value);

  usleep_range(100, 20000);
 }

 return 0;
}
