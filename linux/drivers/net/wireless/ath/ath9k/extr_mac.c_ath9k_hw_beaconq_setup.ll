; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_beaconq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_beaconq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i64, i64 }

@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@TXQ_FLAG_TXINT_ENABLE = common dso_local global i32 0, align 4
@ATH9K_TX_QUEUE_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_beaconq_setup(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_tx_queue_info, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = call i32 @memset(%struct.ath9k_tx_queue_info* %3, i32 0, i32 24)
  %5 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %3, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %3, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %3, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @TXQ_FLAG_TXINT_ENABLE, align 4
  %17 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = load i32, i32* @ATH9K_TX_QUEUE_BEACON, align 4
  %21 = call i32 @ath9k_hw_setuptxqueue(%struct.ath_hw* %19, i32 %20, %struct.ath9k_tx_queue_info* %3)
  ret i32 %21
}

declare dso_local i32 @memset(%struct.ath9k_tx_queue_info*, i32, i32) #1

declare dso_local i32 @ath9k_hw_setuptxqueue(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
