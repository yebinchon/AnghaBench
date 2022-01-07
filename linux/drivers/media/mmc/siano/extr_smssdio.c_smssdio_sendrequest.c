
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct smssdio_device {TYPE_1__* func; } ;
struct sms_msg_data {int dummy; } ;
struct TYPE_4__ {size_t cur_blksize; } ;


 int SMSSDIO_DATA ;
 int sdio_claim_host (TYPE_1__*) ;
 int sdio_memcpy_toio (TYPE_1__*,int ,void*,size_t) ;
 int sdio_release_host (TYPE_1__*) ;
 int smsendian_handle_tx_message (struct sms_msg_data*) ;

__attribute__((used)) static int smssdio_sendrequest(void *context, void *buffer, size_t size)
{
 int ret = 0;
 struct smssdio_device *smsdev;

 smsdev = context;

 sdio_claim_host(smsdev->func);

 smsendian_handle_tx_message((struct sms_msg_data *) buffer);
 while (size >= smsdev->func->cur_blksize) {
  ret = sdio_memcpy_toio(smsdev->func, SMSSDIO_DATA,
     buffer, smsdev->func->cur_blksize);
  if (ret)
   goto out;

  buffer += smsdev->func->cur_blksize;
  size -= smsdev->func->cur_blksize;
 }

 if (size) {
  ret = sdio_memcpy_toio(smsdev->func, SMSSDIO_DATA,
     buffer, size);
 }

out:
 sdio_release_host(smsdev->func);

 return ret;
}
