
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ngene {TYPE_2__* pci_dev; scalar_t__ msi_enabled; TYPE_1__* channel; int cmd_mutex; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int i2c_adapter; } ;


 int NGENE_COMMAND ;
 int NGENE_COMMAND_HI ;
 int NGENE_EVENT ;
 int NGENE_EVENT_HI ;
 int NGENE_INT_ENABLE ;
 int NGENE_STATUS ;
 int NGENE_STATUS_HI ;
 int free_irq (int ,struct ngene*) ;
 int i2c_del_adapter (int *) ;
 int mutex_destroy (int *) ;
 int ngwritel (int ,int ) ;
 int pci_disable_msi (TYPE_2__*) ;

__attribute__((used)) static void ngene_stop(struct ngene *dev)
{
 mutex_destroy(&dev->cmd_mutex);
 i2c_del_adapter(&(dev->channel[0].i2c_adapter));
 i2c_del_adapter(&(dev->channel[1].i2c_adapter));
 ngwritel(0, NGENE_INT_ENABLE);
 ngwritel(0, NGENE_COMMAND);
 ngwritel(0, NGENE_COMMAND_HI);
 ngwritel(0, NGENE_STATUS);
 ngwritel(0, NGENE_STATUS_HI);
 ngwritel(0, NGENE_EVENT);
 ngwritel(0, NGENE_EVENT_HI);
 free_irq(dev->pci_dev->irq, dev);




}
