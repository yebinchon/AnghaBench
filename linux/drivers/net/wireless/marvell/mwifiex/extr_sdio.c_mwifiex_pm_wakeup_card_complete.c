
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int dummy; } ;


 int CONFIGURATION_REG ;
 int EVENT ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_write_reg (struct mwifiex_adapter*,int ,int ) ;

__attribute__((used)) static int mwifiex_pm_wakeup_card_complete(struct mwifiex_adapter *adapter)
{
 mwifiex_dbg(adapter, EVENT,
      "cmd: wakeup device completed\n");

 return mwifiex_write_reg(adapter, CONFIGURATION_REG, 0);
}
