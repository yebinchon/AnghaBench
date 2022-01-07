
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct lan743x_adapter {int dummy; } ;


 int EINVAL ;
 scalar_t__ MAX_OTP_SIZE ;
 int OTP_READ_DATA ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_otp_power_down (struct lan743x_adapter*) ;
 int lan743x_otp_power_up (struct lan743x_adapter*) ;
 int lan743x_otp_read_go (struct lan743x_adapter*) ;
 int lan743x_otp_set_address (struct lan743x_adapter*,scalar_t__) ;
 int lan743x_otp_wait_till_not_busy (struct lan743x_adapter*) ;

__attribute__((used)) static int lan743x_otp_read(struct lan743x_adapter *adapter, u32 offset,
       u32 length, u8 *data)
{
 int ret;
 int i;

 if (offset + length > MAX_OTP_SIZE)
  return -EINVAL;

 ret = lan743x_otp_power_up(adapter);
 if (ret < 0)
  return ret;

 ret = lan743x_otp_wait_till_not_busy(adapter);
 if (ret < 0)
  return ret;

 for (i = 0; i < length; i++) {
  lan743x_otp_set_address(adapter, offset + i);

  lan743x_otp_read_go(adapter);
  ret = lan743x_otp_wait_till_not_busy(adapter);
  if (ret < 0)
   return ret;
  data[i] = lan743x_csr_read(adapter, OTP_READ_DATA);
 }

 lan743x_otp_power_down(adapter);

 return 0;
}
