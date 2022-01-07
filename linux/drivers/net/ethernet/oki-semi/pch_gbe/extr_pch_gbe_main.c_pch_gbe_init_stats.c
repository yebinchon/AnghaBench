
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int stats; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void pch_gbe_init_stats(struct pch_gbe_adapter *adapter)
{
 memset(&adapter->stats, 0, sizeof(adapter->stats));
 return;
}
