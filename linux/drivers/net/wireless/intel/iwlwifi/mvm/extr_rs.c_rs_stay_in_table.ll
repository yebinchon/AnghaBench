; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_stay_in_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_stay_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, %struct.iwl_scale_tbl_info*, %struct.TYPE_2__ }
%struct.iwl_scale_tbl_info = type { i32 }
%struct.TYPE_2__ = type { %struct.iwl_mvm* }
%struct.iwl_mvm = type { i32 }

@RS_STATE_STAY_IN_COLUMN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@IWL_MVM_RS_STAY_IN_COLUMN_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"LQ: stay is expired %d %d %d\0A\00", align 1
@RS_STATE_SEARCH_CYCLE_STARTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Moving to RS_STATE_SEARCH_CYCLE_STARTED\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"LQ: stay in table clear win\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_lq_sta*, i32)* @rs_stay_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_stay_in_table(%struct.iwl_lq_sta* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_lq_sta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_scale_tbl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %9, i32 0, i32 12
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %11, align 8
  store %struct.iwl_mvm* %12, %struct.iwl_mvm** %8, align 8
  %13 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %16, i32 0, i32 11
  %18 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %18, i64 %20
  store %struct.iwl_scale_tbl_info* %21, %struct.iwl_scale_tbl_info** %5, align 8
  %22 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RS_STATE_STAY_IN_COLUMN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %134

27:                                               ; preds = %2
  %28 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32, i32* @jiffies, align 4
  %34 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @IWL_MVM_RS_STAY_IN_COLUMN_TIMEOUT, align 4
  %38 = load i32, i32* @HZ, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %36, %40
  %42 = call i32 @time_after(i32 %33, i64 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %32, %27
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %75, label %46

46:                                               ; preds = %43
  %47 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %75, label %54

54:                                               ; preds = %46
  %55 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %56 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %59 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %75, label %62

62:                                               ; preds = %54
  %63 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %102, label %67

67:                                               ; preds = %62
  %68 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %69 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %72, %54, %46, %43
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %77 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %78 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %81 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82, i32 %83)
  %85 = load i64, i64* @RS_STATE_SEARCH_CYCLE_STARTED, align 8
  %86 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %87 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %89 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %91 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %90, i32 0, i32 7
  store i32 0, i32* %91, align 4
  %92 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %93 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %92, i32 0, i32 6
  store i32 0, i32* %93, align 8
  %94 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %95 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %5, align 8
  %97 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %101 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  br label %123

102:                                              ; preds = %72, %67, %62
  %103 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %104 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %108 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %111 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %109, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %102
  %115 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %116 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %118 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %120 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %5, align 8
  %121 = call i32 @rs_rate_scale_clear_tbl_windows(%struct.iwl_mvm* %119, %struct.iwl_scale_tbl_info* %120)
  br label %122

122:                                              ; preds = %114, %102
  br label %123

123:                                              ; preds = %122, %75
  %124 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %125 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @RS_STATE_SEARCH_CYCLE_STARTED, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %131 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %5, align 8
  %132 = call i32 @rs_rate_scale_clear_tbl_windows(%struct.iwl_mvm* %130, %struct.iwl_scale_tbl_info* %131)
  br label %133

133:                                              ; preds = %129, %123
  br label %134

134:                                              ; preds = %133, %2
  ret void
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rs_rate_scale_clear_tbl_windows(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
