
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {scalar_t__ mc_type; } ;


 scalar_t__ MC_NONE ;

__attribute__((used)) static inline bool be_is_mc(struct be_adapter *adapter)
{
 return adapter->mc_type > MC_NONE;
}
