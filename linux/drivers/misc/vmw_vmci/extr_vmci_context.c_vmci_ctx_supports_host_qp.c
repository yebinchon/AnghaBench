
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_ctx {scalar_t__ user_version; } ;


 scalar_t__ VMCI_VERSION_HOSTQP ;

bool vmci_ctx_supports_host_qp(struct vmci_ctx *context)
{
 return context && context->user_version >= VMCI_VERSION_HOSTQP;
}
