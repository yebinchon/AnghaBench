
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int if_flags; } ;


 int BE_IF_FLAGS_ALL_PROMISCUOUS ;
 int ON ;
 int be_cmd_rx_filter (struct be_adapter*,int ,int ) ;

__attribute__((used)) static void be_set_all_promisc(struct be_adapter *adapter)
{
 be_cmd_rx_filter(adapter, BE_IF_FLAGS_ALL_PROMISCUOUS, ON);
 adapter->if_flags |= BE_IF_FLAGS_ALL_PROMISCUOUS;
}
