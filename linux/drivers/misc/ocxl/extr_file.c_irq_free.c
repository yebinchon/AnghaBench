
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventfd_ctx {int dummy; } ;


 int eventfd_ctx_put (struct eventfd_ctx*) ;

__attribute__((used)) static void irq_free(void *private)
{
 struct eventfd_ctx *ev_ctx = private;

 eventfd_ctx_put(ev_ctx);
}
