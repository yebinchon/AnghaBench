; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_init_vport_rl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_init_vport_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@MAX_QM_GLOBAL_RLS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Invalid VPORT ID for rate limiter configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid VPORT rate-limit configuration\0A\00", align 1
@QM_REG_RLGLBLCRD = common dso_local global i64 0, align 8
@QM_RL_CRD_REG_SIGN_BIT = common dso_local global i64 0, align 8
@QM_REG_RLGLBLINCVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_init_vport_rl(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* @MAX_QM_GLOBAL_RLS, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %13, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %20 = call i32 @DP_NOTICE(%struct.qed_hwfn* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %55

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  br label %28

26:                                               ; preds = %21
  %27 = load i64, i64* %11, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  %30 = call i64 @QM_RL_INC_VAL(i64 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @QM_VP_RL_MAX_INC_VAL(i64 %32)
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %37 = call i32 @DP_NOTICE(%struct.qed_hwfn* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %55

38:                                               ; preds = %28
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %40 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %41 = load i64, i64* @QM_REG_RLGLBLCRD, align 8
  %42 = load i64, i64* %9, align 8
  %43 = mul nsw i64 %42, 4
  %44 = add nsw i64 %41, %43
  %45 = load i64, i64* @QM_RL_CRD_REG_SIGN_BIT, align 8
  %46 = call i32 @qed_wr(%struct.qed_hwfn* %39, %struct.qed_ptt* %40, i64 %44, i64 %45)
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %48 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %49 = load i64, i64* @QM_REG_RLGLBLINCVAL, align 8
  %50 = load i64, i64* %9, align 8
  %51 = mul nsw i64 %50, 4
  %52 = add nsw i64 %49, %51
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @qed_wr(%struct.qed_hwfn* %47, %struct.qed_ptt* %48, i64 %52, i64 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %38, %35, %18
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i64 @QM_RL_INC_VAL(i64) #1

declare dso_local i64 @QM_VP_RL_MAX_INC_VAL(i64) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
