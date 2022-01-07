
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int dummy; } ;


 int WARN_ON (int ) ;
 int mwifiex_pcie_disable_host_int (struct mwifiex_adapter*) ;

__attribute__((used)) static void mwifiex_pcie_disable_host_int_noerr(struct mwifiex_adapter *adapter)
{
 WARN_ON(mwifiex_pcie_disable_host_int(adapter));
}
