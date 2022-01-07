; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_alloc_txdone_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_alloc_txdone_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*)* @ath10k_htt_tx_alloc_txdone_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_tx_alloc_txdone_fifo(%struct.ath10k_htt* %0) #0 {
  %2 = alloca %struct.ath10k_htt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %2, align 8
  %5 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %6 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @roundup_pow_of_two(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %10 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @kfifo_alloc(i32* %10, i64 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i32 @kfifo_alloc(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
