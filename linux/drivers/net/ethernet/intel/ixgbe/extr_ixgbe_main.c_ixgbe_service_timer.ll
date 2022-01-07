; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_service_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_service_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32 }
%struct.timer_list = type { i32 }

@service_timer = common dso_local global i32 0, align 4
@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@adapter = common dso_local global %struct.ixgbe_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ixgbe_service_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_service_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %6 = ptrtoint %struct.ixgbe_adapter* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @service_timer, align 4
  %9 = call %struct.ixgbe_adapter* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %3, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 10
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %4, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @jiffies, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @mod_timer(i32* %26, i64 %29)
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %32 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %31)
  ret void
}

declare dso_local %struct.ixgbe_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
