
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int dummy; } ;


 scalar_t__ mwifiex_pcie_ok_to_access_hw (struct mwifiex_adapter*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mwifiex_pcie_dev_wakeup_delay(struct mwifiex_adapter *adapter)
{
 int i = 0;

 while (mwifiex_pcie_ok_to_access_hw(adapter)) {
  i++;
  usleep_range(10, 20);

  if (i == 5000)
   break;
 }

 return;
}
