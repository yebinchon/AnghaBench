; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_shadow_sanity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_llh_shadow_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.qed_llh_info* }
%struct.qed_llh_info = type { i64 }

@.str = private unnamed_addr constant [68 x i8] c"LLH shadow [%s]: using ppfid %d while only %d ppfids are available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_FILTER_EN_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"LLH shadow [%s]: using filter_idx %d while only %d filters are available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i64, i64, i8*)* @qed_llh_shadow_sanity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_llh_shadow_sanity(%struct.qed_dev* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.qed_llh_info*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %12 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %11, i32 0, i32 0
  %13 = load %struct.qed_llh_info*, %struct.qed_llh_info** %12, align 8
  store %struct.qed_llh_info* %13, %struct.qed_llh_info** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.qed_llh_info*, %struct.qed_llh_info** %10, align 8
  %16 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.qed_llh_info*, %struct.qed_llh_info** %10, align 8
  %24 = getelementptr inbounds %struct.qed_llh_info, %struct.qed_llh_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @DP_NOTICE(%struct.qed_dev* %20, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %21, i64 %22, i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %42

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN_SIZE, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @NIG_REG_LLH_FUNC_FILTER_EN_SIZE, align 8
  %38 = call i32 @DP_NOTICE(%struct.qed_dev* %34, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i8* %35, i64 %36, i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %33, %19
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
