
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_cl_cb {TYPE_1__* cl; } ;
struct TYPE_2__ {scalar_t__ tx_cb_queued; } ;


 int WARN_ON (int) ;
 int mei_io_cb_free (struct mei_cl_cb*) ;

__attribute__((used)) static inline void mei_tx_cb_dequeue(struct mei_cl_cb *cb)
{
 if (!WARN_ON(cb->cl->tx_cb_queued == 0))
  cb->cl->tx_cb_queued--;

 mei_io_cb_free(cb);
}
