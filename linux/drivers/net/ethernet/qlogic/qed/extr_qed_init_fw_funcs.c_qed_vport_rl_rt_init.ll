; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_vport_rl_rt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_vport_rl_rt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.init_qm_vport_params = type { i32 }

@MAX_QM_GLOBAL_RLS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Invalid VPORT ID for rate limiter configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid VPORT rate-limit configuration\0A\00", align 1
@QM_REG_RLGLBLCRD_RT_OFFSET = common dso_local global i64 0, align 8
@QM_RL_CRD_REG_SIGN_BIT = common dso_local global i64 0, align 8
@QM_REG_RLGLBLUPPERBOUND_RT_OFFSET = common dso_local global i64 0, align 8
@QM_REG_RLGLBLINCVAL_RT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i64, i64, i32, %struct.init_qm_vport_params*)* @qed_vport_rl_rt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_vport_rl_rt_init(%struct.qed_hwfn* %0, i64 %1, i64 %2, i32 %3, %struct.init_qm_vport_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.init_qm_vport_params*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.init_qm_vport_params* %4, %struct.init_qm_vport_params** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @MAX_QM_GLOBAL_RLS, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %22 = call i32 @DP_NOTICE(%struct.qed_hwfn* %21, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %84

23:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %13, align 8
  br label %25

25:                                               ; preds = %78, %23
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %25
  %30 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %30, i64 %31
  %33 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %37, i64 %38
  %40 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32 [ %41, %36 ], [ %43, %42 ]
  %46 = call i32 @QM_RL_INC_VAL(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @QM_VP_RL_MAX_INC_VAL(i32 %48)
  %50 = icmp sgt i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %53 = call i32 @DP_NOTICE(%struct.qed_hwfn* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %84

54:                                               ; preds = %44
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %56 = load i64, i64* @QM_REG_RLGLBLCRD_RT_OFFSET, align 8
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* @QM_RL_CRD_REG_SIGN_BIT, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %55, i64 %58, i32 %60)
  %62 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %63 = load i64, i64* @QM_REG_RLGLBLUPPERBOUND_RT_OFFSET, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @QM_VP_RL_UPPER_BOUND(i32 %66)
  %68 = load i64, i64* @QM_RL_CRD_REG_SIGN_BIT, align 8
  %69 = trunc i64 %68 to i32
  %70 = or i32 %67, %69
  %71 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %62, i64 %65, i32 %70)
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %73 = load i64, i64* @QM_REG_RLGLBLINCVAL_RT_OFFSET, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %72, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %54
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %13, align 8
  br label %25

83:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %51, %20
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @QM_RL_INC_VAL(i32) #1

declare dso_local i32 @QM_VP_RL_MAX_INC_VAL(i32) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i64, i32) #1

declare dso_local i32 @QM_VP_RL_UPPER_BOUND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
