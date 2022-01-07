; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c___qed_ll2_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c___qed_ll2_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_ll2_stats = type { i32 }
%struct.qed_hwfn = type { %struct.qed_ll2_info* }
%struct.qed_ll2_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qed_ptt = type { i32 }

@QED_MAX_NUM_OF_LL2_CONNECTIONS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to acquire ptt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.qed_ll2_stats*)* @__qed_ll2_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qed_ll2_get_stats(i8* %0, i64 %1, %struct.qed_ll2_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qed_ll2_stats*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ll2_info*, align 8
  %10 = alloca %struct.qed_ptt*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.qed_ll2_stats* %2, %struct.qed_ll2_stats** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %12, %struct.qed_hwfn** %8, align 8
  store %struct.qed_ll2_info* null, %struct.qed_ll2_info** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @QED_MAX_NUM_OF_LL2_CONNECTIONS, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %18, align 8
  %20 = icmp ne %struct.qed_ll2_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %16
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  %27 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %27, i64 %28
  store %struct.qed_ll2_info* %29, %struct.qed_ll2_info** %9, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %31 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %30)
  store %struct.qed_ptt* %31, %struct.qed_ptt** %10, align 8
  %32 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %33 = icmp ne %struct.qed_ptt* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %36 = call i32 @DP_ERR(%struct.qed_hwfn* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %24
  %40 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %9, align 8
  %41 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %47 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %48 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %7, align 8
  %49 = call i32 @_qed_ll2_get_port_stats(%struct.qed_hwfn* %46, %struct.qed_ptt* %47, %struct.qed_ll2_stats* %48)
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %52 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %53 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %9, align 8
  %54 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %7, align 8
  %55 = call i32 @_qed_ll2_get_tstats(%struct.qed_hwfn* %51, %struct.qed_ptt* %52, %struct.qed_ll2_info* %53, %struct.qed_ll2_stats* %54)
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %57 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %58 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %9, align 8
  %59 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %7, align 8
  %60 = call i32 @_qed_ll2_get_ustats(%struct.qed_hwfn* %56, %struct.qed_ptt* %57, %struct.qed_ll2_info* %58, %struct.qed_ll2_stats* %59)
  %61 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %9, align 8
  %62 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %50
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %67 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %68 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %9, align 8
  %69 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %7, align 8
  %70 = call i32 @_qed_ll2_get_pstats(%struct.qed_hwfn* %66, %struct.qed_ptt* %67, %struct.qed_ll2_info* %68, %struct.qed_ll2_stats* %69)
  br label %71

71:                                               ; preds = %65, %50
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %73 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %74 = call i32 @qed_ptt_release(%struct.qed_hwfn* %72, %struct.qed_ptt* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %34, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @_qed_ll2_get_port_stats(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_ll2_stats*) #1

declare dso_local i32 @_qed_ll2_get_tstats(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_ll2_info*, %struct.qed_ll2_stats*) #1

declare dso_local i32 @_qed_ll2_get_ustats(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_ll2_info*, %struct.qed_ll2_stats*) #1

declare dso_local i32 @_qed_ll2_get_pstats(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_ll2_info*, %struct.qed_ll2_stats*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
