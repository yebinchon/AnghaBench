
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;

void nfp_check_rhashtable_empty(void *ptr, void *arg)
{
 WARN_ON_ONCE(1);
}
