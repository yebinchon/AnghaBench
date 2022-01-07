; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32, i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@__ATL2_DOWN = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl2_adapter*)* @atl2_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_down(%struct.atl2_adapter* %0) #0 {
  %2 = alloca %struct.atl2_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %2, align 8
  %4 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %4, i32 0, i32 7
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load i32, i32* @__ATL2_DOWN, align 4
  %8 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %8, i32 0, i32 6
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @netif_tx_disable(%struct.net_device* %11)
  %13 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %13, i32 0, i32 5
  %15 = call i32 @atl2_reset_hw(i32* %14)
  %16 = call i32 @msleep(i32 1)
  %17 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %18 = call i32 @atl2_irq_disable(%struct.atl2_adapter* %17)
  %19 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %19, i32 0, i32 4
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %22, i32 0, i32 3
  %24 = call i32 @del_timer_sync(i32* %23)
  %25 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %25, i32 0, i32 2
  %27 = call i32 @clear_bit(i32 0, i32* %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netif_carrier_off(%struct.net_device* %28)
  %30 = load i32, i32* @SPEED_0, align 4
  %31 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.atl2_adapter*, %struct.atl2_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @atl2_reset_hw(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl2_irq_disable(%struct.atl2_adapter*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
