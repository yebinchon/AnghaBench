; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_2__**, i32, %struct.igc_hw, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.igc_hw = type { i32 }
%struct.net_device = type { i32 }

@__IGC_DOWN = common dso_local global i32 0, align 4
@IGC_RCTL = common dso_local global i32 0, align 4
@IGC_RCTL_EN = common dso_local global i32 0, align 4
@IGC_TCTL = common dso_local global i32 0, align 4
@IGC_TCTL_EN = common dso_local global i32 0, align 4
@IGC_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@IGC_FLAG_VLAN_PROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igc_down(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.igc_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %8 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %8, i32 0, i32 11
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %11, i32 0, i32 10
  store %struct.igc_hw* %12, %struct.igc_hw** %4, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @__IGC_DOWN, align 4
  %14 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %14, i32 0, i32 9
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @IGC_RCTL, align 4
  %18 = call i32 @rd32(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @IGC_RCTL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IGC_RCTL_EN, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @wr32(i32 %19, i32 %23)
  %25 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %26 = call i32 @igc_nfc_filter_exit(%struct.igc_adapter* %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_trans_update(%struct.net_device* %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netif_carrier_off(%struct.net_device* %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %31)
  %33 = load i32, i32* @IGC_TCTL, align 4
  %34 = call i32 @rd32(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @IGC_TCTL_EN, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @IGC_TCTL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @wr32(i32 %39, i32 %40)
  %42 = call i32 (...) @wrfl()
  %43 = call i32 @usleep_range(i32 10000, i32 20000)
  %44 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %45 = call i32 @igc_irq_disable(%struct.igc_adapter* %44)
  %46 = load i32, i32* @IGC_FLAG_NEED_LINK_UPDATE, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %87, %1
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %90

58:                                               ; preds = %52
  %59 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %59, i32 0, i32 8
  %61 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %61, i64 %63
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = icmp ne %struct.TYPE_2__* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %58
  %68 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %68, i32 0, i32 8
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @napi_synchronize(i32* %75)
  %77 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %77, i32 0, i32 8
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 %81
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @napi_disable(i32* %84)
  br label %86

86:                                               ; preds = %67, %58
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %52

90:                                               ; preds = %52
  %91 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %91, i32 0, i32 7
  %93 = call i32 @del_timer_sync(i32* %92)
  %94 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %94, i32 0, i32 6
  %96 = call i32 @del_timer_sync(i32* %95)
  %97 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %97, i32 0, i32 5
  %99 = call i32 @spin_lock(i32* %98)
  %100 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %101 = call i32 @igc_update_stats(%struct.igc_adapter* %100)
  %102 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %102, i32 0, i32 5
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @pci_channel_offline(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %90
  %115 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %116 = call i32 @igc_reset(%struct.igc_adapter* %115)
  br label %117

117:                                              ; preds = %114, %90
  %118 = load i32, i32* @IGC_FLAG_VLAN_PROMISC, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %125 = call i32 @igc_clean_all_tx_rings(%struct.igc_adapter* %124)
  %126 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %127 = call i32 @igc_clean_all_rx_rings(%struct.igc_adapter* %126)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igc_nfc_filter_exit(%struct.igc_adapter*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @igc_irq_disable(%struct.igc_adapter*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @igc_update_stats(%struct.igc_adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @igc_reset(%struct.igc_adapter*) #1

declare dso_local i32 @igc_clean_all_tx_rings(%struct.igc_adapter*) #1

declare dso_local i32 @igc_clean_all_rx_rings(%struct.igc_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
