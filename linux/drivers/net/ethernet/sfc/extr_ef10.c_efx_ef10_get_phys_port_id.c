
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_phys_item_id {int id_len; int id; } ;
struct efx_nic {struct efx_ef10_nic_data* nic_data; } ;
struct efx_ef10_nic_data {int port_id; } ;


 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int efx_ef10_get_phys_port_id(struct efx_nic *efx,
         struct netdev_phys_item_id *ppid)
{
 struct efx_ef10_nic_data *nic_data = efx->nic_data;

 if (!is_valid_ether_addr(nic_data->port_id))
  return -EOPNOTSUPP;

 ppid->id_len = ETH_ALEN;
 memcpy(ppid->id, nic_data->port_id, ppid->id_len);

 return 0;
}
