
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mal_instance {int napi; } ;
struct mal_commac {int flags; } ;


 int MAL_COMMAC_POLL_DISABLED ;
 int clear_bit (int ,int *) ;
 int napi_schedule (int *) ;
 int smp_wmb () ;

void mal_poll_enable(struct mal_instance *mal, struct mal_commac *commac)
{
 smp_wmb();
 clear_bit(MAL_COMMAC_POLL_DISABLED, &commac->flags);






 napi_schedule(&mal->napi);
}
