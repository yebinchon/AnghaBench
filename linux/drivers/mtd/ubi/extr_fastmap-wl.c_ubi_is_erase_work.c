
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_work {scalar_t__ func; } ;


 scalar_t__ erase_worker ;

int ubi_is_erase_work(struct ubi_work *wrk)
{
 return wrk->func == erase_worker;
}
