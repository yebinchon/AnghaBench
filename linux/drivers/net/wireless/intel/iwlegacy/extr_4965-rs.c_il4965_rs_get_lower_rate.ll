; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_get_lower_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_get_lower_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_lq_sta = type { i64, i64, i32, %struct.il_priv* }
%struct.il_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.il_scale_tbl_info = type { i32, i32, i64, i64, i32 }

@rs_ht_to_legacy = common dso_local global i64* null, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@LQ_A = common dso_local global i32 0, align 4
@LQ_G = common dso_local global i32 0, align 4
@IL_MAX_SEARCH = common dso_local global i32 0, align 4
@IL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@RATE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_lq_sta*, %struct.il_scale_tbl_info*, i64, i64)* @il4965_rs_get_lower_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rs_get_lower_rate(%struct.il_lq_sta* %0, %struct.il_scale_tbl_info* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.il_lq_sta*, align 8
  %6 = alloca %struct.il_scale_tbl_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.il_priv*, align 8
  store %struct.il_lq_sta* %0, %struct.il_lq_sta** %5, align 8
  store %struct.il_scale_tbl_info* %1, %struct.il_scale_tbl_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %16 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %19 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %18, i32 0, i32 3
  %20 = load %struct.il_priv*, %struct.il_priv** %19, align 8
  store %struct.il_priv* %20, %struct.il_priv** %14, align 8
  %21 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %22 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @is_legacy(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %72, label %32

32:                                               ; preds = %29, %26
  store i64 1, i64* %12, align 8
  %33 = load i64*, i64** @rs_ht_to_legacy, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %38 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @LQ_A, align 4
  %44 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %45 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %32
  %47 = load i32, i32* @LQ_G, align 4
  %48 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %49 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %52 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @il4965_num_of_ant(i32 %53)
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.il_priv*, %struct.il_priv** %14, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @il4965_first_antenna(i32 %60)
  %62 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %63 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %56, %50
  %65 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %66 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %68 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @IL_MAX_SEARCH, align 4
  %70 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %71 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %29, %4
  %73 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %74 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %75 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @il4965_rs_get_supported_rates(%struct.il_lq_sta* %73, i32* null, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %79 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @is_legacy(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %72
  %84 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %85 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %92 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %95 = shl i32 %93, %94
  %96 = and i32 %90, %95
  store i32 %96, i32* %10, align 4
  br label %103

97:                                               ; preds = %83
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %100 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %98, %101
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %97, %89
  br label %104

104:                                              ; preds = %103, %72
  %105 = load i64, i64* %12, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = load i64, i64* %7, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 1, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i64, i64* %7, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %9, align 4
  br label %136

117:                                              ; preds = %107, %104
  %118 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %119 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %118, i32 0, i32 3
  %120 = load %struct.il_priv*, %struct.il_priv** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %124 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @il4965_rs_get_adjacent_rate(%struct.il_priv* %120, i64 %121, i32 %122, i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, 255
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @RATE_INVALID, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %117
  %133 = load i64, i64* %7, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %132, %117
  br label %136

136:                                              ; preds = %135, %114
  %137 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %138 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %137, i32 0, i32 3
  %139 = load %struct.il_priv*, %struct.il_priv** %138, align 8
  %140 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv* %139, %struct.il_scale_tbl_info* %140, i32 %141, i64 %142)
  ret i32 %143
}

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i32 @il4965_num_of_ant(i32) #1

declare dso_local i32 @il4965_first_antenna(i32) #1

declare dso_local i32 @il4965_rs_get_supported_rates(%struct.il_lq_sta*, i32*, i32) #1

declare dso_local i32 @il4965_rs_get_adjacent_rate(%struct.il_priv*, i64, i32, i32) #1

declare dso_local i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv*, %struct.il_scale_tbl_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
