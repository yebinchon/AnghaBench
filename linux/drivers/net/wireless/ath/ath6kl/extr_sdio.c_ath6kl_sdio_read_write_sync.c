
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath6kl_sdio {int dma_buffer_mutex; int func; int * dma_buffer; } ;
struct ath6kl {int dummy; } ;


 int ENOMEM ;
 int HIF_BLOCK_BASIS ;
 int HIF_MBOX_BLOCK_SIZE ;
 int HIF_READ ;
 int HIF_WRITE ;
 int ath6kl_sdio_io (int ,int,int,int *,int) ;
 struct ath6kl_sdio* ath6kl_sdio_priv (struct ath6kl*) ;
 scalar_t__ buf_needs_bounce (int *) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int round_down (int,int ) ;

__attribute__((used)) static int ath6kl_sdio_read_write_sync(struct ath6kl *ar, u32 addr, u8 *buf,
           u32 len, u32 request)
{
 struct ath6kl_sdio *ar_sdio = ath6kl_sdio_priv(ar);
 u8 *tbuf = ((void*)0);
 int ret;
 bool bounced = 0;

 if (request & HIF_BLOCK_BASIS)
  len = round_down(len, HIF_MBOX_BLOCK_SIZE);

 if (buf_needs_bounce(buf)) {
  if (!ar_sdio->dma_buffer)
   return -ENOMEM;
  mutex_lock(&ar_sdio->dma_buffer_mutex);
  tbuf = ar_sdio->dma_buffer;

  if (request & HIF_WRITE)
   memcpy(tbuf, buf, len);

  bounced = 1;
 } else {
  tbuf = buf;
 }

 ret = ath6kl_sdio_io(ar_sdio->func, request, addr, tbuf, len);
 if ((request & HIF_READ) && bounced)
  memcpy(buf, tbuf, len);

 if (bounced)
  mutex_unlock(&ar_sdio->dma_buffer_mutex);

 return ret;
}
