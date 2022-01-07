
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct channel_info {int tsklet; scalar_t__ irec; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct c8sectpfei {int tsin_count; TYPE_1__ timer; struct channel_info** channel_data; } ;


 scalar_t__ DMA_PRDS_TPENABLE ;
 int POLL_MSECS ;
 int add_timer (TYPE_1__*) ;
 struct c8sectpfei* fei ;
 struct c8sectpfei* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ readl (scalar_t__) ;
 int tasklet_schedule (int *) ;
 int timer ;

__attribute__((used)) static void c8sectpfe_timer_interrupt(struct timer_list *t)
{
 struct c8sectpfei *fei = from_timer(fei, t, timer);
 struct channel_info *channel;
 int chan_num;


 for (chan_num = 0; chan_num < fei->tsin_count; chan_num++) {
  channel = fei->channel_data[chan_num];


  if (channel->irec && readl(channel->irec + DMA_PRDS_TPENABLE))
   tasklet_schedule(&channel->tsklet);
 }

 fei->timer.expires = jiffies + msecs_to_jiffies(POLL_MSECS);
 add_timer(&fei->timer);
}
