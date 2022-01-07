
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int done; int wait; } ;


 int HZ ;
 int wait_event_timeout (int ,int ,int) ;

__attribute__((used)) static bool rocker_wait_event_timeout(struct rocker_wait *wait,
          unsigned long timeout)
{
 wait_event_timeout(wait->wait, wait->done, HZ / 10);
 if (!wait->done)
  return 0;
 return 1;
}
