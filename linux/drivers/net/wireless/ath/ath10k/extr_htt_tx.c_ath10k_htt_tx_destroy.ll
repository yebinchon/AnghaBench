; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_htt_tx_destroy(%struct.ath10k_htt* %0) #0 {
  %2 = alloca %struct.ath10k_htt*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %2, align 8
  %3 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %4 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %10 = call i32 @ath10k_htt_free_txbuff(%struct.ath10k_htt* %9)
  %11 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %12 = call i32 @ath10k_htt_tx_free_txq(%struct.ath10k_htt* %11)
  %13 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %14 = call i32 @ath10k_htt_free_frag_desc(%struct.ath10k_htt* %13)
  %15 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %16 = call i32 @ath10k_htt_tx_free_txdone_fifo(%struct.ath10k_htt* %15)
  %17 = load %struct.ath10k_htt*, %struct.ath10k_htt** %2, align 8
  %18 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @ath10k_htt_free_txbuff(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_tx_free_txq(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_free_frag_desc(%struct.ath10k_htt*) #1

declare dso_local i32 @ath10k_htt_tx_free_txdone_fifo(%struct.ath10k_htt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
