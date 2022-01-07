
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ rotation_thread; } ;


 int kthread_stop (scalar_t__) ;
 int s5k83a_set_led_indication (struct sd*,int ) ;

int s5k83a_stop(struct sd *sd)
{
 if (sd->rotation_thread)
  kthread_stop(sd->rotation_thread);

 return s5k83a_set_led_indication(sd, 0);
}
