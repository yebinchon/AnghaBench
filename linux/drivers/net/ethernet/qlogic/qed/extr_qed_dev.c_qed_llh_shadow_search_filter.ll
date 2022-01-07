; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_shadow_search_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_shadow_search_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.qed_llh_info* }
%struct.qed_llh_info = type { %struct.qed_llh_filter_info** }
%struct.qed_llh_filter_info = type { i32 }
%union.qed_llh_filter = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"search\00", align 1
@QED_LLH_INVALID_FILTER_IDX = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_EN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i64, %union.qed_llh_filter*, i64*)* @qed_llh_shadow_search_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_llh_shadow_search_filter(%struct.qed_dev* %0, i64 %1, %union.qed_llh_filter* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.qed_llh_filter*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.qed_llh_info*, align 8
  %11 = alloca %struct.qed_llh_filter_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %union.qed_llh_filter* %2, %union.qed_llh_filter** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %15 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %14, i32 0, i32 0
  %16 = load %struct.qed_llh_info*, %struct.qed_llh_info** %15, align 8
  store %struct.qed_llh_info* %16, %struct.qed_llh_info** %10, align 8
  %17 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @qed_llh_shadow_sanity(%struct.qed_dev* %17, i64 %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %53

24:                                               ; preds = %4
  %25 = load i64, i64* @QED_LLH_INVALID_FILTER_IDX, align 8
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.qed_llh_info*, %struct.qed_llh_info** %10, align 8
  %28 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %27, i32 0, i32 0
  %29 = load %struct.qed_llh_filter_info**, %struct.qed_llh_filter_info*** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %29, i64 %30
  %32 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %31, align 8
  store %struct.qed_llh_filter_info* %32, %struct.qed_llh_filter_info** %11, align 8
  store i64 0, i64* %13, align 8
  br label %33

33:                                               ; preds = %49, %24
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN_SIZE, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %union.qed_llh_filter*, %union.qed_llh_filter** %8, align 8
  %39 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %39, i64 %40
  %42 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %41, i32 0, i32 0
  %43 = call i32 @memcmp(%union.qed_llh_filter* %38, i32* %42, i32 4)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %13, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %13, align 8
  br label %33

52:                                               ; preds = %45, %33
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @qed_llh_shadow_sanity(%struct.qed_dev*, i64, i32, i8*) #1

declare dso_local i32 @memcmp(%union.qed_llh_filter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
