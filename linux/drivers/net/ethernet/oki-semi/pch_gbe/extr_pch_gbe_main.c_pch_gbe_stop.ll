; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pch_gbe_adapter = type { i32, i32, i32, %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pch_gbe_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.pch_gbe_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.pch_gbe_adapter* %6, %struct.pch_gbe_adapter** %3, align 8
  %7 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %7, i32 0, i32 3
  store %struct.pch_gbe_hw* %8, %struct.pch_gbe_hw** %4, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %10 = call i32 @pch_gbe_down(%struct.pch_gbe_adapter* %9)
  %11 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %17 = call i32 @pch_gbe_phy_power_down(%struct.pch_gbe_hw* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %20 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pch_gbe_free_tx_resources(%struct.pch_gbe_adapter* %19, i32 %22)
  %24 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %25 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pch_gbe_free_rx_resources(%struct.pch_gbe_adapter* %24, i32 %27)
  ret i32 0
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_down(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_phy_power_down(%struct.pch_gbe_hw*) #1

declare dso_local i32 @pch_gbe_free_tx_resources(%struct.pch_gbe_adapter*, i32) #1

declare dso_local i32 @pch_gbe_free_rx_resources(%struct.pch_gbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
