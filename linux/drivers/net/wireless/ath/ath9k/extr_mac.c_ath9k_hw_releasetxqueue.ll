; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_releasetxqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_releasetxqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_tx_queue_info* }
%struct.ath9k_tx_queue_info = type { i64 }
%struct.ath_common = type { i32 }

@ATH9K_TX_QUEUE_INACTIVE = common dso_local global i64 0, align 8
@QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Release TXQ, inactive queue: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Release TX queue: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_releasetxqueue(%struct.ath_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_tx_queue_info*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %6, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %12, i64 %13
  store %struct.ath9k_tx_queue_info* %14, %struct.ath9k_tx_queue_info** %7, align 8
  %15 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %16 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ATH9K_TX_QUEUE_INACTIVE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %22 = load i32, i32* @QUEUE, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @ath_dbg(%struct.ath_common* %21, i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 0, i32* %3, align 4
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %27 = load i32, i32* @QUEUE, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ath_dbg(%struct.ath_common* %26, i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* @ATH9K_TX_QUEUE_INACTIVE, align 8
  %31 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %32 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @ath9k_hw_clear_queue_interrupts(%struct.ath_hw* %33, i64 %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %38 = call i32 @ath9k_hw_set_txq_interrupts(%struct.ath_hw* %36, %struct.ath9k_tx_queue_info* %37)
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %25, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @ath9k_hw_clear_queue_interrupts(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath9k_hw_set_txq_interrupts(%struct.ath_hw*, %struct.ath9k_tx_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
