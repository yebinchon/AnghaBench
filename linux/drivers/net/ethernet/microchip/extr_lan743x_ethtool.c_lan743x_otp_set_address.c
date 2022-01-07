
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int OTP_ADDR_HIGH ;
 int OTP_ADDR_LOW ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;

__attribute__((used)) static void lan743x_otp_set_address(struct lan743x_adapter *adapter,
        u32 address)
{
 lan743x_csr_write(adapter, OTP_ADDR_HIGH, (address >> 8) & 0x03);
 lan743x_csr_write(adapter, OTP_ADDR_LOW, address & 0xFF);
}
