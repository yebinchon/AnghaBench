; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ll2_stats = type { i32 }
%struct.qed_hwfn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to get LL2 stats\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to get LL2 stats on engine 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_ll2_stats*)* @qed_ll2_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_stats(%struct.qed_dev* %0, %struct.qed_ll2_stats* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_ll2_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_ll2_stats* %1, %struct.qed_ll2_stats** %5, align 8
  %9 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %10 = call i32 @qed_ll2_is_storage_eng1(%struct.qed_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %12 = call %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev* %11)
  store %struct.qed_hwfn* %12, %struct.qed_hwfn** %7, align 8
  %13 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %14 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %22 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %23 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %5, align 8
  %28 = call i32 @qed_ll2_get_stats(%struct.qed_hwfn* %21, i32 %26, %struct.qed_ll2_stats* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %33 = call i32 @DP_NOTICE(%struct.qed_hwfn* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %40 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %39)
  %41 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %42 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %5, align 8
  %47 = call i32 @__qed_ll2_get_stats(%struct.qed_hwfn* %40, i32 %45, %struct.qed_ll2_stats* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %52 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %51)
  %53 = call i32 @DP_NOTICE(%struct.qed_hwfn* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %35
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %50, %31, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @qed_ll2_is_storage_eng1(%struct.qed_dev*) #1

declare dso_local %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @qed_ll2_get_stats(%struct.qed_hwfn*, i32, %struct.qed_ll2_stats*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @__qed_ll2_get_stats(%struct.qed_hwfn*, i32, %struct.qed_ll2_stats*) #1

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
