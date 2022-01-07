; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__**, i32, i32*, i32, %struct.ixgbe_hw, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_hw = type { i32 }
%struct.net_device = type { i32 }

@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_SWFLSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbevf_down(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 10
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %11, i32 0, i32 9
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %4, align 8
  %13 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 8
  %16 = call i64 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %117

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %28 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ixgbevf_disable_rx_queue(%struct.ixgbevf_adapter* %27, i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %20

39:                                               ; preds = %20
  %40 = call i32 @usleep_range(i32 10000, i32 20000)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %41)
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @netif_carrier_off(%struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @netif_tx_disable(%struct.net_device* %45)
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %48 = call i32 @ixgbevf_irq_disable(%struct.ixgbevf_adapter* %47)
  %49 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %50 = call i32 @ixgbevf_napi_disable_all(%struct.ixgbevf_adapter* %49)
  %51 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %51, i32 0, i32 6
  %53 = call i32 @del_timer_sync(i32* %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %75, %39
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %61, i32 0, i32 5
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @IXGBE_VFTXDCTL(i32 %71)
  %73 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %74 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %70, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %54

78:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %100, %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %79
  %86 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %86, i32 0, i32 4
  %88 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %88, i64 %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %7, align 4
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @IXGBE_VFTXDCTL(i32 %96)
  %98 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %99 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %95, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %85
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %79

103:                                              ; preds = %79
  %104 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pci_channel_offline(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %111 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %110)
  br label %112

112:                                              ; preds = %109, %103
  %113 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %114 = call i32 @ixgbevf_clean_all_tx_rings(%struct.ixgbevf_adapter* %113)
  %115 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %116 = call i32 @ixgbevf_clean_all_rx_rings(%struct.ixgbevf_adapter* %115)
  br label %117

117:                                              ; preds = %112, %18
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ixgbevf_disable_rx_queue(%struct.ixgbevf_adapter*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_irq_disable(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_napi_disable_all(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFTXDCTL(i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @ixgbevf_reset(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_clean_all_tx_rings(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_clean_all_rx_rings(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
