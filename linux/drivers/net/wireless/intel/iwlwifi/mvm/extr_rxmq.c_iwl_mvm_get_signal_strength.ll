; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_get_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_get_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32* }

@S8_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"energy In A %d B %d, and max %d\0A\00", align 1
@RATE_MCS_ANT_AB_MSK = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_rx_status*, i32, i32, i32)* @iwl_mvm_get_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_get_signal_strength(%struct.iwl_mvm* %0, %struct.ieee80211_rx_status* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 0, %17
  br label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @S8_MIN, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ %20, %19 ]
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 0, %26
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @S8_MIN, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @max(i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @IWL_DEBUG_STATS(%struct.iwl_mvm* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @RATE_MCS_ANT_AB_MSK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %47 = ashr i32 %45, %46
  %48 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @S8_MIN, align 4
  %61 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %60, i32* %64, align 4
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_STATS(%struct.iwl_mvm*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
