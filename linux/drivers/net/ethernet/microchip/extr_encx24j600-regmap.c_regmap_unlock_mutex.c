
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_context {int mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void regmap_unlock_mutex(void *context)
{
 struct encx24j600_context *ctx = context;

 mutex_unlock(&ctx->mutex);
}
