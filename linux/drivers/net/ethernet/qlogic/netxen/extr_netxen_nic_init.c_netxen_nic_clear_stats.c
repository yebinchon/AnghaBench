
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int stats; } ;


 int memset (int *,int ,int) ;

void netxen_nic_clear_stats(struct netxen_adapter *adapter)
{
 memset(&adapter->stats, 0, sizeof(adapter->stats));
}
