
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
struct common_obj {TYPE_4__* next_frm; TYPE_4__* cur_frm; int irqlock; int dma_queue; } ;
struct TYPE_6__ {int frm_fmt; } ;
struct TYPE_7__ {TYPE_1__ std_info; } ;
struct channel_obj {int field_id; scalar_t__ channel_id; TYPE_2__ vpifparams; struct common_obj* common; } ;
typedef int irqreturn_t ;
struct TYPE_10__ {int timestamp; } ;
struct TYPE_8__ {TYPE_5__ vb2_buf; } ;
struct TYPE_9__ {TYPE_3__ vb; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VB2_BUF_STATE_DONE ;
 int VPIF_NUMOBJECTS ;
 scalar_t__** channel_first_int ;
 int ktime_get_ns () ;
 scalar_t__ list_empty (int *) ;
 int process_interlaced_mode (int,struct common_obj*) ;
 int process_progressive_mode (struct common_obj*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vb2_buffer_done (TYPE_5__*,int ) ;
 int vpif_channel_getfid (scalar_t__) ;
 int vpif_intr_status (int) ;
 struct vpif_device vpif_obj ;

__attribute__((used)) static irqreturn_t vpif_channel_isr(int irq, void *dev_id)
{
 struct vpif_device *dev = &vpif_obj;
 struct channel_obj *ch;
 struct common_obj *common;
 int fid = -1, i;
 int channel_id;

 channel_id = *(int *)(dev_id);
 if (!vpif_intr_status(channel_id + 2))
  return IRQ_NONE;

 ch = dev->dev[channel_id];
 for (i = 0; i < VPIF_NUMOBJECTS; i++) {
  common = &ch->common[i];


  if (1 == ch->vpifparams.std_info.frm_fmt) {
   spin_lock(&common->irqlock);
   if (list_empty(&common->dma_queue)) {
    spin_unlock(&common->irqlock);
    continue;
   }
   spin_unlock(&common->irqlock);


   if (!channel_first_int[i][channel_id]) {


    common->cur_frm->vb.vb2_buf.timestamp =
      ktime_get_ns();
    vb2_buffer_done(&common->cur_frm->vb.vb2_buf,
      VB2_BUF_STATE_DONE);

    common->cur_frm = common->next_frm;
   }

   channel_first_int[i][channel_id] = 0;
   process_progressive_mode(common);
  } else {



   if (channel_first_int[i][channel_id]) {
    channel_first_int[i][channel_id] = 0;
    continue;
   }

   if (0 == i) {
    ch->field_id ^= 1;

    fid = vpif_channel_getfid(ch->channel_id + 2);

    if (fid != ch->field_id) {

     if (0 == fid)
      ch->field_id = fid;

     return IRQ_HANDLED;
    }
   }
   process_interlaced_mode(fid, common);
  }
 }

 return IRQ_HANDLED;
}
