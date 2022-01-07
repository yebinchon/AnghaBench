; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_pf_wfq_rt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_pf_wfq_rt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_qm_pf_rt_init_params = type { i64, i64, i32, i32, i32, %struct.init_qm_pq_params* }
%struct.init_qm_pq_params = type { i32, i32 }

@QM_WFQ_MAX_INC_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid PF WFQ weight configuration\0A\00", align 1
@MAX_NUM_PFS_BB = common dso_local global i32 0, align 4
@QM_REG_WFQPFCRD_RT_OFFSET = common dso_local global i32 0, align 4
@QM_REG_WFQPFCRD_MSB_RT_OFFSET = common dso_local global i32 0, align 4
@QM_WFQ_CRD_REG_SIGN_BIT = common dso_local global i64 0, align 8
@QM_REG_WFQPFUPPERBOUND_RT_OFFSET = common dso_local global i64 0, align 8
@QM_WFQ_UPPER_BOUND = common dso_local global i32 0, align 4
@QM_REG_WFQPFWEIGHT_RT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_qm_pf_rt_init_params*)* @qed_pf_wfq_rt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_pf_wfq_rt_init(%struct.qed_hwfn* %0, %struct.qed_qm_pf_rt_init_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_qm_pf_rt_init_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.init_qm_pq_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_qm_pf_rt_init_params* %1, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %12 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %13 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %16 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %20 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %19, i32 0, i32 5
  %21 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %20, align 8
  store %struct.init_qm_pq_params* %21, %struct.init_qm_pq_params** %7, align 8
  %22 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %23 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @QM_WFQ_INC_VAL(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @QM_WFQ_MAX_INC_VAL, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %2
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = call i32 @DP_NOTICE(%struct.qed_hwfn* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %107

35:                                               ; preds = %28
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %82, %35
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %36
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %7, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %42, i64 %43
  %45 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.init_qm_pq_params*, %struct.init_qm_pq_params** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %47, i64 %48
  %50 = getelementptr inbounds %struct.init_qm_pq_params, %struct.init_qm_pq_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %53 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @qed_get_ext_voq(%struct.qed_hwfn* %41, i32 %46, i32 %51, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %57 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAX_NUM_PFS_BB, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %40
  %62 = load i32, i32* @QM_REG_WFQPFCRD_RT_OFFSET, align 4
  br label %65

63:                                               ; preds = %40
  %64 = load i32, i32* @QM_REG_WFQPFCRD_MSB_RT_OFFSET, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @MAX_NUM_PFS_BB, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  %71 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %72 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MAX_NUM_PFS_BB, align 4
  %75 = srem i32 %73, %74
  %76 = add nsw i32 %70, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i64, i64* @QM_WFQ_CRD_REG_SIGN_BIT, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @OVERWRITE_RT_REG(%struct.qed_hwfn* %77, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %65
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %36

85:                                               ; preds = %36
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %87 = load i64, i64* @QM_REG_WFQPFUPPERBOUND_RT_OFFSET, align 8
  %88 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %89 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %87, %91
  %93 = load i32, i32* @QM_WFQ_UPPER_BOUND, align 4
  %94 = load i64, i64* @QM_WFQ_CRD_REG_SIGN_BIT, align 8
  %95 = trunc i64 %94 to i32
  %96 = or i32 %93, %95
  %97 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %86, i64 %92, i32 %96)
  %98 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %99 = load i64, i64* @QM_REG_WFQPFWEIGHT_RT_OFFSET, align 8
  %100 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %5, align 8
  %101 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %99, %103
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %98, i64 %104, i32 %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %85, %32
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @QM_WFQ_INC_VAL(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_get_ext_voq(%struct.qed_hwfn*, i32, i32, i32) #1

declare dso_local i32 @OVERWRITE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
