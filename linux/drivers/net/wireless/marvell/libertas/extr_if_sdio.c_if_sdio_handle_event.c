
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct if_sdio_card {scalar_t__ model; int priv; int func; } ;


 int EINVAL ;
 int IF_SDIO_EVENT ;
 scalar_t__ MODEL_8385 ;
 int lbs_deb_sdio (char*,int) ;
 int lbs_queue_event (int ,int) ;
 int sdio_readb (int ,int ,int*) ;

__attribute__((used)) static int if_sdio_handle_event(struct if_sdio_card *card,
  u8 *buffer, unsigned size)
{
 int ret;
 u32 event;

 if (card->model == MODEL_8385) {
  event = sdio_readb(card->func, IF_SDIO_EVENT, &ret);
  if (ret)
   goto out;


  event >>= 3;
 } else {
  if (size < 4) {
   lbs_deb_sdio("event packet too small (%d bytes)\n",
    (int)size);
   ret = -EINVAL;
   goto out;
  }
  event = buffer[3] << 24;
  event |= buffer[2] << 16;
  event |= buffer[1] << 8;
  event |= buffer[0] << 0;
 }

 lbs_queue_event(card->priv, event & 0xFF);
 ret = 0;

out:
 return ret;
}
