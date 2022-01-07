
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int wait; } ;


 int init_waitqueue_head (int *) ;
 int rocker_wait_reset (struct rocker_wait*) ;

__attribute__((used)) static void rocker_wait_init(struct rocker_wait *wait)
{
 init_waitqueue_head(&wait->wait);
 rocker_wait_reset(wait);
}
