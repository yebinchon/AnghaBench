
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hl_fpriv {struct hl_device* hdev; } ;
struct hl_device {TYPE_3__* asic_funcs; } ;
struct hl_cs_parser {int patched_cb_size; TYPE_4__* patched_cb; scalar_t__ ext_queue; int user_cb_size; TYPE_5__* user_cb; int * job_userptr_list; int hw_queue_id; int job_id; int cs_sequence; int ctx_id; } ;
struct hl_cs_job {TYPE_5__* user_cb; TYPE_4__* patched_cb; int job_cb_size; scalar_t__ ext_queue; int user_cb_size; int userptr_list; int hw_queue_id; int id; TYPE_2__* cs; } ;
struct TYPE_10__ {int lock; int cs_cnt; } ;
struct TYPE_9__ {int lock; int cs_cnt; } ;
struct TYPE_8__ {int (* cs_parser ) (struct hl_device*,struct hl_cs_parser*) ;} ;
struct TYPE_7__ {int sequence; TYPE_1__* ctx; } ;
struct TYPE_6__ {int asid; } ;


 int hl_cb_put (TYPE_5__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct hl_device*,struct hl_cs_parser*) ;

__attribute__((used)) static int cs_parser(struct hl_fpriv *hpriv, struct hl_cs_job *job)
{
 struct hl_device *hdev = hpriv->hdev;
 struct hl_cs_parser parser;
 int rc;

 parser.ctx_id = job->cs->ctx->asid;
 parser.cs_sequence = job->cs->sequence;
 parser.job_id = job->id;

 parser.hw_queue_id = job->hw_queue_id;
 parser.job_userptr_list = &job->userptr_list;
 parser.patched_cb = ((void*)0);
 parser.user_cb = job->user_cb;
 parser.user_cb_size = job->user_cb_size;
 parser.ext_queue = job->ext_queue;
 job->patched_cb = ((void*)0);

 rc = hdev->asic_funcs->cs_parser(hdev, &parser);
 if (job->ext_queue) {
  if (!rc) {
   job->patched_cb = parser.patched_cb;
   job->job_cb_size = parser.patched_cb_size;

   spin_lock(&job->patched_cb->lock);
   job->patched_cb->cs_cnt++;
   spin_unlock(&job->patched_cb->lock);
  }






  spin_lock(&job->user_cb->lock);
  job->user_cb->cs_cnt--;
  spin_unlock(&job->user_cb->lock);
  hl_cb_put(job->user_cb);
  job->user_cb = ((void*)0);
 }

 return rc;
}
