; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_shadow_get_free_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_shadow_get_free_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.qed_llh_info* }
%struct.qed_llh_info = type { %struct.qed_llh_filter_info** }
%struct.qed_llh_filter_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"get_free_idx\00", align 1
@QED_LLH_INVALID_FILTER_IDX = common dso_local global i64 0, align 8
@NIG_REG_LLH_FUNC_FILTER_EN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i64, i64*)* @qed_llh_shadow_get_free_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_llh_shadow_get_free_idx(%struct.qed_dev* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.qed_llh_info*, align 8
  %9 = alloca %struct.qed_llh_filter_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %13 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %12, i32 0, i32 0
  %14 = load %struct.qed_llh_info*, %struct.qed_llh_info** %13, align 8
  store %struct.qed_llh_info* %14, %struct.qed_llh_info** %8, align 8
  %15 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @qed_llh_shadow_sanity(%struct.qed_dev* %15, i64 %16, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load i64, i64* @QED_LLH_INVALID_FILTER_IDX, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  %25 = load %struct.qed_llh_info*, %struct.qed_llh_info** %8, align 8
  %26 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %25, i32 0, i32 0
  %27 = load %struct.qed_llh_filter_info**, %struct.qed_llh_filter_info*** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %27, i64 %28
  %30 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %29, align 8
  store %struct.qed_llh_filter_info* %30, %struct.qed_llh_filter_info** %9, align 8
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %46, %22
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN_SIZE, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.qed_llh_filter_info*, %struct.qed_llh_filter_info** %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %36, i64 %37
  %39 = getelementptr inbounds %struct.qed_llh_filter_info, %struct.qed_llh_filter_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %11, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  br label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %31

49:                                               ; preds = %42, %31
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @qed_llh_shadow_sanity(%struct.qed_dev*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
