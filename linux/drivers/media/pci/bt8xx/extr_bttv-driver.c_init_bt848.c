
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t type; } ;
struct bttv {int ctrl_handler; TYPE_1__ c; } ;
struct TYPE_4__ {scalar_t__ no_video; } ;


 int BT848_CAP_CTL ;
 int BT848_COLOR_CTL ;
 int BT848_COLOR_CTL_GAMMA ;
 int BT848_E_VSCALE_HI ;
 int BT848_GPIO_DMA_CTL ;
 int BT848_GPIO_DMA_CTL_GPINTC ;
 int BT848_GPIO_DMA_CTL_GPINTI ;
 int BT848_GPIO_DMA_CTL_PKTP_32 ;
 int BT848_GPIO_DMA_CTL_PLTP1_16 ;
 int BT848_GPIO_DMA_CTL_PLTP23_16 ;
 int BT848_IFORM ;
 int BT848_IFORM_AUTO ;
 int BT848_IFORM_XTAUTO ;
 int BT848_O_VSCALE_HI ;
 TYPE_2__* bttv_tvcards ;
 int btwrite (int,int ) ;
 int init_irqreg (struct bttv*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static void init_bt848(struct bttv *btv)
{
 if (bttv_tvcards[btv->c.type].no_video) {

  init_irqreg(btv);
  return;
 }

 btwrite(0x00, BT848_CAP_CTL);
 btwrite(BT848_COLOR_CTL_GAMMA, BT848_COLOR_CTL);
 btwrite(BT848_IFORM_XTAUTO | BT848_IFORM_AUTO, BT848_IFORM);



 btwrite(BT848_GPIO_DMA_CTL_PKTP_32|
  BT848_GPIO_DMA_CTL_PLTP1_16|
  BT848_GPIO_DMA_CTL_PLTP23_16|
  BT848_GPIO_DMA_CTL_GPINTC|
  BT848_GPIO_DMA_CTL_GPINTI,
  BT848_GPIO_DMA_CTL);

 btwrite(0x20, BT848_E_VSCALE_HI);
 btwrite(0x20, BT848_O_VSCALE_HI);

 v4l2_ctrl_handler_setup(&btv->ctrl_handler);


 init_irqreg(btv);
}
