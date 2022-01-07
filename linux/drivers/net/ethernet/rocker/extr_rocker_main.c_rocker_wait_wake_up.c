
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int done; int wait; } ;


 int wake_up (int *) ;

__attribute__((used)) static void rocker_wait_wake_up(struct rocker_wait *wait)
{
 wait->done = 1;
 wake_up(&wait->wait);
}
