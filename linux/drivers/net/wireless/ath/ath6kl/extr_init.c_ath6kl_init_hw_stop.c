
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int state; } ;


 int ATH6KL_STATE_OFF ;
 int __ath6kl_init_hw_stop (struct ath6kl*) ;

int ath6kl_init_hw_stop(struct ath6kl *ar)
{
 int err;

 err = __ath6kl_init_hw_stop(ar);
 if (err)
  return err;
 ar->state = ATH6KL_STATE_OFF;
 return 0;
}
