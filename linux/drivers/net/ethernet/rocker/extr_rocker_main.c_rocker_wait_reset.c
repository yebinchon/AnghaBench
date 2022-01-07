
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int done; int nowait; } ;



__attribute__((used)) static void rocker_wait_reset(struct rocker_wait *wait)
{
 wait->done = 0;
 wait->nowait = 0;
}
