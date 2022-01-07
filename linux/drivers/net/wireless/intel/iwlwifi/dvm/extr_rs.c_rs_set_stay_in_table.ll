; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_set_stay_in_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_set_stay_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_lq_sta = type { i32, i64, i32, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"we are staying in the same table\0A\00", align 1
@IWL_LEGACY_TABLE_COUNT = common dso_local global i32 0, align 4
@IWL_LEGACY_FAILURE_LIMIT = common dso_local global i32 0, align 4
@IWL_LEGACY_SUCCESS_LIMIT = common dso_local global i32 0, align 4
@IWL_NONE_LEGACY_TABLE_COUNT = common dso_local global i32 0, align 4
@IWL_NONE_LEGACY_FAILURE_LIMIT = common dso_local global i32 0, align 4
@IWL_NONE_LEGACY_SUCCESS_LIMIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i64, %struct.iwl_lq_sta*)* @rs_set_stay_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_set_stay_in_table(%struct.iwl_priv* %0, i64 %1, %struct.iwl_lq_sta* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iwl_lq_sta*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %6, align 8
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %8 = call i32 @IWL_DEBUG_RATE(%struct.iwl_priv* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %10 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i32, i32* @IWL_LEGACY_TABLE_COUNT, align 4
  %15 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @IWL_LEGACY_FAILURE_LIMIT, align 4
  %18 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @IWL_LEGACY_SUCCESS_LIMIT, align 4
  %21 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  br label %33

23:                                               ; preds = %3
  %24 = load i32, i32* @IWL_NONE_LEGACY_TABLE_COUNT, align 4
  %25 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @IWL_NONE_LEGACY_FAILURE_LIMIT, align 4
  %28 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @IWL_NONE_LEGACY_SUCCESS_LIMIT, align 4
  %31 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %23, %13
  %34 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @jiffies, align 4
  %41 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  ret void
}

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
