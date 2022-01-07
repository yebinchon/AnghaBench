
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_datagram_recv_cb ;
typedef int u32 ;
struct vmci_handle {int dummy; } ;


 int VMCI_DEFAULT_PROC_PRIVILEGE_FLAGS ;
 int vmci_datagram_create_handle_priv (int ,int ,int ,int ,void*,struct vmci_handle*) ;

int vmci_datagram_create_handle(u32 resource_id,
    u32 flags,
    vmci_datagram_recv_cb recv_cb,
    void *client_data,
    struct vmci_handle *out_handle)
{
 return vmci_datagram_create_handle_priv(
  resource_id, flags,
  VMCI_DEFAULT_PROC_PRIVILEGE_FLAGS,
  recv_cb, client_data,
  out_handle);
}
