; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.atl1c_adapter = type { i32, i64, %struct.atl1c_hw }
%struct.atl1c_hw = type { i32 }

@__AT_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy power saving failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @atl1c_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atl1c_adapter*, align 8
  %5 = alloca %struct.atl1c_hw*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.net_device* @dev_get_drvdata(%struct.device* %7)
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.atl1c_adapter* %10, %struct.atl1c_adapter** %4, align 8
  %11 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %11, i32 0, i32 2
  store %struct.atl1c_hw* %12, %struct.atl1c_hw** %5, align 8
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %17 = call i32 @atl1c_disable_l0s_l1(%struct.atl1c_hw* %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i64 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @__AT_RESETTING, align 4
  %23 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %23, i32 0, i32 0
  %25 = call i32 @test_bit(i32 %22, i32* %24)
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %28 = call i32 @atl1c_down(%struct.atl1c_adapter* %27)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @netif_device_detach(%struct.net_device* %30)
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %36 = call i64 @atl1c_phy_to_ps_link(%struct.atl1c_hw* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = call i32 @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.atl1c_hw*, %struct.atl1c_hw** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @atl1c_power_saving(%struct.atl1c_hw* %43, i64 %44)
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atl1c_disable_l0s_l1(%struct.atl1c_hw*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atl1c_down(%struct.atl1c_adapter*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @atl1c_phy_to_ps_link(%struct.atl1c_hw*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @atl1c_power_saving(%struct.atl1c_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
