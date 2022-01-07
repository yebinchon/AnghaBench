
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static void tg3_timer_stop(struct tg3 *tp)
{
 del_timer_sync(&tp->timer);
}
