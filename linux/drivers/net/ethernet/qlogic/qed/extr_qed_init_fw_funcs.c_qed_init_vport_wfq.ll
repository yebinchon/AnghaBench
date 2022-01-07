; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_init_vport_wfq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_init_vport_wfq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@NUM_OF_TCS = common dso_local global i64 0, align 8
@QM_WFQ_MAX_INC_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Invalid VPORT WFQ weight configuration\0A\00", align 1
@QM_INVALID_PQ_ID = common dso_local global i32 0, align 4
@QM_REG_WFQVPWEIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_init_vport_wfq(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* @NUM_OF_TCS, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @QM_WFQ_INC_VAL(i32 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* @QM_WFQ_MAX_INC_VAL, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %24 = call i32 @DP_NOTICE(%struct.qed_hwfn* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %53

25:                                               ; preds = %18
  store i64 0, i64* %12, align 8
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @NUM_OF_TCS, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @QM_INVALID_PQ_ID, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %40 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %41 = load i64, i64* @QM_REG_WFQVPWEIGHT, align 8
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @qed_wr(%struct.qed_hwfn* %39, %struct.qed_ptt* %40, i64 %45, i64 %46)
  br label %48

48:                                               ; preds = %38, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %12, align 8
  br label %26

52:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @QM_WFQ_INC_VAL(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
