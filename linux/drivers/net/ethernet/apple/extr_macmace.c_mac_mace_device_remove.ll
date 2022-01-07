; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_macmace.c_mac_mace_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_macmace.c_mac_mace_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.mace_data = type { i32, i32, i32, i32, i32 }

@IRQ_MAC_MACE_DMA = common dso_local global i32 0, align 4
@N_RX_RING = common dso_local global i32 0, align 4
@MACE_BUFF_SIZE = common dso_local global i32 0, align 4
@N_TX_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mac_mace_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_mace_device_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mace_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mace_data* @netdev_priv(%struct.net_device* %7)
  store %struct.mace_data* %8, %struct.mace_data** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.net_device* %14)
  %16 = load i32, i32* @IRQ_MAC_MACE_DMA, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.net_device* %17)
  %19 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %20 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @N_RX_RING, align 4
  %23 = load i32, i32* @MACE_BUFF_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %26 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %29 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dma_free_coherent(i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %33 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @N_TX_RING, align 4
  %36 = load i32, i32* @MACE_BUFF_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %39 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %42 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dma_free_coherent(i32 %34, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @free_netdev(%struct.net_device* %45)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mace_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
