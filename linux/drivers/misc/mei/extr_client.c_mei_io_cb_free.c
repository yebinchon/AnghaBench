
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mei_cl_cb* data; } ;
struct mei_cl_cb {TYPE_1__ buf; int list; } ;


 int kfree (struct mei_cl_cb*) ;
 int list_del (int *) ;

void mei_io_cb_free(struct mei_cl_cb *cb)
{
 if (cb == ((void*)0))
  return;

 list_del(&cb->list);
 kfree(cb->buf.data);
 kfree(cb);
}
