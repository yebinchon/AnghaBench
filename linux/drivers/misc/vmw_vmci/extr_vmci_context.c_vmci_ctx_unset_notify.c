
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_ctx {int lock; struct page* notify_page; int * notify; } ;
struct page {int dummy; } ;


 int ctx_dummy_notify ;
 int kunmap (struct page*) ;
 int put_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void vmci_ctx_unset_notify(struct vmci_ctx *context)
{
 struct page *notify_page;

 spin_lock(&context->lock);

 notify_page = context->notify_page;
 context->notify = &ctx_dummy_notify;
 context->notify_page = ((void*)0);

 spin_unlock(&context->lock);

 if (notify_page) {
  kunmap(notify_page);
  put_page(notify_page);
 }
}
