; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fibmr_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fibmr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fib_event_work = type { i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fib_notifier_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_fib_event_work*, %struct.fib_notifier_info*)* @mlxsw_sp_router_fibmr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_router_fibmr_event(%struct.mlxsw_sp_fib_event_work* %0, %struct.fib_notifier_info* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_fib_event_work*, align 8
  %4 = alloca %struct.fib_notifier_info*, align 8
  store %struct.mlxsw_sp_fib_event_work* %0, %struct.mlxsw_sp_fib_event_work** %3, align 8
  store %struct.fib_notifier_info* %1, %struct.fib_notifier_info** %4, align 8
  %5 = load %struct.mlxsw_sp_fib_event_work*, %struct.mlxsw_sp_fib_event_work** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_fib_event_work, %struct.mlxsw_sp_fib_event_work* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %28 [
    i32 130, label %8
    i32 132, label %8
    i32 131, label %8
    i32 129, label %18
    i32 128, label %18
  ]

8:                                                ; preds = %2, %2, %2
  %9 = load %struct.mlxsw_sp_fib_event_work*, %struct.mlxsw_sp_fib_event_work** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fib_event_work, %struct.mlxsw_sp_fib_event_work* %9, i32 0, i32 2
  %11 = load %struct.fib_notifier_info*, %struct.fib_notifier_info** %4, align 8
  %12 = call i32 @memcpy(%struct.TYPE_2__* %10, %struct.fib_notifier_info* %11, i32 8)
  %13 = load %struct.mlxsw_sp_fib_event_work*, %struct.mlxsw_sp_fib_event_work** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_fib_event_work, %struct.mlxsw_sp_fib_event_work* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mr_cache_hold(i32 %16)
  br label %28

18:                                               ; preds = %2, %2
  %19 = load %struct.mlxsw_sp_fib_event_work*, %struct.mlxsw_sp_fib_event_work** %3, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_fib_event_work, %struct.mlxsw_sp_fib_event_work* %19, i32 0, i32 1
  %21 = load %struct.fib_notifier_info*, %struct.fib_notifier_info** %4, align 8
  %22 = call i32 @memcpy(%struct.TYPE_2__* %20, %struct.fib_notifier_info* %21, i32 8)
  %23 = load %struct.mlxsw_sp_fib_event_work*, %struct.mlxsw_sp_fib_event_work** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_fib_event_work, %struct.mlxsw_sp_fib_event_work* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_hold(i32 %26)
  br label %28

28:                                               ; preds = %2, %18, %8
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.fib_notifier_info*, i32) #1

declare dso_local i32 @mr_cache_hold(i32) #1

declare dso_local i32 @dev_hold(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
