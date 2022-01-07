
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_adapter {int dummy; } ;


 int release_login_rsp_buffer (struct ibmvnic_adapter*) ;
 int release_napi (struct ibmvnic_adapter*) ;
 int release_rx_pools (struct ibmvnic_adapter*) ;
 int release_tx_pools (struct ibmvnic_adapter*) ;
 int release_vpd_data (struct ibmvnic_adapter*) ;

__attribute__((used)) static void release_resources(struct ibmvnic_adapter *adapter)
{
 release_vpd_data(adapter);

 release_tx_pools(adapter);
 release_rx_pools(adapter);

 release_napi(adapter);
 release_login_rsp_buffer(adapter);
}
