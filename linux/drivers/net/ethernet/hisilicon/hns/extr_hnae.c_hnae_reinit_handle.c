
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae_handle {int q_num; int * qs; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* reset ) (struct hnae_handle*) ;} ;


 int hnae_fini_queue (int ) ;
 int hnae_init_queue (struct hnae_handle*,int ,TYPE_2__*) ;
 int stub1 (struct hnae_handle*) ;

int hnae_reinit_handle(struct hnae_handle *handle)
{
 int i, j;
 int ret;

 for (i = 0; i < handle->q_num; i++)
  hnae_fini_queue(handle->qs[i]);

 if (handle->dev->ops->reset)
  handle->dev->ops->reset(handle);

 for (i = 0; i < handle->q_num; i++) {
  ret = hnae_init_queue(handle, handle->qs[i], handle->dev);
  if (ret)
   goto out_when_init_queue;
 }
 return 0;
out_when_init_queue:
 for (j = i - 1; j >= 0; j--)
  hnae_fini_queue(handle->qs[j]);
 return ret;
}
