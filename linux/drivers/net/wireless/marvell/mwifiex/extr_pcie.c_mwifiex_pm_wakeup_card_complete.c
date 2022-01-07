
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int dummy; } ;


 int CMD ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;

__attribute__((used)) static int mwifiex_pm_wakeup_card_complete(struct mwifiex_adapter *adapter)
{
 mwifiex_dbg(adapter, CMD,
      "cmd: Wakeup device completed\n");

 return 0;
}
