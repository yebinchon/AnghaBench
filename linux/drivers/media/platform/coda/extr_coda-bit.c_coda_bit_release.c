
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_ctx {int buffer_mutex; } ;


 int coda_free_bitstream_buffer (struct coda_ctx*) ;
 int coda_free_context_buffers (struct coda_ctx*) ;
 int coda_free_framebuffers (struct coda_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void coda_bit_release(struct coda_ctx *ctx)
{
 mutex_lock(&ctx->buffer_mutex);
 coda_free_framebuffers(ctx);
 coda_free_context_buffers(ctx);
 coda_free_bitstream_buffer(ctx);
 mutex_unlock(&ctx->buffer_mutex);
}
