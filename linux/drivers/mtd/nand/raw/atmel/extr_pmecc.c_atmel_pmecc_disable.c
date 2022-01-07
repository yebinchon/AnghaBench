
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_pmecc_user {TYPE_1__* pmecc; } ;
struct TYPE_2__ {int lock; } ;


 int atmel_pmecc_reset (TYPE_1__*) ;
 int mutex_unlock (int *) ;

void atmel_pmecc_disable(struct atmel_pmecc_user *user)
{
 atmel_pmecc_reset(user->pmecc);
 mutex_unlock(&user->pmecc->lock);
}
