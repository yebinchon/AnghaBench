; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_stats_timer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_stats_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.falcon_nic_data = type { i64, %struct.ef4_nic* }
%struct.ef4_nic = type { i32 }
%struct.timer_list = type { i32 }

@stats_timer = common dso_local global i32 0, align 4
@nic_data = common dso_local global %struct.falcon_nic_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @falcon_stats_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_stats_timer_func(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca %struct.ef4_nic*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %6 = ptrtoint %struct.falcon_nic_data* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @stats_timer, align 4
  %9 = call %struct.falcon_nic_data* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.falcon_nic_data* %9, %struct.falcon_nic_data** %3, align 8
  %10 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %11 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %10, i32 0, i32 1
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %11, align 8
  store %struct.ef4_nic* %12, %struct.ef4_nic** %4, align 8
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %14 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %17 = call i32 @falcon_stats_complete(%struct.ef4_nic* %16)
  %18 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %19 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %24 = call i32 @falcon_stats_request(%struct.ef4_nic* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %27 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  ret void
}

declare dso_local %struct.falcon_nic_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @falcon_stats_complete(%struct.ef4_nic*) #1

declare dso_local i32 @falcon_stats_request(%struct.ef4_nic*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
