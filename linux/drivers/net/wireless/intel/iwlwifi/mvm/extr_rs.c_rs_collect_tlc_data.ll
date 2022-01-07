; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_collect_tlc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_collect_tlc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.lq_sta_pers }
%struct.lq_sta_pers = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iwl_scale_tbl_info = type { i64, %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RS_COLUMN_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32, %struct.iwl_scale_tbl_info*, i32, i32, i32)* @rs_collect_tlc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_collect_tlc_data(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1, i32 %2, %struct.iwl_scale_tbl_info* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_scale_tbl_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iwl_rate_scale_data*, align 8
  %17 = alloca %struct.lq_sta_pers*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %9, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.iwl_scale_tbl_info* %3, %struct.iwl_scale_tbl_info** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.iwl_rate_scale_data* null, %struct.iwl_rate_scale_data** %16, align 8
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @IWL_RATE_COUNT, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %7
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %87

27:                                               ; preds = %20
  %28 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %29 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RS_COLUMN_INVALID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %27
  %34 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.lq_sta_pers* %37, %struct.lq_sta_pers** %17, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.lq_sta_pers*, %struct.lq_sta_pers** %17, align 8
  %40 = getelementptr inbounds %struct.lq_sta_pers, %struct.lq_sta_pers* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %40, align 8
  %42 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %43 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %38
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.lq_sta_pers*, %struct.lq_sta_pers** %17, align 8
  %55 = getelementptr inbounds %struct.lq_sta_pers, %struct.lq_sta_pers* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %55, align 8
  %57 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %58 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %53
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %33, %27
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %70 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @rs_update_tid_tpt_stats(%struct.iwl_mvm* %69, %struct.iwl_mvm_sta* %70, i32 %71, i32 %72)
  %74 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %75 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %74, i32 0, i32 1
  %76 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %76, i64 %78
  store %struct.iwl_rate_scale_data* %79, %struct.iwl_rate_scale_data** %16, align 8
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %81 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %16, align 8
  %86 = call i32 @_rs_collect_tx_data(%struct.iwl_mvm* %80, %struct.iwl_scale_tbl_info* %81, i32 %82, i32 %83, i32 %84, %struct.iwl_rate_scale_data* %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %68, %24
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @rs_update_tid_tpt_stats(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32, i32) #1

declare dso_local i32 @_rs_collect_tx_data(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i32, i32, %struct.iwl_rate_scale_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
