; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.bcm_sysport_priv = type { %struct.TYPE_4__, %struct.net_device*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm_sysport_cb = type { i32, %struct.sk_buff* }

@RX_BUF_LENGTH = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"SKB alloc failed\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"DMA mapping failure\0A\00", align 1
@dma_addr = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"RX refill\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bcm_sysport_priv*, %struct.bcm_sysport_cb*)* @bcm_sysport_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bcm_sysport_rx_refill(%struct.bcm_sysport_priv* %0, %struct.bcm_sysport_cb* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca %struct.bcm_sysport_cb*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %4, align 8
  store %struct.bcm_sysport_cb* %1, %struct.bcm_sysport_cb** %5, align 8
  %11 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %12 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %19 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %18, i32 0, i32 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = load i32, i32* @RX_BUF_LENGTH, align 4
  %22 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %2
  %26 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %27 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %32 = load i32, i32* @rx_err, align 4
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = call i32 @netif_err(%struct.bcm_sysport_priv* %31, i32 %32, %struct.net_device* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %93

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RX_BUF_LENGTH, align 4
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @dma_map_single(%struct.device* %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @dma_mapping_error(%struct.device* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %35
  %48 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %49 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %53)
  %55 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %56 = load i32, i32* @rx_err, align 4
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = call i32 @netif_err(%struct.bcm_sysport_priv* %55, i32 %56, %struct.net_device* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %93

59:                                               ; preds = %35
  %60 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %5, align 8
  %61 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %60, i32 0, i32 1
  %62 = load %struct.sk_buff*, %struct.sk_buff** %61, align 8
  store %struct.sk_buff* %62, %struct.sk_buff** %9, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call i64 @likely(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %5, align 8
  %69 = load i32, i32* @dma_addr, align 4
  %70 = call i32 @dma_unmap_addr(%struct.bcm_sysport_cb* %68, i32 %69)
  %71 = load i32, i32* @RX_BUF_LENGTH, align 4
  %72 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %73 = call i32 @dma_unmap_single(%struct.device* %67, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %59
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %5, align 8
  %77 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %76, i32 0, i32 1
  store %struct.sk_buff* %75, %struct.sk_buff** %77, align 8
  %78 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %5, align 8
  %79 = load i32, i32* @dma_addr, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @dma_unmap_addr_set(%struct.bcm_sysport_cb* %78, i32 %79, i32 %80)
  %82 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %83 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %5, align 8
  %84 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @dma_desc_set_addr(%struct.bcm_sysport_priv* %82, i32 %85, i32 %86)
  %88 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %89 = load i32, i32* @rx_status, align 4
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = call i32 @netif_dbg(%struct.bcm_sysport_priv* %88, i32 %89, %struct.net_device* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %92, %struct.sk_buff** %3, align 8
  br label %93

93:                                               ; preds = %74, %47, %25
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %94
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netif_err(%struct.bcm_sysport_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bcm_sysport_cb*, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bcm_sysport_cb*, i32, i32) #1

declare dso_local i32 @dma_desc_set_addr(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.bcm_sysport_priv*, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
