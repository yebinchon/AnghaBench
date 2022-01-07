; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_watchdog_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_watchdog_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i64, i32 }

@__IXGBE_DOWN = common dso_local global i32 0, align 4
@__IXGBE_REMOVING = common dso_local global i32 0, align 4
@__IXGBE_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_watchdog_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_watchdog_subtask(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %3 = load i32, i32* @__IXGBE_DOWN, align 4
  %4 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %4, i32 0, i32 1
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @__IXGBE_REMOVING, align 4
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @__IXGBE_RESETTING, align 4
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %8, %1
  br label %43

21:                                               ; preds = %14
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = call i32 @ixgbe_watchdog_update_link(%struct.ixgbe_adapter* %22)
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %30 = call i32 @ixgbe_watchdog_link_is_up(%struct.ixgbe_adapter* %29)
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %33 = call i32 @ixgbe_watchdog_link_is_down(%struct.ixgbe_adapter* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %36 = call i32 @ixgbe_check_for_bad_vf(%struct.ixgbe_adapter* %35)
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %38 = call i32 @ixgbe_spoof_check(%struct.ixgbe_adapter* %37)
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %40 = call i32 @ixgbe_update_stats(%struct.ixgbe_adapter* %39)
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %42 = call i32 @ixgbe_watchdog_flush_tx(%struct.ixgbe_adapter* %41)
  br label %43

43:                                               ; preds = %34, %20
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_watchdog_update_link(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_watchdog_link_is_up(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_watchdog_link_is_down(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_check_for_bad_vf(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_spoof_check(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_update_stats(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_watchdog_flush_tx(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
