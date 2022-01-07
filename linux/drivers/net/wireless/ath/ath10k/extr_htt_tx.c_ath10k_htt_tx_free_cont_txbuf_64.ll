; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_free_cont_txbuf_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_free_cont_txbuf_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.TYPE_2__, %struct.ath10k* }
%struct.TYPE_2__ = type { i64, i32*, i32 }
%struct.ath10k = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_htt*)* @ath10k_htt_tx_free_cont_txbuf_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_tx_free_cont_txbuf_64(%struct.ath10k_htt* %0) #0 {
  %2 = alloca %struct.ath10k_htt*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i64, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %2, align 8
  %5 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %6 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %5, i32 0, i32 1
  %7 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  store %struct.ath10k* %7, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %9 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %16 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %24 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %28 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_free_coherent(i32 %21, i64 %22, i32* %26, i32 %30)
  %32 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %33 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
