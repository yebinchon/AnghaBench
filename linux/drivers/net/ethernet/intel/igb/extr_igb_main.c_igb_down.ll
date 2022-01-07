; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_2__**, i32, %struct.e1000_hw, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }
%struct.net_device = type { i32 }

@__IGB_DOWN = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@IGB_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@IGB_FLAG_VLAN_PROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_down(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 11
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 10
  store %struct.e1000_hw* %12, %struct.e1000_hw** %4, align 8
  %13 = load i32, i32* @__IGB_DOWN, align 4
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 9
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @E1000_RCTL, align 4
  %18 = call i32 @rd32(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @E1000_RCTL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @E1000_RCTL_EN, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @wr32(i32 %19, i32 %23)
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %26 = call i32 @igb_nfc_filter_exit(%struct.igb_adapter* %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_carrier_off(%struct.net_device* %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %29)
  %31 = load i32, i32* @E1000_TCTL, align 4
  %32 = call i32 @rd32(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @E1000_TCTL_EN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @E1000_TCTL, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @wr32(i32 %37, i32 %38)
  %40 = call i32 (...) @wrfl()
  %41 = call i32 @usleep_range(i32 10000, i32 11000)
  %42 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %43 = call i32 @igb_irq_disable(%struct.igb_adapter* %42)
  %44 = load i32, i32* @IGB_FLAG_NEED_LINK_UPDATE, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %85, %1
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %57, i32 0, i32 8
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %56
  %66 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %66, i32 0, i32 8
  %68 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %68, i64 %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @napi_synchronize(i32* %73)
  %75 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %75, i32 0, i32 8
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %77, i64 %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @napi_disable(i32* %82)
  br label %84

84:                                               ; preds = %65, %56
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %50

88:                                               ; preds = %50
  %89 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %89, i32 0, i32 7
  %91 = call i32 @del_timer_sync(i32* %90)
  %92 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %92, i32 0, i32 6
  %94 = call i32 @del_timer_sync(i32* %93)
  %95 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %96 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %95, i32 0, i32 5
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %99 = call i32 @igb_update_stats(%struct.igb_adapter* %98)
  %100 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %101 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %100, i32 0, i32 5
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %106 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @pci_channel_offline(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %88
  %113 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %114 = call i32 @igb_reset(%struct.igb_adapter* %113)
  br label %115

115:                                              ; preds = %112, %88
  %116 = load i32, i32* @IGB_FLAG_VLAN_PROMISC, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %119 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %123 = call i32 @igb_clean_all_tx_rings(%struct.igb_adapter* %122)
  %124 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %125 = call i32 @igb_clean_all_rx_rings(%struct.igb_adapter* %124)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_nfc_filter_exit(%struct.igb_adapter*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @igb_irq_disable(%struct.igb_adapter*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @igb_update_stats(%struct.igb_adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @igb_reset(%struct.igb_adapter*) #1

declare dso_local i32 @igb_clean_all_tx_rings(%struct.igb_adapter*) #1

declare dso_local i32 @igb_clean_all_rx_rings(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
