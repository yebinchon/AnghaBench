
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_dev {int coda_mutex; } ;
struct coda_ctx {struct coda_dev* dev; } ;


 int __coda_start_decoding (struct coda_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int coda_start_decoding(struct coda_ctx *ctx)
{
 struct coda_dev *dev = ctx->dev;
 int ret;

 mutex_lock(&dev->coda_mutex);
 ret = __coda_start_decoding(ctx);
 mutex_unlock(&dev->coda_mutex);

 return ret;
}
