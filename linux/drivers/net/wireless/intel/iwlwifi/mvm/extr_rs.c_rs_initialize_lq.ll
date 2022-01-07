; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_initialize_lq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_initialize_lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, %struct.TYPE_4__, %struct.iwl_scale_tbl_info*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_scale_tbl_info = type { i32, %struct.rs_rate }
%struct.rs_rate = type { i64 }

@ANT_A = common dso_local global i64 0, align 8
@ANT_B = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"ant: 0x%x, chains 0x%x, fw tx ant: 0x%x, nvm tx ant: 0x%x\0A\00", align 1
@ANT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, i32)* @rs_initialize_lq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_initialize_lq(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_scale_tbl_info*, align 8
  %10 = alloca %struct.rs_rate*, align 8
  %11 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %13 = icmp ne %struct.ieee80211_sta* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %16 = icmp ne %struct.iwl_lq_sta* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %4
  br label %107

18:                                               ; preds = %14
  %19 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %25 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  br label %32

27:                                               ; preds = %18
  %28 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @rs_search_tbl(i64 %30)
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %34 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %33, i32 0, i32 3
  %35 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %34, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %35, i64 %36
  store %struct.iwl_scale_tbl_info* %37, %struct.iwl_scale_tbl_info** %9, align 8
  %38 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %39 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %38, i32 0, i32 1
  store %struct.rs_rate* %39, %struct.rs_rate** %10, align 8
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %42 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.rs_rate*, %struct.rs_rate** %10, align 8
  %45 = call i32 @rs_get_initial_rate(%struct.iwl_mvm* %40, %struct.ieee80211_sta* %41, %struct.iwl_lq_sta* %42, i32 %43, %struct.rs_rate* %44)
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %48 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %49 = call i32 @rs_init_optimal_rate(%struct.iwl_mvm* %46, %struct.ieee80211_sta* %47, %struct.iwl_lq_sta* %48)
  %50 = load %struct.rs_rate*, %struct.rs_rate** %10, align 8
  %51 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ANT_A, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %32
  %56 = load %struct.rs_rate*, %struct.rs_rate** %10, align 8
  %57 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ANT_B, align 8
  %60 = icmp ne i64 %58, %59
  br label %61

61:                                               ; preds = %55, %32
  %62 = phi i1 [ false, %32 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  %64 = load %struct.rs_rate*, %struct.rs_rate** %10, align 8
  %65 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %68 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = icmp ne %struct.TYPE_6__* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %61
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  br label %88

86:                                               ; preds = %61
  %87 = load i32, i32* @ANT_INVALID, align 4
  br label %88

88:                                               ; preds = %86, %80
  %89 = phi i32 [ %85, %80 ], [ %87, %86 ]
  %90 = call i32 @WARN_ONCE(i32 %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %66, i32 %70, i32 %75, i32 %89)
  %91 = load %struct.rs_rate*, %struct.rs_rate** %10, align 8
  %92 = call i32 @rs_get_column_from_rate(%struct.rs_rate* %91)
  %93 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %94 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %96 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %97 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %95, %struct.iwl_scale_tbl_info* %96)
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %99 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %100 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %101 = load %struct.rs_rate*, %struct.rs_rate** %10, align 8
  %102 = call i32 @rs_fill_lq_cmd(%struct.iwl_mvm* %98, %struct.ieee80211_sta* %99, %struct.iwl_lq_sta* %100, %struct.rs_rate* %101)
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %104 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %105 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %104, i32 0, i32 1
  %106 = call i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %103, i32* %105)
  br label %107

107:                                              ; preds = %88, %17
  ret void
}

declare dso_local i64 @rs_search_tbl(i64) #1

declare dso_local i32 @rs_get_initial_rate(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, i32, %struct.rs_rate*) #1

declare dso_local i32 @rs_init_optimal_rate(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @rs_get_column_from_rate(%struct.rs_rate*) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_fill_lq_cmd(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, %struct.rs_rate*) #1

declare dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
