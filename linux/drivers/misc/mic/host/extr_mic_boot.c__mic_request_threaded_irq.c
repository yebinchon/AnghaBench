
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_irq {int dummy; } ;
struct mbus_device {int dummy; } ;
typedef int irq_handler_t ;


 int MIC_INTR_DMA ;
 int mbdev_to_mdev (struct mbus_device*) ;
 struct mic_irq* mic_request_threaded_irq (int ,int ,int ,char const*,void*,int,int ) ;

__attribute__((used)) static struct mic_irq *
_mic_request_threaded_irq(struct mbus_device *mbdev,
     irq_handler_t handler, irq_handler_t thread_fn,
     const char *name, void *data, int intr_src)
{
 return mic_request_threaded_irq(mbdev_to_mdev(mbdev), handler,
     thread_fn, name, data,
     intr_src, MIC_INTR_DMA);
}
