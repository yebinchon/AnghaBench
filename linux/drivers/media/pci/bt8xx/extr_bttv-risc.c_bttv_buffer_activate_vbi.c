
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btcx_riscmem {int dummy; } ;
struct TYPE_4__ {unsigned int vdelay; } ;
struct TYPE_3__ {int queue; int state; } ;
struct bttv_buffer {scalar_t__* vbi_count; struct btcx_riscmem bottom; struct btcx_riscmem top; TYPE_2__ geo; TYPE_1__ vb; } ;
struct bttv {int dummy; } ;


 int BT848_E_CROP ;
 int BT848_E_VDELAY_LO ;
 int BT848_O_CROP ;
 int BT848_O_VDELAY_LO ;
 int RISC_SLOT_E_VBI ;
 int RISC_SLOT_O_VBI ;
 int VIDEOBUF_ACTIVE ;
 unsigned int btread (int ) ;
 int bttv_risc_hook (struct bttv*,int ,struct btcx_riscmem*,int) ;
 int btwrite (unsigned int,int ) ;
 int list_del (int *) ;

int
bttv_buffer_activate_vbi(struct bttv *btv,
    struct bttv_buffer *vbi)
{
 struct btcx_riscmem *top;
 struct btcx_riscmem *bottom;
 int top_irq_flags;
 int bottom_irq_flags;

 top = ((void*)0);
 bottom = ((void*)0);
 top_irq_flags = 0;
 bottom_irq_flags = 0;

 if (vbi) {
  unsigned int crop, vdelay;

  vbi->vb.state = VIDEOBUF_ACTIVE;
  list_del(&vbi->vb.queue);


  crop = btread(BT848_E_CROP);
  vdelay = btread(BT848_E_VDELAY_LO) + ((crop & 0xc0) << 2);

  if (vbi->geo.vdelay > vdelay) {
   vdelay = vbi->geo.vdelay & 0xfe;
   crop = (crop & 0x3f) | ((vbi->geo.vdelay >> 2) & 0xc0);

   btwrite(vdelay, BT848_E_VDELAY_LO);
   btwrite(crop, BT848_E_CROP);
   btwrite(vdelay, BT848_O_VDELAY_LO);
   btwrite(crop, BT848_O_CROP);
  }

  if (vbi->vbi_count[0] > 0) {
   top = &vbi->top;
   top_irq_flags = 4;
  }

  if (vbi->vbi_count[1] > 0) {
   top_irq_flags = 0;
   bottom = &vbi->bottom;
   bottom_irq_flags = 4;
  }
 }

 bttv_risc_hook(btv, RISC_SLOT_O_VBI, top, top_irq_flags);
 bttv_risc_hook(btv, RISC_SLOT_E_VBI, bottom, bottom_irq_flags);

 return 0;
}
