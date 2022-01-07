; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_collect_tpc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_collect_tpc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32 }
%struct.iwl_scale_tbl_info = type { %struct.iwl_rate_scale_data* }
%struct.iwl_rate_scale_data = type { i32 }

@TPC_MAX_REDUCTION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32, i32, i32, i64)* @rs_collect_tpc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_collect_tpc_data(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.iwl_scale_tbl_info* %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.iwl_lq_sta*, align 8
  %11 = alloca %struct.iwl_scale_tbl_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.iwl_rate_scale_data*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %9, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %10, align 8
  store %struct.iwl_scale_tbl_info* %2, %struct.iwl_scale_tbl_info** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store %struct.iwl_rate_scale_data* null, %struct.iwl_rate_scale_data** %16, align 8
  %17 = load i64, i64* %15, align 8
  %18 = load i64, i64* @TPC_MAX_REDUCTION, align 8
  %19 = icmp ugt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %39

26:                                               ; preds = %7
  %27 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %28 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %27, i32 0, i32 0
  %29 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %28, align 8
  %30 = load i64, i64* %15, align 8
  %31 = getelementptr inbounds %struct.iwl_rate_scale_data, %struct.iwl_rate_scale_data* %29, i64 %30
  store %struct.iwl_rate_scale_data* %31, %struct.iwl_rate_scale_data** %16, align 8
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %33 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.iwl_rate_scale_data*, %struct.iwl_rate_scale_data** %16, align 8
  %38 = call i32 @_rs_collect_tx_data(%struct.iwl_mvm* %32, %struct.iwl_scale_tbl_info* %33, i32 %34, i32 %35, i32 %36, %struct.iwl_rate_scale_data* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %26, %23
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @_rs_collect_tx_data(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i32, i32, %struct.iwl_rate_scale_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
