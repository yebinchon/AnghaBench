; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_set_stay_in_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_set_stay_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_lq_sta = type { i32, i64, i32, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"we are staying in the same table\0A\00", align 1
@IL_LEGACY_TBL_COUNT = common dso_local global i32 0, align 4
@IL_LEGACY_FAILURE_LIMIT = common dso_local global i32 0, align 4
@IL_LEGACY_SUCCESS_LIMIT = common dso_local global i32 0, align 4
@IL_NONE_LEGACY_TBL_COUNT = common dso_local global i32 0, align 4
@IL_NONE_LEGACY_FAILURE_LIMIT = common dso_local global i32 0, align 4
@IL_NONE_LEGACY_SUCCESS_LIMIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i64, %struct.il_lq_sta*)* @il4965_rs_set_stay_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_rs_set_stay_in_table(%struct.il_priv* %0, i64 %1, %struct.il_lq_sta* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.il_lq_sta*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.il_lq_sta* %2, %struct.il_lq_sta** %6, align 8
  %7 = call i32 @D_RATE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %9 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* @IL_LEGACY_TBL_COUNT, align 4
  %14 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %15 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @IL_LEGACY_FAILURE_LIMIT, align 4
  %17 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %18 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IL_LEGACY_SUCCESS_LIMIT, align 4
  %20 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %21 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  br label %32

22:                                               ; preds = %3
  %23 = load i32, i32* @IL_NONE_LEGACY_TBL_COUNT, align 4
  %24 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %25 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @IL_NONE_LEGACY_FAILURE_LIMIT, align 4
  %27 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %28 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @IL_NONE_LEGACY_SUCCESS_LIMIT, align 4
  %30 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %31 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %22, %12
  %33 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %34 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %36 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %38 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @jiffies, align 4
  %40 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %41 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.il_lq_sta*, %struct.il_lq_sta** %6, align 8
  %43 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  ret void
}

declare dso_local i32 @D_RATE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
