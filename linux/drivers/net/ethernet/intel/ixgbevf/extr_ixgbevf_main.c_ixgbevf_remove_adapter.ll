; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_remove_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_remove_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32*, %struct.ixgbevf_adapter* }
%struct.ixgbevf_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Adapter removed\0A\00", align 1
@__IXGBEVF_SERVICE_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbevf_remove_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_remove_adapter(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 1
  %6 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  store %struct.ixgbevf_adapter* %6, %struct.ixgbevf_adapter** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @__IXGBEVF_SERVICE_INITED, align 4
  %21 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %27 = call i32 @ixgbevf_service_event_schedule(%struct.ixgbevf_adapter* %26)
  br label %28

28:                                               ; preds = %11, %25, %12
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbevf_service_event_schedule(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
