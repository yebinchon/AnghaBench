
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int mapping_lock; struct address_space* mapping; } ;
struct address_space {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cxl_context_set_mapping(struct cxl_context *ctx,
   struct address_space *mapping)
{
 mutex_lock(&ctx->mapping_lock);
 ctx->mapping = mapping;
 mutex_unlock(&ctx->mapping_lock);
}
