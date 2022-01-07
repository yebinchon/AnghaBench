; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_reset_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_reset_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32 }

@__IXGBE_RESET_REQUESTED = common dso_local global i32 0, align 4
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@__IXGBE_REMOVING = common dso_local global i32 0, align 4
@__IXGBE_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Reset adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_reset_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_reset_subtask(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %3 = load i32, i32* @__IXGBE_RESET_REQUESTED, align 4
  %4 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %4, i32 0, i32 2
  %6 = call i32 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = call i32 (...) @rtnl_lock()
  %11 = load i32, i32* @__IXGBE_DOWN, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 2
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @__IXGBE_REMOVING, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 2
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @__IXGBE_RESETTING, align 4
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 2
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16, %9
  %29 = call i32 (...) @rtnl_unlock()
  br label %44

30:                                               ; preds = %22
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %32 = call i32 @ixgbe_dump(%struct.ixgbe_adapter* %31)
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netdev_err(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %42 = call i32 @ixgbe_reinit_locked(%struct.ixgbe_adapter* %41)
  %43 = call i32 (...) @rtnl_unlock()
  br label %44

44:                                               ; preds = %30, %28, %8
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ixgbe_dump(%struct.ixgbe_adapter*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @ixgbe_reinit_locked(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
