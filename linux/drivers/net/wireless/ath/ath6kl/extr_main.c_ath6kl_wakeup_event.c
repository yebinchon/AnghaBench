
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int event_wq; } ;


 int wake_up (int *) ;

void ath6kl_wakeup_event(void *dev)
{
 struct ath6kl *ar = (struct ath6kl *) dev;

 wake_up(&ar->event_wq);
}
