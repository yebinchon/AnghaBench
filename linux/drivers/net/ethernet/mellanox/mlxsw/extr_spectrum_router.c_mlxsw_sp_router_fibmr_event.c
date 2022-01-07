
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int mfc; } ;
struct mlxsw_sp_fib_event_work {int event; TYPE_1__ ven_info; TYPE_1__ men_info; } ;
struct fib_notifier_info {int dummy; } ;







 int dev_hold (int ) ;
 int memcpy (TYPE_1__*,struct fib_notifier_info*,int) ;
 int mr_cache_hold (int ) ;

__attribute__((used)) static void
mlxsw_sp_router_fibmr_event(struct mlxsw_sp_fib_event_work *fib_work,
       struct fib_notifier_info *info)
{
 switch (fib_work->event) {
 case 130:
 case 132:
 case 131:
  memcpy(&fib_work->men_info, info, sizeof(fib_work->men_info));
  mr_cache_hold(fib_work->men_info.mfc);
  break;
 case 129:
 case 128:
  memcpy(&fib_work->ven_info, info, sizeof(fib_work->ven_info));
  dev_hold(fib_work->ven_info.dev);
  break;
 }
}
