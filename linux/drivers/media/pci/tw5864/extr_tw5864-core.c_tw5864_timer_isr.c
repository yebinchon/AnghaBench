
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw5864_input {int nr; int buf_id; int slock; int new_frame_deadline; int enabled; } ;
struct tw5864_dev {int encoder_busy; int next_input; int slock; struct tw5864_input* inputs; } ;


 int TW5864_ENC_BUF_PTR_REC1 ;
 int TW5864_INPUTS ;
 int TW5864_PCI_INTR_STATUS ;
 int TW5864_SENIF_ORG_FRM_PTR1 ;
 int TW5864_TIMER_INTR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_is_after_jiffies (int ) ;
 int tw5864_input_deadline_update (struct tw5864_input*) ;
 int tw5864_request_encoded_frame (struct tw5864_input*) ;
 int tw_mask_shift_readl (int ,int,int) ;
 int tw_mask_shift_writel (int ,int,int,int) ;
 int tw_writel (int ,int ) ;

__attribute__((used)) static void tw5864_timer_isr(struct tw5864_dev *dev)
{
 unsigned long flags;
 int i;
 int encoder_busy;


 tw_writel(TW5864_PCI_INTR_STATUS, TW5864_TIMER_INTR);

 spin_lock_irqsave(&dev->slock, flags);
 encoder_busy = dev->encoder_busy;
 spin_unlock_irqrestore(&dev->slock, flags);

 if (encoder_busy)
  return;





 for (i = 0; i < TW5864_INPUTS; i++) {
  int next_input = (i + dev->next_input) % TW5864_INPUTS;
  struct tw5864_input *input = &dev->inputs[next_input];
  int raw_buf_id;

  spin_lock_irqsave(&input->slock, flags);
  if (!input->enabled)
   goto next;


  raw_buf_id = tw_mask_shift_readl(TW5864_SENIF_ORG_FRM_PTR1, 0x3,
       2 * input->nr);

  if (input->buf_id != raw_buf_id) {
   input->buf_id = raw_buf_id;
   tw5864_input_deadline_update(input);
   spin_unlock_irqrestore(&input->slock, flags);

   spin_lock_irqsave(&dev->slock, flags);
   dev->encoder_busy = 1;
   dev->next_input = (next_input + 1) % TW5864_INPUTS;
   spin_unlock_irqrestore(&dev->slock, flags);

   tw5864_request_encoded_frame(input);
   break;
  }


  if (time_is_after_jiffies(input->new_frame_deadline)) {

   tw_mask_shift_writel(TW5864_ENC_BUF_PTR_REC1, 0x3,
          2 * input->nr, input->buf_id + 3);
   tw5864_input_deadline_update(input);
  }
next:
  spin_unlock_irqrestore(&input->slock, flags);
 }
}
