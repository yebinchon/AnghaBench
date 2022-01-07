; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_queue_reset_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_queue_reset_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@__IXGBEVF_QUEUE_RESET_REQUESTED = common dso_local global i32 0, align 4
@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@__IXGBEVF_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_queue_reset_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_queue_reset_subtask(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %4 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %4, i32 0, i32 1
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load i32, i32* @__IXGBEVF_QUEUE_RESET_REQUESTED, align 4
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 0
  %10 = call i32 @test_and_clear_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @__IXGBEVF_RESETTING, align 4
  %21 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13
  br label %47

26:                                               ; preds = %19
  %27 = call i32 (...) @rtnl_lock()
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i64 @netif_running(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @ixgbevf_close(%struct.net_device* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %36 = call i32 @ixgbevf_clear_interrupt_scheme(%struct.ixgbevf_adapter* %35)
  %37 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %38 = call i32 @ixgbevf_init_interrupt_scheme(%struct.ixgbevf_adapter* %37)
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i64 @netif_running(%struct.net_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @ixgbevf_open(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %42, %34
  %46 = call i32 (...) @rtnl_unlock()
  br label %47

47:                                               ; preds = %45, %25, %12
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_close(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_clear_interrupt_scheme(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_init_interrupt_scheme(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_open(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
