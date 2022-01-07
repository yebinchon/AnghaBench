
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int LAN743X_CSR_READ_OP ;
 int MAC_MII_ACC ;
 int MAC_MII_ACC_MII_BUSY_ ;
 int readx_poll_timeout (int ,int ,int,int,int ,int) ;

__attribute__((used)) static int lan743x_mac_mii_wait_till_not_busy(struct lan743x_adapter *adapter)
{
 u32 data;

 return readx_poll_timeout(LAN743X_CSR_READ_OP, MAC_MII_ACC, data,
      !(data & MAC_MII_ACC_MII_BUSY_), 0, 1000000);
}
