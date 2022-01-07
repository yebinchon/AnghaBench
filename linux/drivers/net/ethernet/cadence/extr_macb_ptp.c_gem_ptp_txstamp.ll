; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_txstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_txstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb_queue = type { i64, i32, %struct.gem_tx_ts*, i32, i32 }
%struct.gem_tx_ts = type { %struct.TYPE_3__, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.macb_dma_desc = type { i32 }
%struct.macb_dma_desc_ptp = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_TXVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PTP_TS_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gem_ptp_txstamp(%struct.macb_queue* %0, %struct.sk_buff* %1, %struct.macb_dma_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.macb_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.macb_dma_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.macb_dma_desc_ptp*, align 8
  %11 = alloca %struct.gem_tx_ts*, align 8
  store %struct.macb_queue* %0, %struct.macb_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.macb_dma_desc* %2, %struct.macb_dma_desc** %7, align 8
  %12 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %13 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @READ_ONCE(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %17 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* @DMA_TXVALID, align 4
  %20 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %7, align 8
  %21 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GEM_BFEXT(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* @PTP_TS_BUFFER_SIZE, align 4
  %32 = call i64 @CIRC_SPACE(i64 %29, i64 %30, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %82

37:                                               ; preds = %28
  %38 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %45 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %7, align 8
  %48 = call %struct.macb_dma_desc_ptp* @macb_ptp_desc(i32 %46, %struct.macb_dma_desc* %47)
  store %struct.macb_dma_desc_ptp* %48, %struct.macb_dma_desc_ptp** %10, align 8
  %49 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %50 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %49, i32 0, i32 2
  %51 = load %struct.gem_tx_ts*, %struct.gem_tx_ts** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.gem_tx_ts, %struct.gem_tx_ts* %51, i64 %52
  store %struct.gem_tx_ts* %53, %struct.gem_tx_ts** %11, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load %struct.gem_tx_ts*, %struct.gem_tx_ts** %11, align 8
  %56 = getelementptr inbounds %struct.gem_tx_ts, %struct.gem_tx_ts* %55, i32 0, i32 1
  store %struct.sk_buff* %54, %struct.sk_buff** %56, align 8
  %57 = call i32 (...) @dma_rmb()
  %58 = load %struct.macb_dma_desc_ptp*, %struct.macb_dma_desc_ptp** %10, align 8
  %59 = getelementptr inbounds %struct.macb_dma_desc_ptp, %struct.macb_dma_desc_ptp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gem_tx_ts*, %struct.gem_tx_ts** %11, align 8
  %62 = getelementptr inbounds %struct.gem_tx_ts, %struct.gem_tx_ts* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.macb_dma_desc_ptp*, %struct.macb_dma_desc_ptp** %10, align 8
  %65 = getelementptr inbounds %struct.macb_dma_desc_ptp, %struct.macb_dma_desc_ptp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.gem_tx_ts*, %struct.gem_tx_ts** %11, align 8
  %68 = getelementptr inbounds %struct.gem_tx_ts, %struct.gem_tx_ts* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %71 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %70, i32 0, i32 0
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  %74 = load i32, i32* @PTP_TS_BUFFER_SIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = and i64 %73, %76
  %78 = call i32 @smp_store_release(i64* %71, i64 %77)
  %79 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %80 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %79, i32 0, i32 1
  %81 = call i32 @schedule_work(i32* %80)
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %37, %34, %25
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @GEM_BFEXT(i32, i32) #1

declare dso_local i64 @CIRC_SPACE(i64, i64, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.macb_dma_desc_ptp* @macb_ptp_desc(i32, %struct.macb_dma_desc*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @smp_store_release(i64*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
