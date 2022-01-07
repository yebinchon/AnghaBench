
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t type; int nr; } ;
struct bttv {unsigned int svhs; TYPE_1__ c; } ;
struct TYPE_4__ {unsigned int video_inputs; int gpiomask2; int (* muxsel_hook ) (struct bttv*,unsigned int) ;} ;


 int BT848_CONTROL_COMP ;
 int BT848_E_CONTROL ;
 int BT848_IFORM ;
 int BT848_O_CONTROL ;
 int EINVAL ;
 int btand (int ,int ) ;
 int btaor (int,int,int ) ;
 int btor (int ,int ) ;
 int bttv_muxsel (struct bttv*,unsigned int) ;
 TYPE_2__* bttv_tvcards ;
 int dprintk (char*,int ,unsigned int,int) ;
 int gpio_inout (int,int) ;
 int stub1 (struct bttv*,unsigned int) ;

__attribute__((used)) static int
video_mux(struct bttv *btv, unsigned int input)
{
 int mux,mask2;

 if (input >= bttv_tvcards[btv->c.type].video_inputs)
  return -EINVAL;


 mask2 = bttv_tvcards[btv->c.type].gpiomask2;
 if (mask2)
  gpio_inout(mask2,mask2);

 if (input == btv->svhs) {
  btor(BT848_CONTROL_COMP, BT848_E_CONTROL);
  btor(BT848_CONTROL_COMP, BT848_O_CONTROL);
 } else {
  btand(~BT848_CONTROL_COMP, BT848_E_CONTROL);
  btand(~BT848_CONTROL_COMP, BT848_O_CONTROL);
 }
 mux = bttv_muxsel(btv, input);
 btaor(mux<<5, ~(3<<5), BT848_IFORM);
 dprintk("%d: video mux: input=%d mux=%d\n", btv->c.nr, input, mux);


 if(bttv_tvcards[btv->c.type].muxsel_hook)
  bttv_tvcards[btv->c.type].muxsel_hook (btv, input);
 return 0;
}
