; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pch_gbe_adapter = type { i32, i32, i32, %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Success End\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Error End\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pch_gbe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.pch_gbe_adapter* %8, %struct.pch_gbe_adapter** %4, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 3
  store %struct.pch_gbe_hw* %10, %struct.pch_gbe_hw** %5, align 8
  %11 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %12 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pch_gbe_setup_tx_resources(%struct.pch_gbe_adapter* %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %59

19:                                               ; preds = %1
  %20 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %21 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pch_gbe_setup_rx_resources(%struct.pch_gbe_adapter* %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %53

28:                                               ; preds = %19
  %29 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %30 = call i32 @pch_gbe_phy_power_up(%struct.pch_gbe_hw* %29)
  %31 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %32 = call i32 @pch_gbe_up(%struct.pch_gbe_adapter* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @netdev_dbg(%struct.net_device* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %65

39:                                               ; preds = %35
  %40 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %46 = call i32 @pch_gbe_phy_power_down(%struct.pch_gbe_hw* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %49 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pch_gbe_free_rx_resources(%struct.pch_gbe_adapter* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %27
  %54 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %55 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pch_gbe_free_tx_resources(%struct.pch_gbe_adapter* %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %18
  %60 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %61 = call i32 @pch_gbe_reset(%struct.pch_gbe_adapter* %60)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @netdev_err(%struct.net_device* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %59, %36
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_setup_tx_resources(%struct.pch_gbe_adapter*, i32) #1

declare dso_local i32 @pch_gbe_setup_rx_resources(%struct.pch_gbe_adapter*, i32) #1

declare dso_local i32 @pch_gbe_phy_power_up(%struct.pch_gbe_hw*) #1

declare dso_local i32 @pch_gbe_up(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @pch_gbe_phy_power_down(%struct.pch_gbe_hw*) #1

declare dso_local i32 @pch_gbe_free_rx_resources(%struct.pch_gbe_adapter*, i32) #1

declare dso_local i32 @pch_gbe_free_tx_resources(%struct.pch_gbe_adapter*, i32) #1

declare dso_local i32 @pch_gbe_reset(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
