
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done_sent; } ;
struct ath6kl {TYPE_1__ bmi; } ;



void ath6kl_bmi_reset(struct ath6kl *ar)
{
 ar->bmi.done_sent = 0;
}
