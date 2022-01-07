; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_rx_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_rx_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ksz_hw = type { i32 }
%struct.ksz_desc = type { i32 }
%union.desc_stat = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { i32 }
%struct.ksz_dma_buf = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_RX_CSUM_UDP = common dso_local global i32 0, align 4
@DMA_RX_CSUM_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ksz_hw*, %struct.ksz_desc*, i32)* @rx_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_proc(%struct.net_device* %0, %struct.ksz_hw* %1, %struct.ksz_desc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.desc_stat, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ksz_hw*, align 8
  %9 = alloca %struct.ksz_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dev_priv*, align 8
  %12 = alloca %struct.dev_info*, align 8
  %13 = alloca %struct.ksz_dma_buf*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %union.desc_stat, %union.desc_stat* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %3, i32* %17, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.ksz_hw* %1, %struct.ksz_hw** %8, align 8
  store %struct.ksz_desc* %2, %struct.ksz_desc** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.dev_priv* %19, %struct.dev_priv** %11, align 8
  %20 = load %struct.dev_priv*, %struct.dev_priv** %11, align 8
  %21 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %20, i32 0, i32 0
  %22 = load %struct.dev_info*, %struct.dev_info** %21, align 8
  store %struct.dev_info* %22, %struct.dev_info** %12, align 8
  %23 = bitcast %union.desc_stat* %6 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %28 = call %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc* %27)
  store %struct.ksz_dma_buf* %28, %struct.ksz_dma_buf** %13, align 8
  %29 = load %struct.dev_info*, %struct.dev_info** %12, align 8
  %30 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %13, align 8
  %33 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 4
  %37 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %38 = call i32 @pci_dma_sync_single_for_cpu(i32 %31, i32 %34, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %4
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 2
  %43 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %40, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %14, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %96

54:                                               ; preds = %39
  %55 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %56 = call i32 @skb_reserve(%struct.sk_buff* %55, i32 2)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %58 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %13, align 8
  %59 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @skb_put_data(%struct.sk_buff* %57, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %54
  %66 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  %68 = call i32 @eth_type_trans(%struct.sk_buff* %66, %struct.net_device* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ksz_hw*, %struct.ksz_hw** %8, align 8
  %72 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DMA_RX_CSUM_UDP, align 4
  %75 = load i32, i32* @DMA_RX_CSUM_TCP, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %81 = call i32 @csum_verified(%struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %79, %65
  %83 = load %struct.net_device*, %struct.net_device** %7, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %88
  store i32 %93, i32* %91, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %95 = call i32 @netif_rx(%struct.sk_buff* %94)
  store i32 %95, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %82, %46
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc*) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @csum_verified(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
