; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rxq_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i64, i32, i32 }
%struct.mvneta_rx_queue = type { i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@SZ_64K = common dso_local global i64 0, align 8
@NET_SKB_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_rx_queue*)* @mvneta_rxq_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_rxq_hw_init(%struct.mvneta_port* %0, %struct.mvneta_rx_queue* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_rx_queue*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_rx_queue* %1, %struct.mvneta_rx_queue** %4, align 8
  %5 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %6 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %7 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @MVNETA_RXQ_BASE_ADDR_REG(i32 %8)
  %10 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %11 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mvreg_write(%struct.mvneta_port* %5, i32 %9, i32 %12)
  %14 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %15 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %16 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MVNETA_RXQ_SIZE_REG(i32 %17)
  %19 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %20 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mvreg_write(%struct.mvneta_port* %14, i32 %18, i32 %21)
  %23 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %24 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %25 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mvneta_rx_pkts_coal_set(%struct.mvneta_port* %23, %struct.mvneta_rx_queue* %24, i32 %27)
  %29 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %30 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %31 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %32 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mvneta_rx_time_coal_set(%struct.mvneta_port* %29, %struct.mvneta_rx_queue* %30, i32 %33)
  %35 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %36 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %2
  %40 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %41 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %42 = call i32 @mvneta_rxq_offset_set(%struct.mvneta_port* %40, %struct.mvneta_rx_queue* %41, i64 0)
  %43 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %44 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i64, i64* @SZ_64K, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* @PAGE_SIZE, align 8
  br label %55

50:                                               ; preds = %39
  %51 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %52 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @MVNETA_RX_BUF_SIZE(i32 %53)
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i64 [ %49, %48 ], [ %54, %50 ]
  %57 = call i32 @mvneta_rxq_buf_size_set(%struct.mvneta_port* %43, %struct.mvneta_rx_queue* %44, i64 %56)
  %58 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %59 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %60 = call i32 @mvneta_rxq_bm_disable(%struct.mvneta_port* %58, %struct.mvneta_rx_queue* %59)
  %61 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %62 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %63 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %64 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mvneta_rxq_fill(%struct.mvneta_port* %61, %struct.mvneta_rx_queue* %62, i32 %65)
  br label %91

67:                                               ; preds = %2
  %68 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %69 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %70 = load i64, i64* @NET_SKB_PAD, align 8
  %71 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %72 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = call i32 @mvneta_rxq_offset_set(%struct.mvneta_port* %68, %struct.mvneta_rx_queue* %69, i64 %74)
  %76 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %77 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %78 = call i32 @mvneta_rxq_bm_enable(%struct.mvneta_port* %76, %struct.mvneta_rx_queue* %77)
  %79 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %80 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %81 = call i32 @mvneta_rxq_long_pool_set(%struct.mvneta_port* %79, %struct.mvneta_rx_queue* %80)
  %82 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %83 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %84 = call i32 @mvneta_rxq_short_pool_set(%struct.mvneta_port* %82, %struct.mvneta_rx_queue* %83)
  %85 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %86 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %87 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %4, align 8
  %88 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mvneta_rxq_non_occup_desc_add(%struct.mvneta_port* %85, %struct.mvneta_rx_queue* %86, i32 %89)
  br label %91

91:                                               ; preds = %67, %55
  ret void
}

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @MVNETA_RXQ_BASE_ADDR_REG(i32) #1

declare dso_local i32 @MVNETA_RXQ_SIZE_REG(i32) #1

declare dso_local i32 @mvneta_rx_pkts_coal_set(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i32) #1

declare dso_local i32 @mvneta_rx_time_coal_set(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i32) #1

declare dso_local i32 @mvneta_rxq_offset_set(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i64) #1

declare dso_local i32 @mvneta_rxq_buf_size_set(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i64) #1

declare dso_local i64 @MVNETA_RX_BUF_SIZE(i32) #1

declare dso_local i32 @mvneta_rxq_bm_disable(%struct.mvneta_port*, %struct.mvneta_rx_queue*) #1

declare dso_local i32 @mvneta_rxq_fill(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i32) #1

declare dso_local i32 @mvneta_rxq_bm_enable(%struct.mvneta_port*, %struct.mvneta_rx_queue*) #1

declare dso_local i32 @mvneta_rxq_long_pool_set(%struct.mvneta_port*, %struct.mvneta_rx_queue*) #1

declare dso_local i32 @mvneta_rxq_short_pool_set(%struct.mvneta_port*, %struct.mvneta_rx_queue*) #1

declare dso_local i32 @mvneta_rxq_non_occup_desc_add(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
