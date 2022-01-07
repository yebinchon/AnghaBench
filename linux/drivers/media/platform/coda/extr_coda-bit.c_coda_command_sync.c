
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_dev {int coda_mutex; } ;
struct coda_ctx {struct coda_dev* dev; } ;


 int coda_command_async (struct coda_ctx*,int) ;
 int coda_wait_timeout (struct coda_dev*) ;
 int lockdep_assert_held (int *) ;
 int trace_coda_bit_done (struct coda_ctx*) ;

__attribute__((used)) static int coda_command_sync(struct coda_ctx *ctx, int cmd)
{
 struct coda_dev *dev = ctx->dev;
 int ret;

 lockdep_assert_held(&dev->coda_mutex);

 coda_command_async(ctx, cmd);
 ret = coda_wait_timeout(dev);
 trace_coda_bit_done(ctx);

 return ret;
}
