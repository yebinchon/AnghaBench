; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_inc_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_inc_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i64, i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ATH10K_TX_PAUSE_Q_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htt_tx_inc_pending(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %4 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %5 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %4, i32 0, i32 3
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %23 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %26 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATH10K_TX_PAUSE_Q_FULL, align 4
  %34 = call i32 @ath10k_mac_tx_lock(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %17
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_mac_tx_lock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
