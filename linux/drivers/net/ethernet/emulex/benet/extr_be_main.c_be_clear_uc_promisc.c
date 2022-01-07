
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int if_flags; } ;


 int BE_IF_FLAGS_PROMISCUOUS ;
 int OFF ;
 int be_cmd_rx_filter (struct be_adapter*,int,int ) ;

__attribute__((used)) static void be_clear_uc_promisc(struct be_adapter *adapter)
{
 int status;

 if (!(adapter->if_flags & BE_IF_FLAGS_PROMISCUOUS))
  return;

 status = be_cmd_rx_filter(adapter, BE_IF_FLAGS_PROMISCUOUS, OFF);
 if (!status)
  adapter->if_flags &= ~BE_IF_FLAGS_PROMISCUOUS;
}
