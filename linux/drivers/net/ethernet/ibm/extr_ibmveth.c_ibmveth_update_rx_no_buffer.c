
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmveth_adapter {int rx_no_buffer; int * buffer_list_addr; } ;
typedef int __be64 ;


 int be64_to_cpup (int *) ;

__attribute__((used)) static void ibmveth_update_rx_no_buffer(struct ibmveth_adapter *adapter)
{
 __be64 *p = adapter->buffer_list_addr + 4096 - 8;

 adapter->rx_no_buffer = be64_to_cpup(p);
}
