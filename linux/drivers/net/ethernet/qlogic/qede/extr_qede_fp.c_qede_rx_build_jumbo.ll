; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_build_jumbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_rx_build_jumbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_rx_queue = type { i64, i64, i32, i32, %struct.sw_rx_data* }
%struct.sw_rx_data = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.eth_fast_path_rx_reg_cqe = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Still got %d BDs for mapping jumbo, but length became 0\0A\00", align 1
@NUM_RX_BDS_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Mapped all BDs of jumbo, but still have %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_rx_queue*, %struct.sk_buff*, %struct.eth_fast_path_rx_reg_cqe*, i64)* @qede_rx_build_jumbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_rx_build_jumbo(%struct.qede_dev* %0, %struct.qede_rx_queue* %1, %struct.sk_buff* %2, %struct.eth_fast_path_rx_reg_cqe* %3, i64 %4) #0 {
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca %struct.qede_rx_queue*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.eth_fast_path_rx_reg_cqe*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sw_rx_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %6, align 8
  store %struct.qede_rx_queue* %1, %struct.qede_rx_queue** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.eth_fast_path_rx_reg_cqe* %3, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %17 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @le16_to_cpu(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = sub nsw i64 %21, %20
  store i64 %22, i64* %11, align 8
  %23 = load %struct.eth_fast_path_rx_reg_cqe*, %struct.eth_fast_path_rx_reg_cqe** %9, align 8
  %24 = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, %struct.eth_fast_path_rx_reg_cqe* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* %14, align 8
  br label %27

27:                                               ; preds = %121, %5
  %28 = load i64, i64* %14, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %124

30:                                               ; preds = %27
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %33 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %38 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  br label %42

40:                                               ; preds = %30
  %41 = load i64, i64* %11, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i64 [ %39, %36 ], [ %41, %40 ]
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %15, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = call i64 @unlikely(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @DP_ERR(%struct.qede_dev* %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %133

55:                                               ; preds = %42
  %56 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %57 = call i64 @qede_alloc_rx_buffer(%struct.qede_rx_queue* %56, i32 1)
  %58 = call i64 @unlikely(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %133

61:                                               ; preds = %55
  %62 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %63 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NUM_RX_BDS_MAX, align 8
  %66 = and i64 %64, %65
  store i64 %66, i64* %13, align 8
  %67 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %68 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %67, i32 0, i32 4
  %69 = load %struct.sw_rx_data*, %struct.sw_rx_data** %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %69, i64 %70
  store %struct.sw_rx_data* %71, %struct.sw_rx_data** %12, align 8
  %72 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %73 = call i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue* %72)
  %74 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %75 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sw_rx_data*, %struct.sw_rx_data** %12, align 8
  %78 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %82 = call i32 @dma_unmap_page(i32 %76, i32 %79, i64 %80, i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.sw_rx_data*, %struct.sw_rx_data** %12, align 8
  %90 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %7, align 8
  %93 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @skb_fill_page_desc(%struct.sk_buff* %83, i32 %87, i32 %91, i32 %94, i64 %95)
  %97 = load i64, i64* @PAGE_SIZE, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %97
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 4
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load i64, i64* %15, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  %118 = load i64, i64* %15, align 8
  %119 = load i64, i64* %11, align 8
  %120 = sub nsw i64 %119, %118
  store i64 %120, i64* %11, align 8
  br label %121

121:                                              ; preds = %61
  %122 = load i64, i64* %14, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %14, align 8
  br label %27

124:                                              ; preds = %27
  %125 = load i64, i64* %11, align 8
  %126 = call i64 @unlikely(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %130 = load i64, i64* %11, align 8
  %131 = call i32 @DP_ERR(%struct.qede_dev* %129, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132, %60, %51
  %134 = load i64, i64* %14, align 8
  %135 = trunc i64 %134 to i32
  ret i32 %135
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, i64) #1

declare dso_local i64 @qede_alloc_rx_buffer(%struct.qede_rx_queue*, i32) #1

declare dso_local i32 @qede_rx_bd_ring_consume(%struct.qede_rx_queue*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i32, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
