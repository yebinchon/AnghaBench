; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.qed_hwfn = type { i32 }

@QED_LL2_UNUSED_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Failed to stop LL2 on engine 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to stop LL2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*)* @qed_ll2_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_stop(%struct.qed_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  %8 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %9 = call i32 @qed_ll2_is_storage_eng1(%struct.qed_dev* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %11 = call %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev* %10)
  store %struct.qed_hwfn* %11, %struct.qed_hwfn** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %13 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QED_LL2_UNUSED_HANDLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %22 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %23 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @qed_llh_remove_mac_filter(%struct.qed_dev* %21, i32 0, i32 %24)
  %26 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %27 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @eth_zero_addr(i32 %28)
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %31 = call i64 @QED_IS_ISCSI_PERSONALITY(%struct.qed_hwfn* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %35 = call i32 @qed_ll2_stop_ooo(%struct.qed_hwfn* %34)
  br label %36

36:                                               ; preds = %33, %20
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %41 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %40)
  %42 = call i32 @__qed_ll2_stop(%struct.qed_hwfn* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %47 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %46)
  %48 = call i32 @DP_NOTICE(%struct.qed_hwfn* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %36
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %52 = call i32 @__qed_ll2_stop(%struct.qed_hwfn* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %57 = call i32 @DP_NOTICE(%struct.qed_hwfn* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %60 = call i32 @qed_ll2_kill_buffers(%struct.qed_dev* %59)
  %61 = load i64, i64* @QED_LL2_UNUSED_HANDLE, align 8
  %62 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %63 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %58, %19
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @qed_ll2_is_storage_eng1(%struct.qed_dev*) #1

declare dso_local %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @qed_llh_remove_mac_filter(%struct.qed_dev*, i32, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i64 @QED_IS_ISCSI_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_ll2_stop_ooo(%struct.qed_hwfn*) #1

declare dso_local i32 @__qed_ll2_stop(%struct.qed_hwfn*) #1

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_ll2_kill_buffers(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
