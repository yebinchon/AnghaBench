
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_context {int pasid; scalar_t__ tidr; int irq_idr; int irq_lock; int xsl_error_lock; int events_wq; int mapping_lock; struct address_space* mapping; int status_mutex; int status; struct ocxl_afu* afu; } ;
struct ocxl_afu {int contexts_lock; int pasid_count; scalar_t__ pasid_max; scalar_t__ pasid_base; int contexts_idr; } ;
struct address_space {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int OPENED ;
 int idr_alloc (int *,struct ocxl_context*,scalar_t__,scalar_t__,int ) ;
 int idr_init (int *) ;
 int init_waitqueue_head (int *) ;
 struct ocxl_context* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocxl_afu_get (struct ocxl_afu*) ;

int ocxl_context_alloc(struct ocxl_context **context, struct ocxl_afu *afu,
  struct address_space *mapping)
{
 int pasid;
 struct ocxl_context *ctx;

 *context = kzalloc(sizeof(struct ocxl_context), GFP_KERNEL);
 if (!*context)
  return -ENOMEM;

 ctx = *context;

 ctx->afu = afu;
 mutex_lock(&afu->contexts_lock);
 pasid = idr_alloc(&afu->contexts_idr, ctx, afu->pasid_base,
   afu->pasid_base + afu->pasid_max, GFP_KERNEL);
 if (pasid < 0) {
  mutex_unlock(&afu->contexts_lock);
  return pasid;
 }
 afu->pasid_count++;
 mutex_unlock(&afu->contexts_lock);

 ctx->pasid = pasid;
 ctx->status = OPENED;
 mutex_init(&ctx->status_mutex);
 ctx->mapping = mapping;
 mutex_init(&ctx->mapping_lock);
 init_waitqueue_head(&ctx->events_wq);
 mutex_init(&ctx->xsl_error_lock);
 mutex_init(&ctx->irq_lock);
 idr_init(&ctx->irq_idr);
 ctx->tidr = 0;





 ocxl_afu_get(afu);
 return 0;
}
