; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__E1000_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@E1000_MNG_VLAN_NONE = common dso_local global i32 0, align 4
@E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@ICS = common dso_local global i32 0, align 4
@E1000_ICS_LSC = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %4, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 3
  store %struct.e1000_hw* %10, %struct.e1000_hw** %5, align 8
  %11 = load i32, i32* @__E1000_TESTING, align 4
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device* %20)
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %23 = call i32 @e1000_setup_all_tx_resources(%struct.e1000_adapter* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %81

27:                                               ; preds = %19
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %29 = call i32 @e1000_setup_all_rx_resources(%struct.e1000_adapter* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %78

33:                                               ; preds = %27
  %34 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %35 = call i32 @e1000_power_up_phy(%struct.e1000_adapter* %34)
  %36 = load i32, i32* @E1000_MNG_VLAN_NONE, align 4
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %48 = call i32 @e1000_update_mng_vlan(%struct.e1000_adapter* %47)
  br label %49

49:                                               ; preds = %46, %33
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %51 = call i32 @e1000_configure(%struct.e1000_adapter* %50)
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %53 = call i32 @e1000_request_irq(%struct.e1000_adapter* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %73

57:                                               ; preds = %49
  %58 = load i32, i32* @__E1000_DOWN, align 4
  %59 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %59, i32 0, i32 1
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 0
  %64 = call i32 @napi_enable(i32* %63)
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %66 = call i32 @e1000_irq_enable(%struct.e1000_adapter* %65)
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @netif_start_queue(%struct.net_device* %67)
  %69 = load i32, i32* @ICS, align 4
  %70 = load i32, i32* @E1000_ICS_LSC, align 4
  %71 = call i32 @ew32(i32 %69, i32 %70)
  %72 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %72, i32* %2, align 4
  br label %85

73:                                               ; preds = %56
  %74 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %75 = call i32 @e1000_power_down_phy(%struct.e1000_adapter* %74)
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %77 = call i32 @e1000_free_all_rx_resources(%struct.e1000_adapter* %76)
  br label %78

78:                                               ; preds = %73, %32
  %79 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %80 = call i32 @e1000_free_all_tx_resources(%struct.e1000_adapter* %79)
  br label %81

81:                                               ; preds = %78, %26
  %82 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %83 = call i32 @e1000_reset(%struct.e1000_adapter* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %57, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @e1000_setup_all_tx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_setup_all_rx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_power_up_phy(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_update_mng_vlan(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_configure(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_request_irq(%struct.e1000_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @e1000_irq_enable(%struct.e1000_adapter*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000_power_down_phy(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_all_rx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_all_tx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_reset(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
