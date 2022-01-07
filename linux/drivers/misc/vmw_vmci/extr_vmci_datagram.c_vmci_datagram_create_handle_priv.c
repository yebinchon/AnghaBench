
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vmci_datagram_recv_cb ;
typedef int u32 ;
struct vmci_handle {int dummy; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_PRIVILEGE_ALL_FLAGS ;
 int dg_create_handle (int,int,int,int *,void*,struct vmci_handle*) ;
 int pr_devel (char*) ;

int vmci_datagram_create_handle_priv(u32 resource_id,
         u32 flags,
         u32 priv_flags,
         vmci_datagram_recv_cb recv_cb,
         void *client_data,
         struct vmci_handle *out_handle)
{
 if (out_handle == ((void*)0))
  return VMCI_ERROR_INVALID_ARGS;

 if (recv_cb == ((void*)0)) {
  pr_devel("Client callback needed when creating datagram\n");
  return VMCI_ERROR_INVALID_ARGS;
 }

 if (priv_flags & ~VMCI_PRIVILEGE_ALL_FLAGS)
  return VMCI_ERROR_INVALID_ARGS;

 return dg_create_handle(resource_id, flags, priv_flags, recv_cb,
    client_data, out_handle);
}
