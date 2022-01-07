; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_initialize_lq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_initialize_lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.iwl_priv = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_lq_sta = type { i32, i64, %struct.TYPE_7__, %struct.iwl_scale_tbl_info*, i32 }
%struct.iwl_scale_tbl_info = type { i32, i32 }
%struct.iwl_station_priv = type { %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@iwl_rates = common dso_local global %struct.TYPE_8__* null, align 8
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@IWL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IWL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*)* @rs_initialize_lq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_initialize_lq(%struct.iwl_priv* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.iwl_lq_sta*, align 8
  %7 = alloca %struct.iwl_scale_tbl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.iwl_station_priv*, align 8
  %15 = alloca %struct.iwl_rxon_context*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %6, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %17 = call i64 @rs_use_green(%struct.ieee80211_sta* %16)
  store i64 %17, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %19 = icmp ne %struct.ieee80211_sta* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %22 = icmp ne %struct.iwl_lq_sta* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %3
  br label %144

24:                                               ; preds = %20
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %29, %struct.iwl_station_priv** %14, align 8
  %30 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %14, align 8
  %31 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %30, i32 0, i32 0
  %32 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %31, align 8
  store %struct.iwl_rxon_context* %32, %struct.iwl_rxon_context** %15, align 8
  %33 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %24
  %46 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %47 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  br label %54

49:                                               ; preds = %24
  %50 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 1, %52
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %56 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %55, i32 0, i32 3
  %57 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %57, i64 %58
  store %struct.iwl_scale_tbl_info* %59, %struct.iwl_scale_tbl_info** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @IWL_RATE_COUNT, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %54
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iwl_rates, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @first_antenna(i64 %74)
  %76 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %77 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %79 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @IWL_FIRST_CCK_RATE, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %67
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @IWL_LAST_CCK_RATE, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %92, %88, %67
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %99 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %102 = call i32 @rs_get_tbl_info_from_mcs(i32 %97, i32 %100, %struct.iwl_scale_tbl_info* %101, i32* %8)
  %103 = load i64, i64* %13, align 8
  %104 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %105 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @rs_is_valid_ant(i64 %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %96
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %112 = call i32 @rs_toggle_antenna(i64 %110, i32* %10, %struct.iwl_scale_tbl_info* %111)
  br label %113

113:                                              ; preds = %109, %96
  %114 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %115 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %114, %struct.iwl_scale_tbl_info* %115, i32 %116, i64 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %121 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %123 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %124 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %122, %struct.iwl_scale_tbl_info* %123)
  %125 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @rs_fill_link_cmd(i32* null, %struct.iwl_lq_sta* %125, i32 %126)
  %128 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %129 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %128, i32 0, i32 2
  %130 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %131 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %134 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store %struct.TYPE_7__* %129, %struct.TYPE_7__** %138, align 8
  %139 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %140 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %15, align 8
  %141 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %142 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %141, i32 0, i32 2
  %143 = call i32 @iwl_send_lq_cmd(%struct.iwl_priv* %139, %struct.iwl_rxon_context* %140, %struct.TYPE_7__* %142, i32 0, i32 1)
  br label %144

144:                                              ; preds = %113, %23
  ret void
}

declare dso_local i64 @rs_use_green(%struct.ieee80211_sta*) #1

declare dso_local i32 @first_antenna(i64) #1

declare dso_local i32 @rs_get_tbl_info_from_mcs(i32, i32, %struct.iwl_scale_tbl_info*, i32*) #1

declare dso_local i32 @rs_is_valid_ant(i64, i32) #1

declare dso_local i32 @rs_toggle_antenna(i64, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i64) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_fill_link_cmd(i32*, %struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @iwl_send_lq_cmd(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
