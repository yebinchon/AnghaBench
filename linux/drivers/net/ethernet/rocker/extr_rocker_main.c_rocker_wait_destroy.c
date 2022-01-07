
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int dummy; } ;


 int kfree (struct rocker_wait*) ;

__attribute__((used)) static void rocker_wait_destroy(struct rocker_wait *wait)
{
 kfree(wait);
}
