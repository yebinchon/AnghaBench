; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_set_ptt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_set_ptt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i64 }
%struct.qed_ptt = type { i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"ptt[%d] of hwfn[%02x] is used by hwfn[%02x]!\0A\00", align 1
@PXP_EXTERNAL_BAR_PF_WINDOW_SINGLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_ptt*, i64)* @qed_set_ptt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_set_ptt(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %11 = call i64 @qed_ptt_get_hw_addr(%struct.qed_hwfn* %9, %struct.qed_ptt* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = sub nsw i64 %12, %13
  store i64 %14, i64* %8, align 8
  %15 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %16 = getelementptr inbounds %struct.qed_ptt, %struct.qed_ptt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %25 = getelementptr inbounds %struct.qed_ptt, %struct.qed_ptt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %28 = getelementptr inbounds %struct.qed_ptt, %struct.qed_ptt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @DP_NOTICE(%struct.qed_hwfn* %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %29, i64 %32)
  br label %34

34:                                               ; preds = %22, %3
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @PXP_EXTERNAL_BAR_PF_WINDOW_SINGLE_SIZE, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %34
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %44 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @qed_ptt_set_win(%struct.qed_hwfn* %43, %struct.qed_ptt* %44, i64 %45)
  store i64 0, i64* %8, align 8
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %49 = call i64 @qed_ptt_get_bar_addr(%struct.qed_ptt* %48)
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %49, %50
  ret i64 %51
}

declare dso_local i64 @qed_ptt_get_hw_addr(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i64, i64) #1

declare dso_local i32 @qed_ptt_set_win(%struct.qed_hwfn*, %struct.qed_ptt*, i64) #1

declare dso_local i64 @qed_ptt_get_bar_addr(%struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
