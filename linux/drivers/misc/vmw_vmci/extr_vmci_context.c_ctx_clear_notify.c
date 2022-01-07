
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_ctx {int* notify; } ;



__attribute__((used)) static void ctx_clear_notify(struct vmci_ctx *context)
{
 *context->notify = 0;
}
