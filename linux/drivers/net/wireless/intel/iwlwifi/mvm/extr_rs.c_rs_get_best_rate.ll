; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_best_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_best_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, %struct.iwl_scale_tbl_info* }
%struct.iwl_scale_tbl_info = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@IWL_MVM_RS_SR_NO_DECREASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"SR %d high. Find rate exceeding EXPECTED_CURRENT %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"SR %d not that good. Find rate exceeding ACTUAL_TPT %d\0A\00", align 1
@BITS_PER_LONG = common dso_local global i32 0, align 4
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Best rate found %d target_tp %d expected_new %d\0A\00", align 1
@IWL_INVALID_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i64, i64)* @rs_get_best_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rs_get_best_rate(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.iwl_scale_tbl_info* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.iwl_scale_tbl_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iwl_scale_tbl_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %7, align 8
  store %struct.iwl_scale_tbl_info* %2, %struct.iwl_scale_tbl_info** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %18, i32 0, i32 2
  %20 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %19, align 8
  %21 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %20, i64 %23
  store %struct.iwl_scale_tbl_info* %24, %struct.iwl_scale_tbl_info** %11, align 8
  %25 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %26 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %33 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %14, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* @IWL_MVM_RS_SR_NO_DECREASE, align 4
  %43 = call i64 @RS_PERCENT(i32 %42)
  %44 = icmp sge i64 %41, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %5
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 100, %46
  store i32 %47, i32* %16, align 4
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %16, align 4
  %52 = call i32 (%struct.iwl_mvm*, i8*, i32, i32, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %62

53:                                               ; preds = %5
  %54 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %16, align 4
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %16, align 4
  %61 = call i32 (%struct.iwl_mvm*, i8*, i32, i32, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %57, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %45
  %63 = load i32, i32* @BITS_PER_LONG, align 4
  %64 = call i32 @find_first_bit(i64* %9, i32 %63)
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %79, %62
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* @IWL_RATE_INVALID, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 100, %75
  %77 = icmp slt i32 %70, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %91

79:                                               ; preds = %69
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %81 = load i32, i32* %17, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %84 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @rs_get_adjacent_rate(%struct.iwl_mvm* %80, i32 %81, i64 %82, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = ashr i32 %88, 8
  %90 = and i32 %89, 255
  store i32 %90, i32* %17, align 4
  br label %65

91:                                               ; preds = %78, %65
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @IWL_RATE_INVALID, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 100, %103
  br label %107

105:                                              ; preds = %91
  %106 = load i32, i32* @IWL_INVALID_VALUE, align 4
  br label %107

107:                                              ; preds = %105, %98
  %108 = phi i32 [ %104, %98 ], [ %106, %105 ]
  %109 = call i32 (%struct.iwl_mvm*, i8*, i32, i32, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %92, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94, i32 %108)
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  ret i64 %111
}

declare dso_local i64 @RS_PERCENT(i32) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, i32, i32, ...) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @rs_get_adjacent_rate(%struct.iwl_mvm*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
