; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_conf_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32 }
%struct.ath5k_txq_info = type { i32, i32, i32, i32 }

@ATH5K_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Configure tx [queue %d],  aifs: %d, cw_min: %d, cw_max: %d, txop: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to update hardware queue %u!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_queue_params*)* @ath5k_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.ath5k_hw*, align 8
  %11 = alloca %struct.ath5k_txq_info, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %14, align 8
  store %struct.ath5k_hw* %15, %struct.ath5k_hw** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %18 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %83

24:                                               ; preds = %4
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %26 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @ath5k_hw_get_tx_queueprops(%struct.ath5k_hw* %28, i64 %29, %struct.ath5k_txq_info* %11)
  %31 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %11, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %11, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %11, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 32
  %47 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %11, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %49 = load i32, i32* @ATH5K_DEBUG_ANY, align 4
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %48, i32 %49, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %50, i32 %53, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i64 @ath5k_hw_set_tx_queueprops(%struct.ath5k_hw* %64, i64 %65, %struct.ath5k_txq_info* %11)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %24
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  br label %78

74:                                               ; preds = %24
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @ath5k_hw_reset_tx_queue(%struct.ath5k_hw* %75, i64 %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  %80 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %23
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath5k_hw_get_tx_queueprops(%struct.ath5k_hw*, i64, %struct.ath5k_txq_info*) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @ath5k_hw_set_tx_queueprops(%struct.ath5k_hw*, i64, %struct.ath5k_txq_info*) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i64) #1

declare dso_local i32 @ath5k_hw_reset_tx_queue(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
