
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ field; } ;
struct vpbe_layer {int field_id; TYPE_1__ pix_fmt; scalar_t__ layer_first_int; int buffer_queue; } ;
struct vpbe_display {struct vpbe_layer** dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ V4L2_FIELD_NONE ;
 unsigned int VENC_END_OF_FRAME ;
 unsigned int VENC_FIRST_FIELD ;
 unsigned int VENC_SECOND_FIELD ;
 int VPBE_DISPLAY_MAX_DEVICES ;
 int vb2_start_streaming_called (int *) ;
 scalar_t__ venc_is_second_field (struct vpbe_display*) ;
 int vpbe_isr_even_field (struct vpbe_display*,struct vpbe_layer*) ;
 int vpbe_isr_odd_field (struct vpbe_display*,struct vpbe_layer*) ;

__attribute__((used)) static irqreturn_t venc_isr(int irq, void *arg)
{
 struct vpbe_display *disp_dev = (struct vpbe_display *)arg;
 struct vpbe_layer *layer;
 static unsigned last_event;
 unsigned event = 0;
 int fid;
 int i;

 if (!arg || !disp_dev->dev[0])
  return IRQ_HANDLED;

 if (venc_is_second_field(disp_dev))
  event |= VENC_SECOND_FIELD;
 else
  event |= VENC_FIRST_FIELD;

 if (event == (last_event & ~VENC_END_OF_FRAME)) {







  event |= VENC_END_OF_FRAME;
 } else if (event == VENC_SECOND_FIELD) {

  event |= VENC_END_OF_FRAME;
 }
 last_event = event;

 for (i = 0; i < VPBE_DISPLAY_MAX_DEVICES; i++) {
  layer = disp_dev->dev[i];

  if (!vb2_start_streaming_called(&layer->buffer_queue))
   continue;

  if (layer->layer_first_int) {
   layer->layer_first_int = 0;
   continue;
  }

  if ((V4L2_FIELD_NONE == layer->pix_fmt.field) &&
   (event & VENC_END_OF_FRAME)) {


   vpbe_isr_even_field(disp_dev, layer);
   vpbe_isr_odd_field(disp_dev, layer);
  } else {


   layer->field_id ^= 1;
   if (event & VENC_FIRST_FIELD)
    fid = 0;
   else
    fid = 1;





   if (fid != layer->field_id) {

    layer->field_id = fid;
    continue;
   }




   if (0 == fid)
    vpbe_isr_even_field(disp_dev, layer);
   else
    vpbe_isr_odd_field(disp_dev, layer);
  }
 }

 return IRQ_HANDLED;
}
