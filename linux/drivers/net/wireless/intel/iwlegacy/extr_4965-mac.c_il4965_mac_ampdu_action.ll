; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_mac_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_mac_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_ampdu_params = type { i32, i32, i32, %struct.ieee80211_sta* }
%struct.ieee80211_sta = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"A-MPDU action on addr %pM tid %d\0A\00", align 1
@IL_SKU_N = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"start Rx\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stop Rx\0A\00", align 1
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"start Tx\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"stop Tx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_mac_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_ampdu_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_ampdu_params*, align 8
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_ampdu_params* %2, %struct.ieee80211_ampdu_params** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.il_priv*, %struct.il_priv** %15, align 8
  store %struct.il_priv* %16, %struct.il_priv** %8, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %19, i32 0, i32 3
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %20, align 8
  store %struct.ieee80211_sta* %21, %struct.ieee80211_sta** %10, align 8
  %22 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.ieee80211_ampdu_params*, %struct.ieee80211_ampdu_params** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_ampdu_params, %struct.ieee80211_ampdu_params* %28, i32 0, i32 1
  store i32* %29, i32** %13, align 8
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IL_SKU_N, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* @EACCES, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %100

46:                                               ; preds = %3
  %47 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i32, i32* %11, align 4
  switch i32 %50, label %95 [
    i32 134, label %51
    i32 133, label %59
    i32 131, label %72
    i32 130, label %80
    i32 129, label %80
    i32 128, label %80
    i32 132, label %94
  ]

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @il4965_sta_rx_agg_start(%struct.il_priv* %53, %struct.ieee80211_sta* %54, i32 %55, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %95

59:                                               ; preds = %46
  %60 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @il4965_sta_rx_agg_stop(%struct.il_priv* %61, %struct.ieee80211_sta* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @S_EXIT_PENDING, align 4
  %66 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 1
  %68 = call i32 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %70, %59
  br label %95

72:                                               ; preds = %46
  %73 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %76 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @il4965_tx_agg_start(%struct.il_priv* %74, %struct.ieee80211_vif* %75, %struct.ieee80211_sta* %76, i32 %77, i32* %78)
  store i32 %79, i32* %9, align 4
  br label %95

80:                                               ; preds = %46, %46, %46
  %81 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %82 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %84 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @il4965_tx_agg_stop(%struct.il_priv* %82, %struct.ieee80211_vif* %83, %struct.ieee80211_sta* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @S_EXIT_PENDING, align 4
  %88 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %89 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %88, i32 0, i32 1
  %90 = call i32 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %92, %80
  br label %95

94:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %46, %94, %93, %72, %71, %51
  %96 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %97 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %43
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @D_HT(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @il4965_sta_rx_agg_start(%struct.il_priv*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @il4965_sta_rx_agg_stop(%struct.il_priv*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @il4965_tx_agg_start(%struct.il_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32*) #1

declare dso_local i32 @il4965_tx_agg_stop(%struct.il_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
