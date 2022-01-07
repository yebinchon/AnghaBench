; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__, %struct.qed_hwfn* }
%struct.TYPE_2__ = type { i64, %struct.qed_dbg_feature* }
%struct.qed_dbg_feature = type { i32, i32, i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"copying debugfs feature to external buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dbg_feature(%struct.qed_dev* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.qed_hwfn*, align 8
  %11 = alloca %struct.qed_dbg_feature*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_ptt*, align 8
  %14 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %16 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %15, i32 0, i32 1
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %16, align 8
  %18 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %19 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i64 %21
  store %struct.qed_hwfn* %22, %struct.qed_hwfn** %10, align 8
  %23 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %24 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %26, i64 %28
  store %struct.qed_dbg_feature* %29, %struct.qed_dbg_feature** %11, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %31 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %30)
  store %struct.qed_ptt* %31, %struct.qed_ptt** %13, align 8
  %32 = load %struct.qed_ptt*, %struct.qed_ptt** %13, align 8
  %33 = icmp ne %struct.qed_ptt* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %82

37:                                               ; preds = %4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %39 = load %struct.qed_ptt*, %struct.qed_ptt** %13, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @qed_dbg_dump(%struct.qed_hwfn* %38, %struct.qed_ptt* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @DBG_STATUS_OK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %47 = load i32, i32* @QED_MSG_DEBUG, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @qed_dbg_get_status_str(i32 %48)
  %50 = call i32 (%struct.qed_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_dev* %46, i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %9, align 8
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  br label %77

54:                                               ; preds = %37
  %55 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %56 = load i32, i32* @QED_MSG_DEBUG, align 4
  %57 = call i32 (%struct.qed_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_dev* %55, i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %11, align 8
  %60 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %11, align 8
  %63 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(i8* %58, i32 %61, i32 %64)
  %66 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %67 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %69, i64 %71
  %73 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %54, %45
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %79 = load %struct.qed_ptt*, %struct.qed_ptt** %13, align 8
  %80 = call i32 @qed_ptt_release(%struct.qed_hwfn* %78, %struct.qed_ptt* %79)
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %34
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_dbg_dump(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, ...) #1

declare dso_local i32 @qed_dbg_get_status_str(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
