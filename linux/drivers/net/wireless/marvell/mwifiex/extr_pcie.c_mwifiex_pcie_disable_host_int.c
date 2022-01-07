
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int tx_hw_pending; } ;


 int ERROR ;
 int PCIE_HOST_INT_MASK ;
 int atomic_set (int *,int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 scalar_t__ mwifiex_pcie_ok_to_access_hw (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int) ;

__attribute__((used)) static int mwifiex_pcie_disable_host_int(struct mwifiex_adapter *adapter)
{
 if (mwifiex_pcie_ok_to_access_hw(adapter)) {
  if (mwifiex_write_reg(adapter, PCIE_HOST_INT_MASK,
          0x00000000)) {
   mwifiex_dbg(adapter, ERROR,
        "Disable host interrupt failed\n");
   return -1;
  }
 }

 atomic_set(&adapter->tx_hw_pending, 0);
 return 0;
}
