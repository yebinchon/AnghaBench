; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_txbuf_free_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_txbuf_free_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32 }
%struct.ath5k_buf = type { %struct.TYPE_3__*, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_txbuf_free_skb(%struct.ath5k_hw* %0, %struct.ath5k_buf* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_buf*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ath5k_buf* %1, %struct.ath5k_buf** %4, align 8
  %5 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %6 = icmp ne %struct.ath5k_buf* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %11 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %20 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %23 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @dma_unmap_single(i32 %18, i64 %21, i32 %26, i32 %27)
  %29 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %33 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @ieee80211_free_txskb(i32 %31, %struct.TYPE_4__* %34)
  %36 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %37 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %36, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %39 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.ath5k_buf*, %struct.ath5k_buf** %4, align 8
  %41 = getelementptr inbounds %struct.ath5k_buf, %struct.ath5k_buf* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
