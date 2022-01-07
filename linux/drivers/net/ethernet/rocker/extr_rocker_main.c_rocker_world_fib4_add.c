
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_world_ops {int (* fib4_add ) (struct rocker*,struct fib_entry_notifier_info const*) ;} ;
struct rocker {struct rocker_world_ops* wops; } ;
struct fib_entry_notifier_info {int dummy; } ;


 int stub1 (struct rocker*,struct fib_entry_notifier_info const*) ;

__attribute__((used)) static int rocker_world_fib4_add(struct rocker *rocker,
     const struct fib_entry_notifier_info *fen_info)
{
 struct rocker_world_ops *wops = rocker->wops;

 if (!wops->fib4_add)
  return 0;
 return wops->fib4_add(rocker, fen_info);
}
