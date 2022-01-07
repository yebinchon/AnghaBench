
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int REFCOUNT_INIT (scalar_t__) ;
 scalar_t__ REFCOUNT_MAX ;
 int overflow_check (int *) ;
 int pr_info (char*) ;
 int refcount_dec (int *) ;
 int refcount_inc (int *) ;

void lkdtm_REFCOUNT_INC_OVERFLOW(void)
{
 refcount_t over = REFCOUNT_INIT(REFCOUNT_MAX - 1);

 pr_info("attempting good refcount_inc() without overflow\n");
 refcount_dec(&over);
 refcount_inc(&over);

 pr_info("attempting bad refcount_inc() overflow\n");
 refcount_inc(&over);
 refcount_inc(&over);

 overflow_check(&over);
}
