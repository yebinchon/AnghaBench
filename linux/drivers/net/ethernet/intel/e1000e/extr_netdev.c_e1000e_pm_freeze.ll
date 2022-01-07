; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_pm_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_pm_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32 }

@E1000_CHECK_RESET_COUNT = common dso_local global i32 0, align 4
@__E1000_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @e1000e_pm_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000e_pm_freeze(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.net_device* @dev_get_drvdata(%struct.device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @netif_device_detach(%struct.net_device* %10)
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i64 @netif_running(%struct.net_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load i32, i32* @E1000_CHECK_RESET_COUNT, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %29, %15
  %18 = load i32, i32* @__E1000_RESETTING, align 4
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 1
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %24, 0
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i1 [ false, %17 ], [ %26, %23 ]
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %17

31:                                               ; preds = %27
  %32 = load i32, i32* @__E1000_RESETTING, align 4
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = call i32 @WARN_ON(i64 %35)
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %38 = call i32 @e1000e_down(%struct.e1000_adapter* %37, i32 0)
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %40 = call i32 @e1000_free_irq(%struct.e1000_adapter* %39)
  br label %41

41:                                               ; preds = %31, %1
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %43 = call i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter* %42)
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 0
  %46 = call i32 @e1000e_disable_pcie_master(i32* %45)
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @e1000e_down(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @e1000_free_irq(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_disable_pcie_master(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
