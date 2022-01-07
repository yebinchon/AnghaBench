; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_db_rec_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_db_rec_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_DB_REC_COUNT = common dso_local global i32 0, align 4
@DORQ_REG_DPM_FORCE_ABORT = common dso_local global i32 0, align 4
@DORQ_REG_PF_USAGE_CNT = common dso_local global i32 0, align 4
@QED_DB_REC_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"DB recovery: doorbell usage failed to zero after %d usec. usage was %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_db_rec_flush_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_db_rec_flush_queue(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %8 = load i32, i32* @QED_DB_REC_COUNT, align 4
  store i32 %8, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %11 = load i32, i32* @DORQ_REG_DPM_FORCE_ABORT, align 4
  %12 = call i32 @qed_wr(%struct.qed_hwfn* %9, %struct.qed_ptt* %10, i32 %11, i32 1)
  br label %13

13:                                               ; preds = %22, %2
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ false, %13 ], [ %19, %17 ]
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %25 = load i32, i32* @DORQ_REG_PF_USAGE_CNT, align 4
  %26 = call i32 @qed_rd(%struct.qed_hwfn* %23, %struct.qed_ptt* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @QED_DB_REC_INTERVAL, align 4
  %28 = call i32 @udelay(i32 %27)
  br label %13

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @QED_DB_REC_INTERVAL, align 4
  %37 = load i32, i32* @QED_DB_REC_COUNT, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @DP_NOTICE(i32 %35, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DP_NOTICE(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
