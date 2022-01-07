; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_refill_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_refill_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i64, %struct.TYPE_6__, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.alx_rx_queue* }
%struct.alx_rx_queue = type { i64, i64, %struct.alx_buffer*, %struct.alx_rfd* }
%struct.alx_buffer = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.alx_rfd = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@ALX_RFD_PIDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*, i32)* @alx_refill_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_refill_rx_ring(%struct.alx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alx_rx_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.alx_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.alx_rfd*, align 8
  store %struct.alx_priv* %0, %struct.alx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %14 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %18, align 8
  store %struct.alx_rx_queue* %19, %struct.alx_rx_queue** %5, align 8
  store i64 0, i64* %11, align 8
  %20 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %21 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %10, align 8
  %25 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %26 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %32 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %31, i32 0, i32 2
  %33 = load %struct.alx_buffer*, %struct.alx_buffer** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.alx_buffer, %struct.alx_buffer* %33, i64 %34
  store %struct.alx_buffer* %35, %struct.alx_buffer** %7, align 8
  br label %36

36:                                               ; preds = %135, %30
  %37 = load %struct.alx_buffer*, %struct.alx_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.alx_buffer, %struct.alx_buffer* %37, i32 0, i32 0
  %39 = load %struct.sk_buff*, %struct.sk_buff** %38, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %44 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i1 [ false, %36 ], [ %46, %41 ]
  br i1 %48, label %49, label %143

49:                                               ; preds = %47
  %50 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %51 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %50, i32 0, i32 3
  %52 = load %struct.alx_rfd*, %struct.alx_rfd** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.alx_rfd, %struct.alx_rfd* %52, i64 %53
  store %struct.alx_rfd* %54, %struct.alx_rfd** %12, align 8
  %55 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %56 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %59 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 64
  %62 = load i32, i32* %4, align 4
  %63 = call %struct.sk_buff* @__netdev_alloc_skb(i32 %57, i32 %61, i32 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %49
  br label %143

67:                                               ; preds = %49
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %70, 4095
  %72 = icmp eq i64 %71, 4032
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @skb_reserve(%struct.sk_buff* %74, i32 64)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %78 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %86 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %89 = call i32 @dma_map_single(i32* %81, i64 %84, i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %91 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @dma_mapping_error(i32* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %76
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @dev_kfree_skb(%struct.sk_buff* %99)
  br label %143

101:                                              ; preds = %76
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, 3
  %104 = call i64 @WARN_ON(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i32 @dev_kfree_skb(%struct.sk_buff* %107)
  br label %143

109:                                              ; preds = %101
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load %struct.alx_buffer*, %struct.alx_buffer** %7, align 8
  %112 = getelementptr inbounds %struct.alx_buffer, %struct.alx_buffer* %111, i32 0, i32 0
  store %struct.sk_buff* %110, %struct.sk_buff** %112, align 8
  %113 = load %struct.alx_buffer*, %struct.alx_buffer** %7, align 8
  %114 = load i32, i32* @size, align 4
  %115 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %116 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dma_unmap_len_set(%struct.alx_buffer* %113, i32 %114, i32 %117)
  %119 = load %struct.alx_buffer*, %struct.alx_buffer** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @dma_unmap_addr_set(%struct.alx_buffer* %119, i32 %120, i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @cpu_to_le64(i32 %123)
  %125 = load %struct.alx_rfd*, %struct.alx_rfd** %12, align 8
  %126 = getelementptr inbounds %struct.alx_rfd, %struct.alx_rfd* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load i64, i64* %10, align 8
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %10, align 8
  %130 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %131 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %109
  store i64 0, i64* %10, align 8
  br label %135

135:                                              ; preds = %134, %109
  %136 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %137 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %136, i32 0, i32 2
  %138 = load %struct.alx_buffer*, %struct.alx_buffer** %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds %struct.alx_buffer, %struct.alx_buffer* %138, i64 %139
  store %struct.alx_buffer* %140, %struct.alx_buffer** %7, align 8
  %141 = load i64, i64* %11, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %11, align 8
  br label %36

143:                                              ; preds = %106, %98, %66, %47
  %144 = load i64, i64* %11, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = call i32 (...) @wmb()
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %5, align 8
  %150 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %152 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %151, i32 0, i32 1
  %153 = load i32, i32* @ALX_RFD_PIDX, align 4
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @alx_write_mem16(%struct.TYPE_6__* %152, i32 %153, i64 %154)
  br label %156

156:                                              ; preds = %146, %143
  %157 = load i64, i64* %11, align 8
  %158 = trunc i64 %157 to i32
  ret i32 %158
}

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.alx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.alx_buffer*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @alx_write_mem16(%struct.TYPE_6__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
