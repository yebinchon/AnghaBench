
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int netdev; } ;


 int E2P_CMD ;
 int E2P_CMD_EPC_BUSY_ ;
 int E2P_CMD_EPC_TIMEOUT_ ;
 int EIO ;
 scalar_t__ HZ ;
 int drv ;
 unsigned long jiffies ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int netif_warn (struct lan743x_adapter*,int ,int ,char*) ;
 int time_after (unsigned long,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lan743x_eeprom_wait(struct lan743x_adapter *adapter)
{
 unsigned long start_time = jiffies;
 u32 val;

 do {
  val = lan743x_csr_read(adapter, E2P_CMD);

  if (!(val & E2P_CMD_EPC_BUSY_) ||
      (val & E2P_CMD_EPC_TIMEOUT_))
   break;
  usleep_range(40, 100);
 } while (!time_after(jiffies, start_time + HZ));

 if (val & (E2P_CMD_EPC_TIMEOUT_ | E2P_CMD_EPC_BUSY_)) {
  netif_warn(adapter, drv, adapter->netdev,
      "EEPROM read operation timeout\n");
  return -EIO;
 }

 return 0;
}
