
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_ctx {int cid; } ;


 int VMCI_INVALID_ID ;

__attribute__((used)) static inline u32 vmci_ctx_get_id(struct vmci_ctx *context)
{
 if (!context)
  return VMCI_INVALID_ID;
 return context->cid;
}
