
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cmd_buf; } ;
struct ath6kl {TYPE_1__ bmi; } ;


 int kfree (int *) ;

void ath6kl_bmi_cleanup(struct ath6kl *ar)
{
 kfree(ar->bmi.cmd_buf);
 ar->bmi.cmd_buf = ((void*)0);
}
