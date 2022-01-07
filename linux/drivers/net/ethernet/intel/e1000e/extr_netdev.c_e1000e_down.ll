; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, %struct.net_device*, i64, i64, i32, i32, i32, i32, %struct.e1000_hw }
%struct.net_device = type { i64 }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@__E1000_DOWN = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@FLAG2_NO_DISABLE_RX = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@e1000_pch2lan = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"failed to disable jumbo frame workaround mode\0A\00", align 1
@e1000_pch_spt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_down(%struct.e1000_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 4
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 11
  store %struct.e1000_hw* %13, %struct.e1000_hw** %6, align 8
  %14 = load i32, i32* @__E1000_DOWN, align 4
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 10
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @netif_carrier_off(%struct.net_device* %18)
  %20 = load i32, i32* @RCTL, align 4
  %21 = call i32 @er32(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FLAG2_NO_DISABLE_RX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @RCTL, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @E1000_RCTL_EN, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @ew32(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %28, %2
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @netif_stop_queue(%struct.net_device* %36)
  %38 = load i32, i32* @TCTL, align 4
  %39 = call i32 @er32(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @E1000_TCTL_EN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @TCTL, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ew32(i32 %44, i32 %45)
  %47 = call i32 (...) @e1e_flush()
  %48 = call i32 @usleep_range(i32 10000, i32 11000)
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %50 = call i32 @e1000_irq_disable(%struct.e1000_adapter* %49)
  %51 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %51, i32 0, i32 9
  %53 = call i32 @napi_synchronize(i32* %52)
  %54 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %54, i32 0, i32 8
  %56 = call i32 @del_timer_sync(i32* %55)
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %57, i32 0, i32 7
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %61 = call i32 @e1000e_update_stats(%struct.e1000_adapter* %60)
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 7
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %66 = call i32 @e1000e_flush_descriptors(%struct.e1000_adapter* %65)
  %67 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %67, i32 0, i32 6
  store i64 0, i64* %68, align 8
  %69 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @e1000_pch2lan, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %35
  %78 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %78, i32 0, i32 4
  %80 = load %struct.net_device*, %struct.net_device** %79, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ETH_DATA_LEN, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %87 = call i64 @e1000_lv_jumbo_workaround_ich8lan(%struct.e1000_hw* %86, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 @e_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %85, %77, %35
  %92 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pci_channel_offline(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %102 = call i32 @e1000e_reset(%struct.e1000_adapter* %101)
  br label %114

103:                                              ; preds = %97
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @e1000_pch_spt, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %112 = call i32 @e1000_flush_desc_rings(%struct.e1000_adapter* %111)
  br label %113

113:                                              ; preds = %110, %103
  br label %114

114:                                              ; preds = %113, %100
  br label %115

115:                                              ; preds = %114, %91
  %116 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @e1000_clean_tx_ring(i32 %118)
  %120 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @e1000_clean_rx_ring(i32 %122)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e1000_irq_disable(%struct.e1000_adapter*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @e1000e_update_stats(%struct.e1000_adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @e1000e_flush_descriptors(%struct.e1000_adapter*) #1

declare dso_local i64 @e1000_lv_jumbo_workaround_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @e1000e_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_flush_desc_rings(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_clean_tx_ring(i32) #1

declare dso_local i32 @e1000_clean_rx_ring(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
