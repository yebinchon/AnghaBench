; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_db_rec_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_db_rec_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_OVERFLOW_BIT = common dso_local global i32 0, align 4
@DORQ_REG_PF_OVFL_STICKY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PF Overflow sticky: attn %u current %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_db_rec_handler(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %9 = load i32, i32* @QED_OVERFLOW_BIT, align 4
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i64 @test_and_clear_bit(i32 %9, i32* %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %16 = load i32, i32* @DORQ_REG_PF_OVFL_STICKY, align 4
  %17 = call i64 @qed_rd(%struct.qed_hwfn* %14, %struct.qed_ptt* %15, i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %52

24:                                               ; preds = %20, %2
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @DP_NOTICE(%struct.qed_hwfn* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %27)
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %33 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %39 = call i32 @qed_db_rec_flush_queue(%struct.qed_hwfn* %37, %struct.qed_ptt* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %52

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %31, %24
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %48 = load i32, i32* @DORQ_REG_PF_OVFL_STICKY, align 4
  %49 = call i32 @qed_wr(%struct.qed_hwfn* %46, %struct.qed_ptt* %47, i32 %48, i32 0)
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %51 = call i32 @qed_db_recovery_execute(%struct.qed_hwfn* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %42, %23
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, i64) #1

declare dso_local i32 @qed_db_rec_flush_queue(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_db_recovery_execute(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
