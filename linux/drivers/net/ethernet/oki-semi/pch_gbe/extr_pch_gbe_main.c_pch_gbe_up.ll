; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.net_device*, i32, i32, %struct.TYPE_5__, i32, %struct.pch_gbe_rx_ring*, %struct.pch_gbe_tx_ring* }
%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pch_gbe_rx_ring = type { i32 }
%struct.pch_gbe_tx_ring = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error: Invalid MAC address\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Error: can't bring device up - irq request failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Error: can't bring device up - alloc rx buffers pool failed\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_up(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pch_gbe_tx_ring*, align 8
  %6 = alloca %struct.pch_gbe_rx_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  %8 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %11, i32 0, i32 6
  %13 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %12, align 8
  store %struct.pch_gbe_tx_ring* %13, %struct.pch_gbe_tx_ring** %5, align 8
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 5
  %16 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %15, align 8
  store %struct.pch_gbe_rx_ring* %16, %struct.pch_gbe_rx_ring** %6, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @is_valid_ether_addr(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %96

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @pch_gbe_set_multi(%struct.net_device* %30)
  %32 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %33 = call i32 @pch_gbe_setup_tctl(%struct.pch_gbe_adapter* %32)
  %34 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %35 = call i32 @pch_gbe_configure_tx(%struct.pch_gbe_adapter* %34)
  %36 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %37 = call i32 @pch_gbe_setup_rctl(%struct.pch_gbe_adapter* %36)
  %38 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %39 = call i32 @pch_gbe_configure_rx(%struct.pch_gbe_adapter* %38)
  %40 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %41 = call i32 @pch_gbe_request_irq(%struct.pch_gbe_adapter* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @netdev_err(%struct.net_device* %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %96

47:                                               ; preds = %29
  %48 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %49 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %50 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pch_gbe_alloc_rx_buffers_pool(%struct.pch_gbe_adapter* %48, %struct.pch_gbe_rx_ring* %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %93

59:                                               ; preds = %47
  %60 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %61 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %62 = call i32 @pch_gbe_alloc_tx_buffers(%struct.pch_gbe_adapter* %60, %struct.pch_gbe_tx_ring* %61)
  %63 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %64 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %65 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %66 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter* %63, %struct.pch_gbe_rx_ring* %64, i32 %67)
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %74, i32 0, i32 3
  %76 = call i32 @pch_gbe_enable_dma_rx(%struct.TYPE_5__* %75)
  %77 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %77, i32 0, i32 3
  %79 = call i32 @pch_gbe_enable_mac_rx(%struct.TYPE_5__* %78)
  %80 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %80, i32 0, i32 2
  %82 = load i32, i32* @jiffies, align 4
  %83 = call i32 @mod_timer(i32* %81, i32 %82)
  %84 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %84, i32 0, i32 1
  %86 = call i32 @napi_enable(i32* %85)
  %87 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %88 = call i32 @pch_gbe_irq_enable(%struct.pch_gbe_adapter* %87)
  %89 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %89, i32 0, i32 0
  %91 = load %struct.net_device*, %struct.net_device** %90, align 8
  %92 = call i32 @netif_start_queue(%struct.net_device* %91)
  store i32 0, i32* %2, align 4
  br label %98

93:                                               ; preds = %56
  %94 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %95 = call i32 @pch_gbe_free_irq(%struct.pch_gbe_adapter* %94)
  br label %96

96:                                               ; preds = %93, %44, %26
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %59
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @pch_gbe_set_multi(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_setup_tctl(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_configure_tx(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_setup_rctl(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_configure_rx(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_request_irq(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_alloc_rx_buffers_pool(%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32) #1

declare dso_local i32 @pch_gbe_alloc_tx_buffers(%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32) #1

declare dso_local i32 @pch_gbe_enable_dma_rx(%struct.TYPE_5__*) #1

declare dso_local i32 @pch_gbe_enable_mac_rx(%struct.TYPE_5__*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @pch_gbe_irq_enable(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_free_irq(%struct.pch_gbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
