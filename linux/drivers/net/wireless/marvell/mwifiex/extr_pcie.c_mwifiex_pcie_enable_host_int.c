
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int dummy; } ;


 int ERROR ;
 int HOST_INTR_MASK ;
 int PCIE_HOST_INT_MASK ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 scalar_t__ mwifiex_pcie_ok_to_access_hw (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int ) ;

__attribute__((used)) static int mwifiex_pcie_enable_host_int(struct mwifiex_adapter *adapter)
{
 if (mwifiex_pcie_ok_to_access_hw(adapter)) {

  if (mwifiex_write_reg(adapter, PCIE_HOST_INT_MASK,
          HOST_INTR_MASK)) {
   mwifiex_dbg(adapter, ERROR,
        "Enable host interrupt failed\n");
   return -1;
  }
 }

 return 0;
}
