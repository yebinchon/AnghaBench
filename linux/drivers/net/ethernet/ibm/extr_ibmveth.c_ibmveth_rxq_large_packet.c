
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmveth_adapter {int dummy; } ;


 int IBMVETH_RXQ_LRG_PKT ;
 int ibmveth_rxq_flags (struct ibmveth_adapter*) ;

__attribute__((used)) static inline int ibmveth_rxq_large_packet(struct ibmveth_adapter *adapter)
{
 return ibmveth_rxq_flags(adapter) & IBMVETH_RXQ_LRG_PKT;
}
