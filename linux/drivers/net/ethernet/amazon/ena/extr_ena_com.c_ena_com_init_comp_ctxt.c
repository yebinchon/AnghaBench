
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ena_comp_ctx {int wait_event; } ;
struct ena_com_admin_queue {int q_depth; int comp_ctx; int q_dmadev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kzalloc (int ,size_t,int ) ;
 struct ena_comp_ctx* get_comp_ctxt (struct ena_com_admin_queue*,scalar_t__,int) ;
 int init_completion (int *) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_init_comp_ctxt(struct ena_com_admin_queue *queue)
{
 size_t size = queue->q_depth * sizeof(struct ena_comp_ctx);
 struct ena_comp_ctx *comp_ctx;
 u16 i;

 queue->comp_ctx = devm_kzalloc(queue->q_dmadev, size, GFP_KERNEL);
 if (unlikely(!queue->comp_ctx)) {
  pr_err("memory allocation failed\n");
  return -ENOMEM;
 }

 for (i = 0; i < queue->q_depth; i++) {
  comp_ctx = get_comp_ctxt(queue, i, 0);
  if (comp_ctx)
   init_completion(&comp_ctx->wait_event);
 }

 return 0;
}
