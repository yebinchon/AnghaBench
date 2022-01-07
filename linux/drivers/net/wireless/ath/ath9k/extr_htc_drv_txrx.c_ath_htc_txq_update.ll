; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath_htc_txq_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath_htc_txq_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unable to update hardware queue %u!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_htc_txq_update(%struct.ath9k_htc_priv* %0, i32 %1, %struct.ath9k_tx_queue_info* %2) #0 {
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath9k_tx_queue_info*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_tx_queue_info, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ath9k_tx_queue_info* %2, %struct.ath9k_tx_queue_info** %6, align 8
  %10 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %10, i32 0, i32 0
  %12 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  store %struct.ath_hw* %12, %struct.ath_hw** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %13, i32 %14, %struct.ath9k_tx_queue_info* %9)
  %16 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %6, align 8
  %17 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %9, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %6, align 8
  %21 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  %24 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %6, align 8
  %26 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %9, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %6, align 8
  %30 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %9, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %6, align 8
  %34 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ath9k_hw_set_txq_props(%struct.ath_hw* %37, i32 %38, %struct.ath9k_tx_queue_info* %9)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %3
  %42 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %43 = call i32 @ath9k_hw_common(%struct.ath_hw* %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ath_err(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %52

48:                                               ; preds = %3
  %49 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ath9k_hw_resettxqueue(%struct.ath_hw* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @ath9k_hw_get_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath9k_hw_set_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath_err(i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_resettxqueue(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
