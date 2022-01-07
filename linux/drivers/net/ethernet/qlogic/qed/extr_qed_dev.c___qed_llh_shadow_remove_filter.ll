; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_llh_shadow_remove_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_llh_shadow_remove_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.qed_llh_info* }
%struct.qed_llh_info = type { %struct.qed_llh_filter_info** }
%struct.qed_llh_filter_info = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"LLH shadow: trying to remove a filter with ref_cnt=0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i64, i64, i64*)* @__qed_llh_shadow_remove_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qed_llh_shadow_remove_filter(%struct.qed_dev* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.qed_llh_info*, align 8
  %11 = alloca %struct.qed_llh_filter_info*, align 8
  %12 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %14 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %13, i32 0, i32 0
  %15 = load %struct.qed_llh_info*, %struct.qed_llh_info** %14, align 8
  store %struct.qed_llh_info* %15, %struct.qed_llh_info** %10, align 8
  %16 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @qed_llh_shadow_sanity(%struct.qed_dev* %16, i64 %17, i64 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  %25 = load %struct.qed_llh_info*, %struct.qed_llh_info** %10, align 8
  %26 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %25, i32 0, i32 0
  %27 = load %struct.qed_llh_filter_info**, %struct.qed_llh_filter_info*** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %27, i64 %28
  %30 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %29, align 8
  store %struct.qed_llh_filter_info* %30, %struct.qed_llh_filter_info** %11, align 8
  %31 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %31, i64 %32
  %34 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %24
  %38 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %39 = call i32 @DP_NOTICE(%struct.qed_dev* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %62

42:                                               ; preds = %24
  %43 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %11, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %43, i64 %44
  %46 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  %50 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %50, i64 %51
  %53 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %42
  %57 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %57, i64 %58
  %60 = call i32 @memset(%struct.qed_llh_filter_info* %59, i32 0, i32 8)
  br label %61

61:                                               ; preds = %56, %42
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %37, %22
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @qed_llh_shadow_sanity(%struct.qed_dev*, i64, i64, i8*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*) #1

declare dso_local i32 @memset(%struct.qed_llh_filter_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
