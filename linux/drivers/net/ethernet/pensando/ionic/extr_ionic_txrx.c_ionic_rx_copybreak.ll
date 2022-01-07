; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_copybreak.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_copybreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, %struct.net_device* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.ionic_desc_info = type { %struct.ionic_rxq_desc* }
%struct.ionic_rxq_desc = type { i32, i32 }
%struct.ionic_cq_info = type { %struct.ionic_rxq_comp* }
%struct.ionic_rxq_comp = type { i32 }
%struct.sk_buff = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, %struct.sk_buff**)* @ionic_rx_copybreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_rx_copybreak(%struct.ionic_queue* %0, %struct.ionic_desc_info* %1, %struct.ionic_cq_info* %2, %struct.sk_buff** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ionic_queue*, align 8
  %7 = alloca %struct.ionic_desc_info*, align 8
  %8 = alloca %struct.ionic_cq_info*, align 8
  %9 = alloca %struct.sk_buff**, align 8
  %10 = alloca %struct.ionic_rxq_comp*, align 8
  %11 = alloca %struct.ionic_rxq_desc*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %6, align 8
  store %struct.ionic_desc_info* %1, %struct.ionic_desc_info** %7, align 8
  store %struct.ionic_cq_info* %2, %struct.ionic_cq_info** %8, align 8
  store %struct.sk_buff** %3, %struct.sk_buff*** %9, align 8
  %17 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %8, align 8
  %18 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %17, i32 0, i32 0
  %19 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %18, align 8
  store %struct.ionic_rxq_comp* %19, %struct.ionic_rxq_comp** %10, align 8
  %20 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %21 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %20, i32 0, i32 0
  %22 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %21, align 8
  store %struct.ionic_rxq_desc* %22, %struct.ionic_rxq_desc** %11, align 8
  %23 = load %struct.ionic_queue*, %struct.ionic_queue** %6, align 8
  %24 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %12, align 8
  %28 = load %struct.ionic_queue*, %struct.ionic_queue** %6, align 8
  %29 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.device*, %struct.device** %33, align 8
  store %struct.device* %34, %struct.device** %13, align 8
  %35 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %10, align 8
  %36 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le16_to_cpu(i32 %37)
  store i64 %38, i64* %15, align 8
  %39 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %11, align 8
  %40 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le16_to_cpu(i32 %41)
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load %struct.ionic_queue*, %struct.ionic_queue** %6, align 8
  %45 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %43, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %4
  %51 = load %struct.device*, %struct.device** %13, align 8
  %52 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %11, align 8
  %53 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le64_to_cpu(i32 %54)
  %56 = trunc i64 %55 to i32
  %57 = load i64, i64* %16, align 8
  %58 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(%struct.device* %51, i32 %56, i64 %57, i32 %58)
  store i32 0, i32* %5, align 4
  br label %102

60:                                               ; preds = %4
  %61 = load %struct.net_device*, %struct.net_device** %12, align 8
  %62 = load i64, i64* %15, align 8
  %63 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %61, i64 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %14, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %13, align 8
  %68 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %11, align 8
  %69 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le64_to_cpu(i32 %70)
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* %16, align 8
  %74 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %75 = call i32 @dma_unmap_single(%struct.device* %67, i32 %72, i64 %73, i32 %74)
  store i32 0, i32* %5, align 4
  br label %102

76:                                               ; preds = %60
  %77 = load %struct.device*, %struct.device** %13, align 8
  %78 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %11, align 8
  %79 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le64_to_cpu(i32 %80)
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* %15, align 8
  %84 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %85 = call i32 @dma_sync_single_for_cpu(%struct.device* %77, i32 %82, i64 %83, i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %89, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %15, align 8
  %94 = call i32 @memcpy(i32 %88, i32 %92, i64 %93)
  %95 = load %struct.ionic_queue*, %struct.ionic_queue** %6, align 8
  %96 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %97 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %97, align 8
  %99 = call i32 @ionic_rx_recycle(%struct.ionic_queue* %95, %struct.ionic_desc_info* %96, %struct.sk_buff* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %101 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  store %struct.sk_buff* %100, %struct.sk_buff** %101, align 8
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %76, %66, %50
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ionic_rx_recycle(%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
