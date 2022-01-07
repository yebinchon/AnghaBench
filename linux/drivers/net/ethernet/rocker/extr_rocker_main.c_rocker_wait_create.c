
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_wait {int dummy; } ;


 int GFP_KERNEL ;
 struct rocker_wait* kzalloc (int,int ) ;

__attribute__((used)) static struct rocker_wait *rocker_wait_create(void)
{
 struct rocker_wait *wait;

 wait = kzalloc(sizeof(*wait), GFP_KERNEL);
 if (!wait)
  return ((void*)0);
 return wait;
}
