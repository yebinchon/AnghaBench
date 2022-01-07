
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct file {struct cxl_context* private_data; } ;
struct cxl_context {scalar_t__ status; TYPE_1__* afu; } ;
struct TYPE_4__ {int (* link_ok ) (int ,TYPE_1__*) ;} ;
struct TYPE_3__ {int adapter; } ;


 int EIO ;
 scalar_t__ STARTED ;
 int cxl_context_iomap (struct cxl_context*,struct vm_area_struct*) ;
 TYPE_2__* cxl_ops ;
 int stub1 (int ,TYPE_1__*) ;

int afu_mmap(struct file *file, struct vm_area_struct *vm)
{
 struct cxl_context *ctx = file->private_data;


 if (ctx->status != STARTED)
  return -EIO;

 if (!cxl_ops->link_ok(ctx->afu->adapter, ctx->afu))
  return -EIO;

 return cxl_context_iomap(ctx, vm);
}
