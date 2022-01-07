; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c___igc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c___igc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igc_adapter = type { i32 }

@__IGC_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__igc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igc_close(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igc_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.igc_adapter* %7, %struct.igc_adapter** %5, align 8
  %8 = load i32, i32* @__IGC_RESETTING, align 4
  %9 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %9, i32 0, i32 0
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %14 = call i32 @igc_down(%struct.igc_adapter* %13)
  %15 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %16 = call i32 @igc_release_hw_control(%struct.igc_adapter* %15)
  %17 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %18 = call i32 @igc_free_irq(%struct.igc_adapter* %17)
  %19 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %20 = call i32 @igc_free_all_tx_resources(%struct.igc_adapter* %19)
  %21 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %22 = call i32 @igc_free_all_rx_resources(%struct.igc_adapter* %21)
  ret i32 0
}

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @igc_down(%struct.igc_adapter*) #1

declare dso_local i32 @igc_release_hw_control(%struct.igc_adapter*) #1

declare dso_local i32 @igc_free_irq(%struct.igc_adapter*) #1

declare dso_local i32 @igc_free_all_tx_resources(%struct.igc_adapter*) #1

declare dso_local i32 @igc_free_all_rx_resources(%struct.igc_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
