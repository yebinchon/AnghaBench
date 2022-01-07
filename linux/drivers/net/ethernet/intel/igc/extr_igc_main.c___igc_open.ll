; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c___igc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c___igc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igc_adapter = type { i32, i32, %struct.TYPE_3__**, i32, i32, i32, %struct.igc_hw }
%struct.TYPE_3__ = type { i32 }
%struct.igc_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__IGC_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__IGC_DOWN = common dso_local global i32 0, align 4
@IGC_ICR = common dso_local global i32 0, align 4
@IGC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__igc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igc_open(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.igc_adapter*, align 8
  %7 = alloca %struct.igc_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.igc_adapter* %11, %struct.igc_adapter** %6, align 8
  %12 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %12, i32 0, i32 6
  store %struct.igc_hw* %13, %struct.igc_hw** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @__IGC_TESTING, align 4
  %15 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %15, i32 0, i32 3
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %121

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netif_carrier_off(%struct.net_device* %25)
  %27 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %28 = call i32 @igc_setup_all_tx_resources(%struct.igc_adapter* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %117

32:                                               ; preds = %24
  %33 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %34 = call i32 @igc_setup_all_rx_resources(%struct.igc_adapter* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %114

38:                                               ; preds = %32
  %39 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %40 = call i32 @igc_power_up_link(%struct.igc_adapter* %39)
  %41 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %42 = call i32 @igc_configure(%struct.igc_adapter* %41)
  %43 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %44 = call i32 @igc_request_irq(%struct.igc_adapter* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %107

48:                                               ; preds = %38
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %104

57:                                               ; preds = %48
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %58, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %104

66:                                               ; preds = %57
  %67 = load i32, i32* @__IGC_DOWN, align 4
  %68 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %68, i32 0, i32 3
  %70 = call i32 @clear_bit(i32 %67, i32* %69)
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %87, %66
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %80, i64 %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @napi_enable(i32* %85)
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %71

90:                                               ; preds = %71
  %91 = load i32, i32* @IGC_ICR, align 4
  %92 = call i32 @rd32(i32 %91)
  %93 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %94 = call i32 @igc_irq_enable(%struct.igc_adapter* %93)
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 @netif_tx_start_all_queues(%struct.net_device* %95)
  %97 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %98 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %100, i32 0, i32 1
  %102 = call i32 @schedule_work(i32* %101)
  %103 = load i32, i32* @IGC_SUCCESS, align 4
  store i32 %103, i32* %3, align 4
  br label %121

104:                                              ; preds = %65, %56
  %105 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %106 = call i32 @igc_free_irq(%struct.igc_adapter* %105)
  br label %107

107:                                              ; preds = %104, %47
  %108 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %109 = call i32 @igc_release_hw_control(%struct.igc_adapter* %108)
  %110 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %111 = call i32 @igc_power_down_link(%struct.igc_adapter* %110)
  %112 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %113 = call i32 @igc_free_all_rx_resources(%struct.igc_adapter* %112)
  br label %114

114:                                              ; preds = %107, %37
  %115 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %116 = call i32 @igc_free_all_tx_resources(%struct.igc_adapter* %115)
  br label %117

117:                                              ; preds = %114, %31
  %118 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %119 = call i32 @igc_reset(%struct.igc_adapter* %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %90, %19
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @igc_setup_all_tx_resources(%struct.igc_adapter*) #1

declare dso_local i32 @igc_setup_all_rx_resources(%struct.igc_adapter*) #1

declare dso_local i32 @igc_power_up_link(%struct.igc_adapter*) #1

declare dso_local i32 @igc_configure(%struct.igc_adapter*) #1

declare dso_local i32 @igc_request_irq(%struct.igc_adapter*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igc_irq_enable(%struct.igc_adapter*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @igc_free_irq(%struct.igc_adapter*) #1

declare dso_local i32 @igc_release_hw_control(%struct.igc_adapter*) #1

declare dso_local i32 @igc_power_down_link(%struct.igc_adapter*) #1

declare dso_local i32 @igc_free_all_rx_resources(%struct.igc_adapter*) #1

declare dso_local i32 @igc_free_all_tx_resources(%struct.igc_adapter*) #1

declare dso_local i32 @igc_reset(%struct.igc_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
