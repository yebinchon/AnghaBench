
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcan_pccard {int led_timer; } ;


 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;

__attribute__((used)) static void pcan_start_led_timer(struct pcan_pccard *card)
{
 if (!timer_pending(&card->led_timer))
  mod_timer(&card->led_timer, jiffies + HZ);
}
