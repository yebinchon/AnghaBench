
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int pdev; scalar_t__ last_event_jiffies; } ;


 int GRC_RX_CPU_DRIVER_EVENT ;
 int GRC_RX_CPU_EVENT ;
 unsigned int TG3_FW_EVENT_TIMEOUT_USEC ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_usecs (long) ;
 scalar_t__ pci_channel_offline (int ) ;
 int tr32 (int ) ;
 int udelay (int) ;
 scalar_t__ usecs_to_jiffies (unsigned int) ;

__attribute__((used)) static void tg3_wait_for_event_ack(struct tg3 *tp)
{
 int i;
 unsigned int delay_cnt;
 long time_remain;


 time_remain = (long)(tp->last_event_jiffies + 1 +
        usecs_to_jiffies(TG3_FW_EVENT_TIMEOUT_USEC)) -
        (long)jiffies;
 if (time_remain < 0)
  return;


 delay_cnt = jiffies_to_usecs(time_remain);
 if (delay_cnt > TG3_FW_EVENT_TIMEOUT_USEC)
  delay_cnt = TG3_FW_EVENT_TIMEOUT_USEC;
 delay_cnt = (delay_cnt >> 3) + 1;

 for (i = 0; i < delay_cnt; i++) {
  if (!(tr32(GRC_RX_CPU_EVENT) & GRC_RX_CPU_DRIVER_EVENT))
   break;
  if (pci_channel_offline(tp->pdev))
   break;

  udelay(8);
 }
}
