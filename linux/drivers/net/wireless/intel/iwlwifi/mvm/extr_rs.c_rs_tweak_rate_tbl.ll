; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_tweak_rate_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_tweak_rate_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i32 }
%struct.iwl_scale_tbl_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@RATE_MCS_CHAN_WIDTH_80 = common dso_local global i64 0, align 8
@IWL_RATE_MCS_0_INDEX = common dso_local global i64 0, align 8
@RS_ACTION_DOWNSCALE = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_20 = common dso_local global i64 0, align 8
@IWL_RATE_MCS_4_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Switch 80Mhz SISO MCS0 -> 20Mhz MCS4\0A\00", align 1
@IWL_RATE_MCS_5_INDEX = common dso_local global i64 0, align 8
@RS_ACTION_STAY = common dso_local global i32 0, align 4
@RS_ACTION_UPSCALE = common dso_local global i32 0, align 4
@IWL_RATE_MCS_1_INDEX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Switch 20Mhz SISO MCS5 -> 80Mhz MCS1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32)* @rs_tweak_rate_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_tweak_rate_tbl(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, %struct.iwl_scale_tbl_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.iwl_lq_sta*, align 8
  %10 = alloca %struct.iwl_scale_tbl_info*, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %8, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %9, align 8
  store %struct.iwl_scale_tbl_info* %3, %struct.iwl_scale_tbl_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %13 = call i64 @rs_bw_from_sta_bw(%struct.ieee80211_sta* %12)
  %14 = load i64, i64* @RATE_MCS_CHAN_WIDTH_80, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %100

17:                                               ; preds = %5
  %18 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %19 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %18, i32 0, i32 0
  %20 = call i32 @is_vht_siso(%struct.TYPE_2__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %100

23:                                               ; preds = %17
  %24 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %25 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RATE_MCS_CHAN_WIDTH_80, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %32 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IWL_RATE_MCS_0_INDEX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @RS_ACTION_DOWNSCALE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i64, i64* @RATE_MCS_CHAN_WIDTH_20, align 8
  %43 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %44 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* @IWL_RATE_MCS_4_INDEX, align 8
  %47 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %48 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %51 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %93

52:                                               ; preds = %37, %30, %23
  %53 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %54 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RATE_MCS_CHAN_WIDTH_20, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %52
  %60 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %61 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IWL_RATE_MCS_5_INDEX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @RS_ACTION_STAY, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %81, label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %72 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IWL_RATE_MCS_5_INDEX, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @RS_ACTION_UPSCALE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77, %66
  %82 = load i64, i64* @RATE_MCS_CHAN_WIDTH_80, align 8
  %83 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %84 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load i64, i64* @IWL_RATE_MCS_1_INDEX, align 8
  %87 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %88 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %91 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %93

92:                                               ; preds = %77, %70, %52
  store i32 0, i32* %6, align 4
  br label %100

93:                                               ; preds = %81, %41
  %94 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %95 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %96 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %94, %struct.iwl_scale_tbl_info* %95)
  %97 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %98 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %99 = call i32 @rs_rate_scale_clear_tbl_windows(%struct.iwl_mvm* %97, %struct.iwl_scale_tbl_info* %98)
  store i32 1, i32* %6, align 4
  br label %100

100:                                              ; preds = %93, %92, %22, %16
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @rs_bw_from_sta_bw(%struct.ieee80211_sta*) #1

declare dso_local i32 @is_vht_siso(%struct.TYPE_2__*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_rate_scale_clear_tbl_windows(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
