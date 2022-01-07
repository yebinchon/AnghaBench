
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int dummy; } ;


 int kfree (struct htc_target*) ;

void ath9k_htc_hw_free(struct htc_target *htc)
{
 kfree(htc);
}
