
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int HW_CFG ;
 int HW_CFG_LRST_ ;
 int LAN743X_CSR_READ_OP ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;
 int readx_poll_timeout (int ,int ,int,int,int,int) ;

__attribute__((used)) static int lan743x_csr_light_reset(struct lan743x_adapter *adapter)
{
 u32 data;

 data = lan743x_csr_read(adapter, HW_CFG);
 data |= HW_CFG_LRST_;
 lan743x_csr_write(adapter, HW_CFG, data);

 return readx_poll_timeout(LAN743X_CSR_READ_OP, HW_CFG, data,
      !(data & HW_CFG_LRST_), 100000, 10000000);
}
