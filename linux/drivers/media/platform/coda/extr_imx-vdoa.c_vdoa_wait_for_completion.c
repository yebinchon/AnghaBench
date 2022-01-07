
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdoa_data {int dev; } ;
struct vdoa_ctx {scalar_t__ submitted_job; scalar_t__ completed_job; int completion; struct vdoa_data* vdoa; } ;


 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int wait_for_completion_timeout (int *,int ) ;

int vdoa_wait_for_completion(struct vdoa_ctx *ctx)
{
 struct vdoa_data *vdoa = ctx->vdoa;

 if (ctx->submitted_job == ctx->completed_job)
  return 0;

 if (!wait_for_completion_timeout(&ctx->completion,
      msecs_to_jiffies(300))) {
  dev_err(vdoa->dev,
   "Timeout waiting for transfer result\n");
  return -ETIMEDOUT;
 }

 return 0;
}
