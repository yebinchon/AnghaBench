
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vmci_qp_page_store {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct vmci_ctx {int dummy; } ;


 int qp_broker_alloc (struct vmci_handle,int ,int ,int ,int ,int ,struct vmci_qp_page_store*,struct vmci_ctx*,int *,int *,int *,int *) ;

int vmci_qp_broker_alloc(struct vmci_handle handle,
    u32 peer,
    u32 flags,
    u32 priv_flags,
    u64 produce_size,
    u64 consume_size,
    struct vmci_qp_page_store *page_store,
    struct vmci_ctx *context)
{
 return qp_broker_alloc(handle, peer, flags, priv_flags,
          produce_size, consume_size,
          page_store, context, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
