; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_get_best_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_get_best_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, %struct.iwl_scale_tbl_info* }
%struct.iwl_scale_tbl_info = type { i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IWL_RATE_INVALID = common dso_local global i64 0, align 8
@IWL_RATE_DECREASE_TH = common dso_local global i64 0, align 8
@IWL_RATE_HIGH_TH = common dso_local global i64 0, align 8
@IWL_RATE_SCALE_SWITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32, i64)* @rs_get_best_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rs_get_best_rate(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, %struct.iwl_scale_tbl_info* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.iwl_scale_tbl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.iwl_scale_tbl_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %7, align 8
  store %struct.iwl_scale_tbl_info* %2, %struct.iwl_scale_tbl_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %21 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %21, i32 0, i32 2
  %23 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %22, align 8
  %24 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %25 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %23, i64 %26
  store %struct.iwl_scale_tbl_info* %27, %struct.iwl_scale_tbl_info** %11, align 8
  %28 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %29 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %36 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %42 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = bitcast i64* %43 to i32*
  store i32* %44, i32** %14, align 8
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %20, align 8
  %46 = load i64, i64* @IWL_RATE_INVALID, align 8
  store i64 %46, i64* %18, align 8
  store i64 %46, i64* %17, align 8
  store i64 %46, i64* %16, align 8
  store i64 %46, i64* %15, align 8
  br label %47

47:                                               ; preds = %130, %5
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %49 = load i64, i64* %20, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %52 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @rs_get_adjacent_rate(%struct.iwl_priv* %48, i64 %49, i32 %50, i32 %53)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = and i32 %55, 255
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %17, align 8
  %58 = load i32, i32* %19, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %16, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i64, i64* %20, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 100, %65
  %67 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %68 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %47
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @IWL_RATE_DECREASE_TH, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @IWL_RATE_HIGH_TH, align 8
  %78 = icmp sle i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32*, i32** %14, align 8
  %81 = load i64, i64* %20, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %13, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %79, %75, %71, %47
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* @IWL_RATE_SCALE_SWITCH, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load i32*, i32** %14, align 8
  %93 = load i64, i64* %20, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %13, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %91, %79
  %100 = load i64, i64* %18, align 8
  %101 = load i64, i64* @IWL_RATE_INVALID, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* %18, align 8
  store i64 %104, i64* %15, align 8
  br label %131

105:                                              ; preds = %99
  %106 = load i64, i64* %20, align 8
  store i64 %106, i64* %15, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* @IWL_RATE_INVALID, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i64, i64* %17, align 8
  store i64 %111, i64* %20, align 8
  br label %113

112:                                              ; preds = %105
  br label %131

113:                                              ; preds = %110
  br label %130

114:                                              ; preds = %91, %87
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* @IWL_RATE_INVALID, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %131

119:                                              ; preds = %114
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* @IWL_RATE_INVALID, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i64, i64* %16, align 8
  store i64 %124, i64* %18, align 8
  %125 = load i64, i64* %16, align 8
  store i64 %125, i64* %20, align 8
  br label %128

126:                                              ; preds = %119
  %127 = load i64, i64* %20, align 8
  store i64 %127, i64* %15, align 8
  br label %131

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %113
  br label %47

131:                                              ; preds = %126, %118, %112, %103
  %132 = load i64, i64* %15, align 8
  ret i64 %132
}

declare dso_local i32 @rs_get_adjacent_rate(%struct.iwl_priv*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
