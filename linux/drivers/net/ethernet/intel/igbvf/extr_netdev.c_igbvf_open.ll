; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igbvf_adapter = type { i32, %struct.TYPE_5__*, i32, i32, %struct.e1000_hw }
%struct.TYPE_5__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__IGBVF_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__IGBVF_DOWN = common dso_local global i32 0, align 4
@EICR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @igbvf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.igbvf_adapter*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.igbvf_adapter* %8, %struct.igbvf_adapter** %4, align 8
  %9 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %9, i32 0, i32 4
  store %struct.e1000_hw* %10, %struct.e1000_hw** %5, align 8
  %11 = load i32, i32* @__IGBVF_TESTING, align 4
  %12 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %12, i32 0, i32 3
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %21 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @igbvf_setup_tx_resources(%struct.igbvf_adapter* %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %77

28:                                               ; preds = %19
  %29 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %30 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @igbvf_setup_rx_resources(%struct.igbvf_adapter* %29, %struct.TYPE_5__* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %72

37:                                               ; preds = %28
  %38 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %39 = call i32 @igbvf_configure(%struct.igbvf_adapter* %38)
  %40 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %41 = call i32 @igbvf_request_irq(%struct.igbvf_adapter* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %67

45:                                               ; preds = %37
  %46 = load i32, i32* @__IGBVF_DOWN, align 4
  %47 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %47, i32 0, i32 3
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @napi_enable(i32* %53)
  %55 = load i32, i32* @EICR, align 4
  %56 = call i32 @er32(i32 %55)
  %57 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %58 = call i32 @igbvf_irq_enable(%struct.igbvf_adapter* %57)
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %62, i32 0, i32 2
  %64 = load i64, i64* @jiffies, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i32 @mod_timer(i32* %63, i64 %65)
  store i32 0, i32* %2, align 4
  br label %81

67:                                               ; preds = %44
  %68 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = call i32 @igbvf_free_rx_resources(%struct.TYPE_5__* %70)
  br label %72

72:                                               ; preds = %67, %36
  %73 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @igbvf_free_tx_resources(i32 %75)
  br label %77

77:                                               ; preds = %72, %27
  %78 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %79 = call i32 @igbvf_reset(%struct.igbvf_adapter* %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %45, %16
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @igbvf_setup_tx_resources(%struct.igbvf_adapter*, i32) #1

declare dso_local i32 @igbvf_setup_rx_resources(%struct.igbvf_adapter*, %struct.TYPE_5__*) #1

declare dso_local i32 @igbvf_configure(%struct.igbvf_adapter*) #1

declare dso_local i32 @igbvf_request_irq(%struct.igbvf_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @igbvf_irq_enable(%struct.igbvf_adapter*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @igbvf_free_rx_resources(%struct.TYPE_5__*) #1

declare dso_local i32 @igbvf_free_tx_resources(i32) #1

declare dso_local i32 @igbvf_reset(%struct.igbvf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
