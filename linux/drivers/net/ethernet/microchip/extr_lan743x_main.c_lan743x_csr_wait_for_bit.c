
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int LAN743X_CSR_READ_OP ;
 int readx_poll_timeout (int ,int,int,int,int,int) ;

__attribute__((used)) static int lan743x_csr_wait_for_bit(struct lan743x_adapter *adapter,
        int offset, u32 bit_mask,
        int target_value, int usleep_min,
        int usleep_max, int count)
{
 u32 data;

 return readx_poll_timeout(LAN743X_CSR_READ_OP, offset, data,
      target_value == ((data & bit_mask) ? 1 : 0),
      usleep_max, usleep_min * count);
}
