; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_vp_wfq_rt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_vp_wfq_rt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.init_qm_vport_params = type { i64*, i32 }

@QM_WFQ_MAX_INC_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Invalid VPORT WFQ weight configuration\0A\00", align 1
@NUM_OF_TCS = common dso_local global i64 0, align 8
@QM_INVALID_PQ_ID = common dso_local global i64 0, align 8
@QM_REG_WFQVPCRD_RT_OFFSET = common dso_local global i64 0, align 8
@QM_WFQ_CRD_REG_SIGN_BIT = common dso_local global i64 0, align 8
@QM_REG_WFQVPWEIGHT_RT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i64, %struct.init_qm_vport_params*)* @qed_vp_wfq_rt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_vp_wfq_rt_init(%struct.qed_hwfn* %0, i64 %1, %struct.init_qm_vport_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.init_qm_vport_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.init_qm_vport_params* %2, %struct.init_qm_vport_params** %7, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %72, %3
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %7, align 8
  %18 = load i64, i64* %11, align 8
  %19 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %17, i64 %18
  %20 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %72

24:                                               ; preds = %16
  %25 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %7, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %25, i64 %26
  %28 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @QM_WFQ_INC_VAL(i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @QM_WFQ_MAX_INC_VAL, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %36 = call i32 @DP_NOTICE(%struct.qed_hwfn* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %76

37:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @NUM_OF_TCS, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %7, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %43, i64 %44
  %46 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @QM_INVALID_PQ_ID, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %42
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %56 = load i64, i64* @QM_REG_WFQVPCRD_RT_OFFSET, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* @QM_WFQ_CRD_REG_SIGN_BIT, align 8
  %60 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %55, i64 %58, i64 %59)
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %62 = load i64, i64* @QM_REG_WFQVPWEIGHT_RT_OFFSET, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %61, i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %54, %42
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %38

71:                                               ; preds = %38
  br label %72

72:                                               ; preds = %71, %23
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %11, align 8
  br label %12

75:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %34
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @QM_WFQ_INC_VAL(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
