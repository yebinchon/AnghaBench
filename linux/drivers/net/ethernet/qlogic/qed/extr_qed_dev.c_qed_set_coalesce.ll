; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.qed_ptt = type { i32 }
%struct.coalescing_timeset = type { i32 }

@QED_COAL_MODE_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Coalescing configuration not enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@COALESCING_TIMESET_TIMESET = common dso_local global i32 0, align 4
@COALESCING_TIMESET_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32, i8*, i64, i32)* @qed_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_set_coalesce(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.coalescing_timeset*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QED_COAL_MODE_ENABLE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %24 = call i32 @DP_NOTICE(%struct.qed_hwfn* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %50

27:                                               ; preds = %6
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to %struct.coalescing_timeset*
  store %struct.coalescing_timeset* %29, %struct.coalescing_timeset** %14, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @memset(i8* %30, i32 0, i64 %31)
  %33 = load %struct.coalescing_timeset*, %struct.coalescing_timeset** %14, align 8
  %34 = getelementptr inbounds %struct.coalescing_timeset, %struct.coalescing_timeset* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @COALESCING_TIMESET_TIMESET, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @SET_FIELD(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.coalescing_timeset*, %struct.coalescing_timeset** %14, align 8
  %40 = getelementptr inbounds %struct.coalescing_timeset, %struct.coalescing_timeset* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @COALESCING_TIMESET_VALID, align 4
  %43 = call i32 @SET_FIELD(i32 %41, i32 %42, i32 1)
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %45 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @qed_memcpy_to(%struct.qed_hwfn* %44, %struct.qed_ptt* %45, i32 %46, i8* %47, i64 %48)
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %27, %22
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_memcpy_to(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
