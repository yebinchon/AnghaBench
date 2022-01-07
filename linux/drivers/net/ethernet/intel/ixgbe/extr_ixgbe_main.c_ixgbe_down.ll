; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_4__*, %struct.ixgbe_hw, i32, i32, i32, i32, i64*, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.net_device = type { i32 }

@__IXGBE_DOWN = common dso_local global i32 0, align 4
@__IXGBE_RESET_REQUESTED = common dso_local global i32 0, align 4
@IXGBE_FLAG2_FDIR_REQUIRES_REINIT = common dso_local global i32 0, align 4
@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@IXGBE_EITRSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_down(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 9
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 3
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %4, align 8
  %11 = load i32, i32* @__IXGBE_DOWN, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 7
  %14 = call i64 @test_and_set_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %121

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @netif_tx_disable(%struct.net_device* %22)
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %25 = call i32 @ixgbe_disable_rx(%struct.ixgbe_adapter* %24)
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 8
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = call i32 (...) @synchronize_rcu()
  br label %34

34:                                               ; preds = %32, %17
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %36 = call i32 @ixgbe_irq_disable(%struct.ixgbe_adapter* %35)
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %38 = call i32 @ixgbe_napi_disable_all(%struct.ixgbe_adapter* %37)
  %39 = load i32, i32* @__IXGBE_RESET_REQUESTED, align 4
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %40, i32 0, i32 7
  %42 = call i32 @clear_bit(i32 %39, i32* %41)
  %43 = load i32, i32* @IXGBE_FLAG2_FDIR_REQUIRES_REINIT, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %55, i32 0, i32 4
  %57 = call i32 @del_timer_sync(i32* %56)
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %34
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %63, i32 0, i32 3
  %65 = load i32, i32* @IXGBE_EITRSEL, align 4
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %64, i32 %65, i32 0)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %81, %62
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %67

84:                                               ; preds = %67
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %86 = call i32 @ixgbe_ping_all_vfs(%struct.ixgbe_adapter* %85)
  %87 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %88 = call i32 @ixgbe_disable_tx_rx(%struct.ixgbe_adapter* %87)
  br label %89

89:                                               ; preds = %84, %34
  %90 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %91 = call i32 @ixgbe_disable_tx(%struct.ixgbe_adapter* %90)
  %92 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pci_channel_offline(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %89
  %98 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %99 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %98)
  br label %100

100:                                              ; preds = %97, %89
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %102 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %104, align 8
  %106 = icmp ne i32 (%struct.ixgbe_hw.0*)* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %111, align 8
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %114 = bitcast %struct.ixgbe_hw* %113 to %struct.ixgbe_hw.0*
  %115 = call i32 %112(%struct.ixgbe_hw.0* %114)
  br label %116

116:                                              ; preds = %107, %100
  %117 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %118 = call i32 @ixgbe_clean_all_tx_rings(%struct.ixgbe_adapter* %117)
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %120 = call i32 @ixgbe_clean_all_rx_rings(%struct.ixgbe_adapter* %119)
  br label %121

121:                                              ; preds = %116, %16
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @ixgbe_disable_rx(%struct.ixgbe_adapter*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @ixgbe_irq_disable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_napi_disable_all(%struct.ixgbe_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_ping_all_vfs(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_disable_tx_rx(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_disable_tx(%struct.ixgbe_adapter*) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_clean_all_tx_rings(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_clean_all_rx_rings(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
