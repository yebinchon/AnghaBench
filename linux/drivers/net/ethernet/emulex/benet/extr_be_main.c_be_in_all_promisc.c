
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int if_flags; } ;


 int BE_IF_FLAGS_ALL_PROMISCUOUS ;

__attribute__((used)) static inline bool be_in_all_promisc(struct be_adapter *adapter)
{
 return (adapter->if_flags & BE_IF_FLAGS_ALL_PROMISCUOUS) ==
   BE_IF_FLAGS_ALL_PROMISCUOUS;
}
