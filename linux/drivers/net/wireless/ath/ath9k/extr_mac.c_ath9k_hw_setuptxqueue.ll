; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_setuptxqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_setuptxqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_tx_queue_info* }
%struct.ath9k_tx_queue_info = type { i32, i32, i32 }
%struct.ath_common = type { i32 }

@ATH9K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid TX queue type: %u\0A\00", align 1
@QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Setup TX queue: %u\0A\00", align 1
@ATH9K_TX_QUEUE_INACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"TX queue: %u already active\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_setuptxqueue(%struct.ath_hw* %0, i32 %1, %struct.ath9k_tx_queue_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath9k_tx_queue_info*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_tx_queue_info*, align 8
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath9k_tx_queue_info* %2, %struct.ath9k_tx_queue_info** %7, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %28 [
    i32 132, label %14
    i32 131, label %17
    i32 129, label %20
    i32 128, label %21
    i32 130, label %24
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  br label %32

17:                                               ; preds = %3
  %18 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %19 = sub nsw i32 %18, 2
  store i32 %19, i32* %10, align 4
  br label %32

20:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %32

21:                                               ; preds = %3
  %22 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %23 = sub nsw i32 %22, 3
  store i32 %23, i32* %10, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %26 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ath_err(%struct.ath_common* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %4, align 4
  br label %68

32:                                               ; preds = %24, %21, %20, %17, %14
  %33 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %34 = load i32, i32* @QUEUE, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ath_dbg(%struct.ath_common* %33, i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %38 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %37, i32 0, i32 0
  %39 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %39, i64 %41
  store %struct.ath9k_tx_queue_info* %42, %struct.ath9k_tx_queue_info** %9, align 8
  %43 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %44 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ATH9K_TX_QUEUE_INACTIVE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ath_err(%struct.ath_common* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %4, align 4
  br label %68

52:                                               ; preds = %32
  %53 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %54 = call i32 @memset(%struct.ath9k_tx_queue_info* %53, i32 0, i32 12)
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %57 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %59 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %62 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %66 = call i32 @ath9k_hw_set_txq_props(%struct.ath_hw* %63, i32 %64, %struct.ath9k_tx_queue_info* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %52, %48, %28
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.ath9k_tx_queue_info*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
