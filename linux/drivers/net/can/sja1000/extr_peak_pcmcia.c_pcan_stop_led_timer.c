
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcan_pccard {int led_timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void pcan_stop_led_timer(struct pcan_pccard *card)
{
 del_timer_sync(&card->led_timer);
}
