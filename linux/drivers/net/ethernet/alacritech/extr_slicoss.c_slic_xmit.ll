; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.slic_device = type { %struct.TYPE_2__*, %struct.slic_tx_queue }
%struct.TYPE_2__ = type { i32 }
%struct.slic_tx_queue = type { i64, i32, %struct.slic_tx_buffer* }
%struct.slic_tx_buffer = type { i32, %struct.slic_tx_desc*, %struct.sk_buff* }
%struct.slic_tx_desc = type { i8*, i8*, i8*, i8* }

@SLIC_MAX_REQ_TX_DESCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"BUG! not enough tx LEs left: %u\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to map tx buffer\0A\00", align 1
@map_addr = common dso_local global i32 0, align 4
@map_len = common dso_local global i32 0, align 4
@SLIC_REG_CBAR = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @slic_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.slic_device*, align 8
  %7 = alloca %struct.slic_tx_queue*, align 8
  %8 = alloca %struct.slic_tx_buffer*, align 8
  %9 = alloca %struct.slic_tx_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.slic_device* @netdev_priv(%struct.net_device* %13)
  store %struct.slic_device* %14, %struct.slic_device** %6, align 8
  %15 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %16 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %15, i32 0, i32 1
  store %struct.slic_tx_queue* %16, %struct.slic_tx_queue** %7, align 8
  %17 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %7, align 8
  %18 = call i64 @slic_get_free_tx_descs(%struct.slic_tx_queue* %17)
  %19 = load i64, i64* @SLIC_MAX_REQ_TX_DESCS, align 8
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %7, align 8
  %27 = call i64 @slic_get_free_tx_descs(%struct.slic_tx_queue* %26)
  %28 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %29, i32* %3, align 4
  br label %125

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @skb_headlen(%struct.sk_buff* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %34 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @dma_map_single(i32* %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %44 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @dma_mapping_error(i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %121

53:                                               ; preds = %30
  %54 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %7, align 8
  %55 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %54, i32 0, i32 2
  %56 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %55, align 8
  %57 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %7, align 8
  %58 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %56, i64 %59
  store %struct.slic_tx_buffer* %60, %struct.slic_tx_buffer** %8, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %8, align 8
  %63 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %62, i32 0, i32 2
  store %struct.sk_buff* %61, %struct.sk_buff** %63, align 8
  %64 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %8, align 8
  %65 = load i32, i32* @map_addr, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dma_unmap_addr_set(%struct.slic_tx_buffer* %64, i32 %65, i32 %66)
  %68 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %8, align 8
  %69 = load i32, i32* @map_len, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @dma_unmap_len_set(%struct.slic_tx_buffer* %68, i32 %69, i32 %70)
  %72 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %8, align 8
  %73 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %72, i32 0, i32 1
  %74 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %73, align 8
  store %struct.slic_tx_desc* %74, %struct.slic_tx_desc** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %9, align 8
  %78 = getelementptr inbounds %struct.slic_tx_desc, %struct.slic_tx_desc* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @lower_32_bits(i32 %79)
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %9, align 8
  %83 = getelementptr inbounds %struct.slic_tx_desc, %struct.slic_tx_desc* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @upper_32_bits(i32 %84)
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %9, align 8
  %88 = getelementptr inbounds %struct.slic_tx_desc, %struct.slic_tx_desc* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %9, align 8
  %92 = getelementptr inbounds %struct.slic_tx_desc, %struct.slic_tx_desc* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %7, align 8
  %94 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %7, align 8
  %97 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @slic_next_queue_idx(i64 %95, i32 %98)
  %100 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %7, align 8
  %101 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %8, align 8
  %103 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @lower_32_bits(i32 %104)
  %106 = or i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = call i32 (...) @wmb()
  %108 = load %struct.slic_device*, %struct.slic_device** %6, align 8
  %109 = load i32, i32* @SLIC_REG_CBAR, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @slic_write(%struct.slic_device* %108, i32 %109, i32 %110)
  %112 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %7, align 8
  %113 = call i64 @slic_get_free_tx_descs(%struct.slic_tx_queue* %112)
  %114 = load i64, i64* @SLIC_MAX_REQ_TX_DESCS, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %53
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = call i32 @netif_stop_queue(%struct.net_device* %117)
  br label %119

119:                                              ; preds = %116, %53
  %120 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %120, i32* %3, align 4
  br label %125

121:                                              ; preds = %50
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %122)
  %124 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %119, %24
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.slic_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @slic_get_free_tx_descs(%struct.slic_tx_queue*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.slic_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.slic_tx_buffer*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i64 @slic_next_queue_idx(i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
