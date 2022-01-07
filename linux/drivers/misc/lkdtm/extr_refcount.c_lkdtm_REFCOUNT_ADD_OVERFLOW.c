
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int REFCOUNT_INIT (scalar_t__) ;
 scalar_t__ REFCOUNT_MAX ;
 int overflow_check (int *) ;
 int pr_info (char*) ;
 int refcount_add (int,int *) ;
 int refcount_dec (int *) ;

void lkdtm_REFCOUNT_ADD_OVERFLOW(void)
{
 refcount_t over = REFCOUNT_INIT(REFCOUNT_MAX - 1);

 pr_info("attempting good refcount_add() without overflow\n");
 refcount_dec(&over);
 refcount_dec(&over);
 refcount_dec(&over);
 refcount_dec(&over);
 refcount_add(4, &over);

 pr_info("attempting bad refcount_add() overflow\n");
 refcount_add(4, &over);

 overflow_check(&over);
}
