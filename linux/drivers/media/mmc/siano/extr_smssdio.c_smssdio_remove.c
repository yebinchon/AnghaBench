
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smssdio_device {int coredev; scalar_t__ split_cb; } ;
struct sdio_func {int dummy; } ;


 int kfree (struct smssdio_device*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 struct smssdio_device* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_release_irq (struct sdio_func*) ;
 int smscore_putbuffer (int ,scalar_t__) ;
 int smscore_unregister_device (int ) ;

__attribute__((used)) static void smssdio_remove(struct sdio_func *func)
{
 struct smssdio_device *smsdev;

 smsdev = sdio_get_drvdata(func);


 if (smsdev->split_cb)
  smscore_putbuffer(smsdev->coredev, smsdev->split_cb);

 smscore_unregister_device(smsdev->coredev);

 sdio_claim_host(func);
 sdio_release_irq(func);
 sdio_disable_func(func);
 sdio_release_host(func);

 kfree(smsdev);
}
