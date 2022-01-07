
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int num_rx_qs; } ;



__attribute__((used)) static inline bool be_multi_rxq(const struct be_adapter *adapter)
{
 return adapter->num_rx_qs > 1;
}
