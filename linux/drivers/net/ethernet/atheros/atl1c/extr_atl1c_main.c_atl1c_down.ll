; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, i32, i32, i32, i32, i64, %struct.net_device* }
%struct.net_device = type { i32 }

@__AT_DOWN = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_down(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %4 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %4, i32 0, i32 6
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %8 = call i32 @atl1c_del_timer(%struct.atl1c_adapter* %7)
  %9 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @__AT_DOWN, align 4
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 4
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netif_carrier_off(%struct.net_device* %15)
  %17 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %17, i32 0, i32 3
  %19 = call i32 @napi_disable(i32* %18)
  %20 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %21 = call i32 @atl1c_irq_disable(%struct.atl1c_adapter* %20)
  %22 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %23 = call i32 @atl1c_free_irq(%struct.atl1c_adapter* %22)
  %24 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %24, i32 0, i32 2
  %26 = call i32 @atl1c_disable_l0s_l1(i32* %25)
  %27 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %27, i32 0, i32 2
  %29 = call i32 @atl1c_reset_mac(i32* %28)
  %30 = call i32 @msleep(i32 1)
  %31 = load i32, i32* @SPEED_0, align 4
  %32 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %37 = call i32 @atl1c_reset_dma_ring(%struct.atl1c_adapter* %36)
  ret void
}

declare dso_local i32 @atl1c_del_timer(%struct.atl1c_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @atl1c_irq_disable(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_free_irq(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_disable_l0s_l1(i32*) #1

declare dso_local i32 @atl1c_reset_mac(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl1c_reset_dma_ring(%struct.atl1c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
