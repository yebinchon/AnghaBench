; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_initialize_lq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_initialize_lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.il_priv = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.il_lq_sta = type { i32, i64, %struct.TYPE_7__, %struct.il_scale_tbl_info*, i32 }
%struct.il_scale_tbl_info = type { i32, i32 }

@RATE_COUNT = common dso_local global i32 0, align 4
@il_rates = common dso_local global %struct.TYPE_8__* null, align 8
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@IL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.il_lq_sta*)* @il4965_rs_initialize_lq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_rs_initialize_lq(%struct.il_priv* %0, %struct.ieee80211_conf* %1, %struct.ieee80211_sta* %2, %struct.il_lq_sta* %3) #0 {
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.il_lq_sta*, align 8
  %9 = alloca %struct.il_scale_tbl_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.il_lq_sta* %3, %struct.il_lq_sta** %8, align 8
  store i64 0, i64* %14, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %17 = icmp ne %struct.ieee80211_sta* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %20 = icmp ne %struct.il_lq_sta* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %4
  br label %136

22:                                               ; preds = %18
  %23 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %25 = call i64 @il4965_rs_use_green(%struct.il_priv* %23, %struct.ieee80211_sta* %24)
  store i64 %25, i64* %13, align 8
  %26 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %27 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %15, align 8
  %33 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %34 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %22
  %38 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %39 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %14, align 8
  br label %46

41:                                               ; preds = %22
  %42 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %43 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 1, %44
  store i64 %45, i64* %14, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %48 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %47, i32 0, i32 3
  %49 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %49, i64 %50
  store %struct.il_scale_tbl_info* %51, %struct.il_scale_tbl_info** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @RATE_COUNT, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %46
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %54
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @il_rates, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @il4965_first_antenna(i64 %66)
  %68 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %69 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %71 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @IL_FIRST_CCK_RATE, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %59
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @IL_LAST_CCK_RATE, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %84, %80, %59
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %91 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %94 = call i32 @il4965_rs_get_tbl_info_from_mcs(i32 %89, i32 %92, %struct.il_scale_tbl_info* %93, i32* %10)
  %95 = load i64, i64* %15, align 8
  %96 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %97 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @il4965_rs_is_valid_ant(i64 %95, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %88
  %102 = load i64, i64* %15, align 8
  %103 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %104 = call i32 @il4965_rs_toggle_antenna(i64 %102, i32* %12, %struct.il_scale_tbl_info* %103)
  br label %105

105:                                              ; preds = %101, %88
  %106 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %107 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv* %106, %struct.il_scale_tbl_info* %107, i32 %108, i64 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %113 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %115 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %116 = call i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta* %114, %struct.il_scale_tbl_info* %115)
  %117 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @il4965_rs_fill_link_cmd(i32* null, %struct.il_lq_sta* %117, i32 %118)
  %120 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %121 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %120, i32 0, i32 2
  %122 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %123 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %126 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %130, align 8
  %131 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %132 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %133 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %132, i32 0, i32 2
  %134 = load i32, i32* @CMD_SYNC, align 4
  %135 = call i32 @il_send_lq_cmd(%struct.il_priv* %131, %struct.TYPE_7__* %133, i32 %134, i32 1)
  br label %136

136:                                              ; preds = %105, %21
  ret void
}

declare dso_local i64 @il4965_rs_use_green(%struct.il_priv*, %struct.ieee80211_sta*) #1

declare dso_local i32 @il4965_first_antenna(i64) #1

declare dso_local i32 @il4965_rs_get_tbl_info_from_mcs(i32, i32, %struct.il_scale_tbl_info*, i32*) #1

declare dso_local i32 @il4965_rs_is_valid_ant(i64, i32) #1

declare dso_local i32 @il4965_rs_toggle_antenna(i64, i32*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv*, %struct.il_scale_tbl_info*, i32, i64) #1

declare dso_local i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_fill_link_cmd(i32*, %struct.il_lq_sta*, i32) #1

declare dso_local i32 @il_send_lq_cmd(%struct.il_priv*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
