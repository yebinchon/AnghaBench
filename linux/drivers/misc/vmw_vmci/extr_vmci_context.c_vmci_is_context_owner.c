
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vmci_ctx {TYPE_1__* cred; } ;
typedef int kuid_t ;
struct TYPE_2__ {int uid; } ;


 int uid_eq (int ,int ) ;
 struct vmci_ctx* vmci_ctx_get (int ) ;
 int vmci_ctx_put (struct vmci_ctx*) ;
 scalar_t__ vmci_host_code_active () ;

bool vmci_is_context_owner(u32 context_id, kuid_t uid)
{
 bool is_owner = 0;

 if (vmci_host_code_active()) {
  struct vmci_ctx *context = vmci_ctx_get(context_id);
  if (context) {
   if (context->cred)
    is_owner = uid_eq(context->cred->uid, uid);
   vmci_ctx_put(context);
  }
 }

 return is_owner;
}
