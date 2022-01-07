
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_9__ {size_t nr; size_t type; int v4l2_dev; TYPE_1__* pci; } ;
struct bttv {int shutdown; TYPE_5__ c; int bt848_mmio; int main; int radio_ctrl_handler; int ctrl_handler; } ;
struct TYPE_8__ {scalar_t__ has_dvb; } ;
struct TYPE_7__ {int irq; } ;


 int BT848_GPIO_DMA_CTL ;
 int BT848_GPIO_OUT_EN ;
 int BT848_INT_MASK ;
 int BT848_INT_STAT ;
 int btand (int,int ) ;
 int btcx_riscmem_free (TYPE_1__*,int *) ;
 scalar_t__ bttv_gpio ;
 int bttv_gpio_tracking (struct bttv*,char*) ;
 int bttv_input_fini (struct bttv*) ;
 int bttv_sub_del_devices (TYPE_5__*) ;
 TYPE_4__* bttv_tvcards ;
 int bttv_unregister_video (struct bttv*) ;
 scalar_t__ bttv_verbose ;
 int ** bttvs ;
 int btwrite (int,int ) ;
 int fini_bttv_i2c (struct bttv*) ;
 int flush_request_modules (struct bttv*) ;
 int free_irq (int ,struct bttv*) ;
 int iounmap (int ) ;
 int kfree (struct bttv*) ;
 int pci_disable_device (TYPE_1__*) ;
 struct v4l2_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_resource_len (TYPE_1__*,int ) ;
 int pci_resource_start (TYPE_1__*,int ) ;
 int pr_info (char*,size_t) ;
 int release_mem_region (int ,int ) ;
 struct bttv* to_bttv (struct v4l2_device*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void bttv_remove(struct pci_dev *pci_dev)
{
 struct v4l2_device *v4l2_dev = pci_get_drvdata(pci_dev);
 struct bttv *btv = to_bttv(v4l2_dev);

 if (bttv_verbose)
  pr_info("%d: unloading\n", btv->c.nr);

 if (bttv_tvcards[btv->c.type].has_dvb)
  flush_request_modules(btv);


 btand(~15, BT848_GPIO_DMA_CTL);
 btwrite(0, BT848_INT_MASK);
 btwrite(~0x0, BT848_INT_STAT);
 btwrite(0x0, BT848_GPIO_OUT_EN);
 if (bttv_gpio)
  bttv_gpio_tracking(btv,"cleanup");


 btv->shutdown=1;
 bttv_input_fini(btv);
 bttv_sub_del_devices(&btv->c);


 fini_bttv_i2c(btv);


 bttv_unregister_video(btv);


 v4l2_ctrl_handler_free(&btv->ctrl_handler);
 v4l2_ctrl_handler_free(&btv->radio_ctrl_handler);
 btcx_riscmem_free(btv->c.pci,&btv->main);


 free_irq(btv->c.pci->irq,btv);
 iounmap(btv->bt848_mmio);
 release_mem_region(pci_resource_start(btv->c.pci,0),
      pci_resource_len(btv->c.pci,0));
 pci_disable_device(btv->c.pci);

 v4l2_device_unregister(&btv->c.v4l2_dev);
 bttvs[btv->c.nr] = ((void*)0);
 kfree(btv);

 return;
}
