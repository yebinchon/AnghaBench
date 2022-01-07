
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scif_cb_arg {int src_dma_addr; int status; TYPE_2__* ep; } ;
struct TYPE_4__ {TYPE_1__* remote_dev; } ;
struct TYPE_3__ {int signal_pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct scif_cb_arg*) ;

__attribute__((used)) static void scif_prog_signal_cb(void *arg)
{
 struct scif_cb_arg *cb_arg = arg;

 dma_pool_free(cb_arg->ep->remote_dev->signal_pool, cb_arg->status,
        cb_arg->src_dma_addr);
 kfree(cb_arg);
}
