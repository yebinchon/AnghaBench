; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.e1000_hw, i32, %struct.pci_dev* }
%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@__E1000_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FLAG_HAS_AMT = common dso_local global i32 0, align 4
@E1000_MNG_VLAN_NONE = common dso_local global i32 0, align 4
@E1000_MNG_DHCP_COOKIE_STATUS_VLAN = common dso_local global i32 0, align 4
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@E1000E_INT_MODE_LEGACY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Interrupt allocation failed\0A\00", align 1
@__E1000_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %4, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 8
  store %struct.e1000_hw* %11, %struct.e1000_hw** %5, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 10
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load i32, i32* @__E1000_TESTING, align 4
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 7
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %146

23:                                               ; preds = %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_get_sync(i32* %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_carrier_off(%struct.net_device* %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netif_stop_queue(%struct.net_device* %29)
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @e1000e_setup_tx_resources(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %139

38:                                               ; preds = %23
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @e1000e_setup_rx_resources(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %134

46:                                               ; preds = %38
  %47 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FLAG_HAS_AMT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %55 = call i32 @e1000e_get_hw_control(%struct.e1000_adapter* %54)
  %56 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %57 = call i32 @e1000e_reset(%struct.e1000_adapter* %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %60 = call i32 @e1000e_power_up_phy(%struct.e1000_adapter* %59)
  %61 = load i32, i32* @E1000_MNG_VLAN_NONE, align 4
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 8
  %64 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_VLAN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %58
  %73 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %74 = call i32 @e1000_update_mng_vlan(%struct.e1000_adapter* %73)
  br label %75

75:                                               ; preds = %72, %58
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %76, i32 0, i32 5
  %78 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %79 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %80 = call i32 @pm_qos_add_request(i32* %77, i32 %78, i32 %79)
  %81 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %82 = call i32 @e1000_configure(%struct.e1000_adapter* %81)
  %83 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %84 = call i32 @e1000_request_irq(%struct.e1000_adapter* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %122

88:                                               ; preds = %75
  %89 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @E1000E_INT_MODE_LEGACY, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %96 = call i32 @e1000_test_msi(%struct.e1000_adapter* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @e_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %122

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i32, i32* @__E1000_DOWN, align 4
  %104 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %104, i32 0, i32 7
  %106 = call i32 @clear_bit(i32 %103, i32* %105)
  %107 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %107, i32 0, i32 6
  %109 = call i32 @napi_enable(i32* %108)
  %110 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %111 = call i32 @e1000_irq_enable(%struct.e1000_adapter* %110)
  %112 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %112, i32 0, i32 2
  store i32 0, i32* %113, align 8
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %115 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  %117 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = call i32 @pm_runtime_put(i32* %118)
  %120 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %121 = call i32 @e1000e_trigger_lsc(%struct.e1000_adapter* %120)
  store i32 0, i32* %2, align 4
  br label %146

122:                                              ; preds = %99, %87
  %123 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %123, i32 0, i32 5
  %125 = call i32 @pm_qos_remove_request(i32* %124)
  %126 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %127 = call i32 @e1000e_release_hw_control(%struct.e1000_adapter* %126)
  %128 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %129 = call i32 @e1000_power_down_phy(%struct.e1000_adapter* %128)
  %130 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %131 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @e1000e_free_rx_resources(i32 %132)
  br label %134

134:                                              ; preds = %122, %45
  %135 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %136 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @e1000e_free_tx_resources(i32 %137)
  br label %139

139:                                              ; preds = %134, %37
  %140 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %141 = call i32 @e1000e_reset(%struct.e1000_adapter* %140)
  %142 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_put_sync(i32* %143)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %139, %102, %20
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @e1000e_setup_tx_resources(i32) #1

declare dso_local i32 @e1000e_setup_rx_resources(i32) #1

declare dso_local i32 @e1000e_get_hw_control(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_power_up_phy(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_update_mng_vlan(%struct.e1000_adapter*) #1

declare dso_local i32 @pm_qos_add_request(i32*, i32, i32) #1

declare dso_local i32 @e1000_configure(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_request_irq(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_test_msi(%struct.e1000_adapter*) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @e1000_irq_enable(%struct.e1000_adapter*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @e1000e_trigger_lsc(%struct.e1000_adapter*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @e1000e_release_hw_control(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_power_down_phy(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_free_rx_resources(i32) #1

declare dso_local i32 @e1000e_free_tx_resources(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
