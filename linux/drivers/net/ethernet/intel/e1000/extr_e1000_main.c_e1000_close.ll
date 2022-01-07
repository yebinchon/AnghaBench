; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32*, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_CHECK_RESET_COUNT = common dso_local global i32 0, align 4
@__E1000_RESETTING = common dso_local global i32 0, align 4
@E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.e1000_adapter* %7, %struct.e1000_adapter** %3, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 3
  store %struct.e1000_hw* %9, %struct.e1000_hw** %4, align 8
  %10 = load i32, i32* @E1000_CHECK_RESET_COUNT, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i32, i32* @__E1000_RESETTING, align 4
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %18, 0
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i1 [ false, %11 ], [ %20, %17 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %11

25:                                               ; preds = %21
  %26 = load i32, i32* @__E1000_RESETTING, align 4
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = call i32 @WARN_ON(i64 %29)
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %32 = call i32 @e1000_down(%struct.e1000_adapter* %31)
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %34 = call i32 @e1000_power_down_phy(%struct.e1000_adapter* %33)
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %36 = call i32 @e1000_free_irq(%struct.e1000_adapter* %35)
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %38 = call i32 @e1000_free_all_tx_resources(%struct.e1000_adapter* %37)
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %40 = call i32 @e1000_free_all_rx_resources(%struct.e1000_adapter* %39)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %25
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @test_bit(i32 %51, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %48
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = load i32, i32* @ETH_P_8021Q, align 4
  %60 = call i32 @htons(i32 %59)
  %61 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @e1000_vlan_rx_kill_vid(%struct.net_device* %58, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %48, %25
  ret i32 0
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @e1000_down(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_power_down_phy(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_irq(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_all_tx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_all_rx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_vlan_rx_kill_vid(%struct.net_device*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
