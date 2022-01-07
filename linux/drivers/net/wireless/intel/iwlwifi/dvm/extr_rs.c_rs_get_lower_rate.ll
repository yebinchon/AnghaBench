; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_get_lower_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_get_lower_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i64, i64, i32, %struct.iwl_priv* }
%struct.iwl_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i64, i64, i32 }

@rs_ht_to_legacy = common dso_local global i64* null, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@LQ_A = common dso_local global i32 0, align 4
@LQ_G = common dso_local global i32 0, align 4
@IWL_MAX_SEARCH = common dso_local global i32 0, align 4
@IWL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i64, i64)* @rs_get_lower_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_lower_rate(%struct.iwl_lq_sta* %0, %struct.iwl_scale_tbl_info* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.iwl_lq_sta*, align 8
  %6 = alloca %struct.iwl_scale_tbl_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %5, align 8
  store %struct.iwl_scale_tbl_info* %1, %struct.iwl_scale_tbl_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %18, i32 0, i32 3
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %19, align 8
  store %struct.iwl_priv* %20, %struct.iwl_priv** %14, align 8
  %21 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @is_legacy(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %29, %26
  store i64 1, i64* %12, align 8
  %33 = load i64*, i64** @rs_ht_to_legacy, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @LQ_A, align 4
  %44 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %45 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %32
  %47 = load i32, i32* @LQ_G, align 4
  %48 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %49 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @num_of_ant(i32 %53)
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %14, align 8
  %58 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @first_antenna(i32 %61)
  %63 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %64 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %56, %50
  %66 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %67 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %69 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @IWL_MAX_SEARCH, align 4
  %71 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %72 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %29, %4
  %74 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %75 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %76 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @rs_get_supported_rates(%struct.iwl_lq_sta* %74, i32* null, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %80 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @is_legacy(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %73
  %85 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %86 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %93 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IWL_FIRST_OFDM_RATE, align 4
  %96 = shl i32 %94, %95
  %97 = and i32 %91, %96
  store i32 %97, i32* %10, align 4
  br label %104

98:                                               ; preds = %84
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %101 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %99, %102
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %98, %90
  br label %105

105:                                              ; preds = %104, %73
  %106 = load i64, i64* %12, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = load i64, i64* %7, align 8
  %111 = trunc i64 %110 to i32
  %112 = shl i32 1, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i64, i64* %7, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %9, align 4
  br label %137

118:                                              ; preds = %108, %105
  %119 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %120 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %119, i32 0, i32 3
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %125 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @rs_get_adjacent_rate(%struct.iwl_priv* %121, i64 %122, i32 %123, i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = and i32 %128, 255
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @IWL_RATE_INVALID, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %118
  %134 = load i64, i64* %7, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %133, %118
  br label %137

137:                                              ; preds = %136, %115
  %138 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %139 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %138, i32 0, i32 3
  %140 = load %struct.iwl_priv*, %struct.iwl_priv** %139, align 8
  %141 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i64, i64* %13, align 8
  %144 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %140, %struct.iwl_scale_tbl_info* %141, i32 %142, i64 %143)
  ret i32 %144
}

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @rs_get_supported_rates(%struct.iwl_lq_sta*, i32*, i32) #1

declare dso_local i32 @rs_get_adjacent_rate(%struct.iwl_priv*, i64, i32, i32) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
