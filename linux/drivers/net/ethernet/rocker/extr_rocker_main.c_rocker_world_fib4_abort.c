
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_world_ops {int (* fib4_abort ) (struct rocker*) ;} ;
struct rocker {struct rocker_world_ops* wops; } ;


 int stub1 (struct rocker*) ;

__attribute__((used)) static void rocker_world_fib4_abort(struct rocker *rocker)
{
 struct rocker_world_ops *wops = rocker->wops;

 if (wops->fib4_abort)
  wops->fib4_abort(rocker);
}
