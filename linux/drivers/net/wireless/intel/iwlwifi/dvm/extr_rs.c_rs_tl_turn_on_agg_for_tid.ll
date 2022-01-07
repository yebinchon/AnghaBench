; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_tl_turn_on_agg_for_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_tl_turn_on_agg_for_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64 }
%struct.iwl_lq_sta = type { i32 }
%struct.ieee80211_sta = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@IWL_BT_COEX_TRAFFIC_LOAD_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"BT traffic (%d), no aggregation allowed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Starting Tx agg: STA: %pM tid: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Fail start Tx agg on tid: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_lq_sta*, i32, %struct.ieee80211_sta*)* @rs_tl_turn_on_agg_for_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_tl_turn_on_agg_for_tid(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, i32 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @IWL_DEBUG_COEX(%struct.iwl_priv* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %51

25:                                               ; preds = %4
  %26 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @rs_tl_get_load(%struct.iwl_lq_sta* %26, i32 %27)
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @IWL_DEBUG_HT(%struct.iwl_priv* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta* %35, i32 %36, i32 5000)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %25
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @IWL_ERR(%struct.iwl_priv* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ieee80211_stop_tx_ba_session(%struct.ieee80211_sta* %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %25
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %18
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_priv*, i8*, i64) #1

declare dso_local i32 @rs_tl_get_load(%struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_priv*, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_session(%struct.ieee80211_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
