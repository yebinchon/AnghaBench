; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_timers_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_timers_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i64 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@TM_REG_PF_ENABLE_CONN = common dso_local global i32 0, align 4
@TM_REG_PF_ENABLE_TASK = common dso_local global i32 0, align 4
@QED_HW_STOP_RETRY_LIMIT = common dso_local global i32 0, align 4
@TM_REG_PF_SCAN_ACTIVE_CONN = common dso_local global i32 0, align 4
@TM_REG_PF_SCAN_ACTIVE_TASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Timers linear scans are not over [Connection %02x Tasks %02x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dev*, %struct.qed_hwfn*, %struct.qed_ptt*)* @qed_hw_timers_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_hw_timers_stop(%struct.qed_dev* %0, %struct.qed_hwfn* %1, %struct.qed_ptt* %2) #0 {
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_hwfn* %1, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %2, %struct.qed_ptt** %6, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %9 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %10 = load i32, i32* @TM_REG_PF_ENABLE_CONN, align 4
  %11 = call i32 @qed_wr(%struct.qed_hwfn* %8, %struct.qed_ptt* %9, i32 %10, i32 0)
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %13 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %14 = load i32, i32* @TM_REG_PF_ENABLE_TASK, align 4
  %15 = call i32 @qed_wr(%struct.qed_hwfn* %12, %struct.qed_ptt* %13, i32 %14, i32 0)
  %16 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %17 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %62

21:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @QED_HW_STOP_RETRY_LIMIT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %28 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %29 = load i32, i32* @TM_REG_PF_SCAN_ACTIVE_CONN, align 4
  %30 = call i64 @qed_rd(%struct.qed_hwfn* %27, %struct.qed_ptt* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %35 = load i32, i32* @TM_REG_PF_SCAN_ACTIVE_TASK, align 4
  %36 = call i64 @qed_rd(%struct.qed_hwfn* %33, %struct.qed_ptt* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %44

39:                                               ; preds = %32, %26
  %40 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %22

44:                                               ; preds = %38, %22
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @QED_HW_STOP_RETRY_LIMIT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %62

49:                                               ; preds = %44
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %52 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %53 = load i32, i32* @TM_REG_PF_SCAN_ACTIVE_CONN, align 4
  %54 = call i64 @qed_rd(%struct.qed_hwfn* %51, %struct.qed_ptt* %52, i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %57 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %58 = load i32, i32* @TM_REG_PF_SCAN_ACTIVE_TASK, align 4
  %59 = call i64 @qed_rd(%struct.qed_hwfn* %56, %struct.qed_ptt* %57, i32 %58)
  %60 = trunc i64 %59 to i32
  %61 = call i32 @DP_NOTICE(%struct.qed_hwfn* %50, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %49, %48, %20
  ret void
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
