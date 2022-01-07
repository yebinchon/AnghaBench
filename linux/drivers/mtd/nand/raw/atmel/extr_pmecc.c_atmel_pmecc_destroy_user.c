
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_pmecc_user {int dummy; } ;


 int kfree (struct atmel_pmecc_user*) ;

void atmel_pmecc_destroy_user(struct atmel_pmecc_user *user)
{
 kfree(user);
}
