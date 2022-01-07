; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i64, i64, i32, %struct.net_device*, %struct.e1000_hw }
%struct.net_device = type { i32 }
%struct.e1000_hw = type { i32 }

@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_down(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 4
  store %struct.e1000_hw* %8, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 3
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load i32, i32* @RCTL, align 4
  %13 = call i32 @er32(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @RCTL, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @E1000_RCTL_EN, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @ew32(i32 %14, i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @netif_tx_disable(%struct.net_device* %20)
  %22 = load i32, i32* @TCTL, align 4
  %23 = call i32 @er32(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @E1000_TCTL_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @TCTL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ew32(i32 %28, i32 %29)
  %31 = call i32 (...) @E1000_WRITE_FLUSH()
  %32 = call i32 @msleep(i32 10)
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @netif_carrier_off(%struct.net_device* %33)
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %35, i32 0, i32 2
  %37 = call i32 @napi_disable(i32* %36)
  %38 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %39 = call i32 @e1000_irq_disable(%struct.e1000_adapter* %38)
  %40 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %41 = call i32 @e1000_down_and_stop(%struct.e1000_adapter* %40)
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %47 = call i32 @e1000_reset(%struct.e1000_adapter* %46)
  %48 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %49 = call i32 @e1000_clean_all_tx_rings(%struct.e1000_adapter* %48)
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %51 = call i32 @e1000_clean_all_rx_rings(%struct.e1000_adapter* %50)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @e1000_irq_disable(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_down_and_stop(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_clean_all_tx_rings(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_clean_all_rx_rings(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
