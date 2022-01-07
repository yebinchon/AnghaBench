
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vpif_device {struct channel_obj** dev; } ;
struct TYPE_8__ {scalar_t__ field; } ;
struct TYPE_9__ {TYPE_3__ pix; } ;
struct TYPE_10__ {TYPE_4__ fmt; } ;
struct common_obj {scalar_t__ cur_frm; scalar_t__ next_frm; int irqlock; int dma_queue; TYPE_5__ fmt; } ;
struct TYPE_6__ {int frm_fmt; } ;
struct TYPE_7__ {TYPE_1__ std_info; } ;
struct channel_obj {int field_id; int channel_id; TYPE_2__ vpifparams; struct common_obj* common; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ V4L2_FIELD_NONE ;
 int VPIF_NUMBER_OF_OBJECTS ;
 scalar_t__** channel_first_int ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vpif_channel_getfid (int ) ;
 int vpif_intr_status (int) ;
 struct vpif_device vpif_obj ;
 int vpif_process_buffer_complete (struct common_obj*) ;
 int vpif_schedule_next_buffer (struct common_obj*) ;

__attribute__((used)) static irqreturn_t vpif_channel_isr(int irq, void *dev_id)
{
 struct vpif_device *dev = &vpif_obj;
 struct common_obj *common;
 struct channel_obj *ch;
 int channel_id;
 int fid = -1, i;

 channel_id = *(int *)(dev_id);
 if (!vpif_intr_status(channel_id))
  return IRQ_NONE;

 ch = dev->dev[channel_id];

 for (i = 0; i < VPIF_NUMBER_OF_OBJECTS; i++) {
  common = &ch->common[i];


  if (1 == ch->vpifparams.std_info.frm_fmt ||
      common->fmt.fmt.pix.field == V4L2_FIELD_NONE) {

   spin_lock(&common->irqlock);
   if (list_empty(&common->dma_queue)) {
    spin_unlock(&common->irqlock);
    continue;
   }
   spin_unlock(&common->irqlock);

   if (!channel_first_int[i][channel_id])
    vpif_process_buffer_complete(common);

   channel_first_int[i][channel_id] = 0;

   vpif_schedule_next_buffer(common);


   channel_first_int[i][channel_id] = 0;
  } else {




   if (channel_first_int[i][channel_id]) {
    channel_first_int[i][channel_id] = 0;
    continue;
   }
   if (0 == i) {
    ch->field_id ^= 1;

    fid = vpif_channel_getfid(ch->channel_id);
    if (fid != ch->field_id) {




     if (0 == fid)
      ch->field_id = fid;
     return IRQ_HANDLED;
    }
   }

   if (0 == fid) {

    if (common->cur_frm == common->next_frm)
     continue;


    vpif_process_buffer_complete(common);
   } else if (1 == fid) {

    spin_lock(&common->irqlock);
    if (list_empty(&common->dma_queue) ||
        (common->cur_frm != common->next_frm)) {
     spin_unlock(&common->irqlock);
     continue;
    }
    spin_unlock(&common->irqlock);

    vpif_schedule_next_buffer(common);
   }
  }
 }
 return IRQ_HANDLED;
}
