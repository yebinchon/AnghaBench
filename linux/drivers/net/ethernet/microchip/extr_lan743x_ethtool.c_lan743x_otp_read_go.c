
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_adapter {int dummy; } ;


 int OTP_CMD_GO ;
 int OTP_CMD_GO_GO_ ;
 int OTP_FUNC_CMD ;
 int OTP_FUNC_CMD_READ_ ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;

__attribute__((used)) static void lan743x_otp_read_go(struct lan743x_adapter *adapter)
{
 lan743x_csr_write(adapter, OTP_FUNC_CMD, OTP_FUNC_CMD_READ_);
 lan743x_csr_write(adapter, OTP_CMD_GO, OTP_CMD_GO_GO_);
}
