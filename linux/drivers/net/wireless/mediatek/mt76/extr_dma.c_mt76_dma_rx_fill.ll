; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_rx_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_rx_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_queue = type { i32, i32, i32, i32, i32, i32 }
%struct.mt76_queue_buf = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.mt76_queue*)* @mt76_dma_rx_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_dma_rx_fill(%struct.mt76_dev* %0, %struct.mt76_queue* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mt76_queue_buf, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %13 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SKB_WITH_OVERHEAD(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %17 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %20 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %19, i32 0, i32 3
  %21 = call i32 @spin_lock_bh(i32* %20)
  br label %22

22:                                               ; preds = %60, %2
  %23 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %24 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %27 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %22
  %32 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %33 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %32, i32 0, i32 5
  %34 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %35 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i8* @page_frag_alloc(i32* %33, i32 %36, i32 %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %76

42:                                               ; preds = %31
  %43 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %49 = call i64 @dma_map_single(i32 %45, i8* %46, i32 %47, i32 %48)
  store i64 %49, i64* %5, align 8
  %50 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @dma_mapping_error(i32 %52, i64 %53)
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @skb_free_frag(i8* %58)
  br label %76

60:                                               ; preds = %42
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %11, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %66, %67
  %69 = getelementptr inbounds %struct.mt76_queue_buf, %struct.mt76_queue_buf* %11, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %71 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @mt76_dma_add_buf(%struct.mt76_dev* %70, %struct.mt76_queue* %71, %struct.mt76_queue_buf* %11, i32 1, i32 0, i8* %72, i32* null)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %22

76:                                               ; preds = %57, %41, %22
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %81 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %82 = call i32 @mt76_dma_kick_queue(%struct.mt76_dev* %80, %struct.mt76_queue* %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %85 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %84, i32 0, i32 3
  %86 = call i32 @spin_unlock_bh(i32* %85)
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @SKB_WITH_OVERHEAD(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @page_frag_alloc(i32*, i32, i32) #1

declare dso_local i64 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @skb_free_frag(i8*) #1

declare dso_local i32 @mt76_dma_add_buf(%struct.mt76_dev*, %struct.mt76_queue*, %struct.mt76_queue_buf*, i32, i32, i8*, i32*) #1

declare dso_local i32 @mt76_dma_kick_queue(%struct.mt76_dev*, %struct.mt76_queue*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
