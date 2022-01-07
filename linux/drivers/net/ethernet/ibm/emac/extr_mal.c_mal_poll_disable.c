
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mal_instance {int napi; } ;
struct mal_commac {int flags; } ;


 int MAL_COMMAC_POLL_DISABLED ;
 int msleep (int) ;
 int napi_synchronize (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void mal_poll_disable(struct mal_instance *mal, struct mal_commac *commac)
{

 while (test_and_set_bit(MAL_COMMAC_POLL_DISABLED, &commac->flags))
  msleep(1);


 napi_synchronize(&mal->napi);
}
