; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igbvf_adapter = type { i32, i32, i32 }

@__IGBVF_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @igbvf_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.igbvf_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.igbvf_adapter* %5, %struct.igbvf_adapter** %3, align 8
  %6 = load i32, i32* @__IGBVF_RESETTING, align 4
  %7 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %7, i32 0, i32 2
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %12 = call i32 @igbvf_down(%struct.igbvf_adapter* %11)
  %13 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %14 = call i32 @igbvf_free_irq(%struct.igbvf_adapter* %13)
  %15 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @igbvf_free_tx_resources(i32 %17)
  %19 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @igbvf_free_rx_resources(i32 %21)
  ret i32 0
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @igbvf_down(%struct.igbvf_adapter*) #1

declare dso_local i32 @igbvf_free_irq(%struct.igbvf_adapter*) #1

declare dso_local i32 @igbvf_free_tx_resources(i32) #1

declare dso_local i32 @igbvf_free_rx_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
