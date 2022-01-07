; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_shadow_add_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_shadow_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%union.qed_llh_filter = type { i32 }

@QED_LLH_INVALID_FILTER_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Failed to find an empty LLH filter to utilize [ppfid %d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i64, i32, %union.qed_llh_filter*, i64*, i32*)* @qed_llh_shadow_add_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_llh_shadow_add_filter(%struct.qed_dev* %0, i64 %1, i32 %2, %union.qed_llh_filter* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.qed_llh_filter*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store %union.qed_llh_filter* %3, %union.qed_llh_filter** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %union.qed_llh_filter*, %union.qed_llh_filter** %11, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = call i32 @qed_llh_shadow_search_filter(%struct.qed_dev* %15, i64 %16, %union.qed_llh_filter* %17, i64* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %59

24:                                               ; preds = %6
  %25 = load i64*, i64** %12, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QED_LLH_INVALID_FILTER_IDX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = call i32 @qed_llh_shadow_get_free_idx(%struct.qed_dev* %30, i64 %31, i64* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %59

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i64*, i64** %12, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @QED_LLH_INVALID_FILTER_IDX, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @DP_NOTICE(%struct.qed_dev* %45, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %59

50:                                               ; preds = %39
  %51 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64*, i64** %12, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %union.qed_llh_filter*, %union.qed_llh_filter** %11, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @__qed_llh_shadow_add_filter(%struct.qed_dev* %51, i64 %52, i64 %54, i32 %55, %union.qed_llh_filter* %56, i32* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %50, %44, %36, %22
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @qed_llh_shadow_search_filter(%struct.qed_dev*, i64, %union.qed_llh_filter*, i64*) #1

declare dso_local i32 @qed_llh_shadow_get_free_idx(%struct.qed_dev*, i64, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i64) #1

declare dso_local i32 @__qed_llh_shadow_add_filter(%struct.qed_dev*, i64, i64, i32, %union.qed_llh_filter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
