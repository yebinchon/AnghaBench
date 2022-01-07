; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_qm_pf_rt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_qm_pf_rt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_qm_pf_rt_init_params = type { i64, i32, i32, i32, i32, i64, i64, i64, i32, %struct.init_qm_vport_params* }
%struct.init_qm_vport_params = type { i32* }

@QM_OTHER_PQS_PER_PF = common dso_local global i32 0, align 4
@NUM_OF_TCS = common dso_local global i64 0, align 8
@QM_INVALID_PQ_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_qm_pf_rt_init(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_qm_pf_rt_init_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_qm_pf_rt_init_params*, align 8
  %8 = alloca %struct.init_qm_vport_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_qm_pf_rt_init_params* %2, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %12 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %13 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %12, i32 0, i32 9
  %14 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %13, align 8
  store %struct.init_qm_vport_params* %14, %struct.init_qm_vport_params** %8, align 8
  %15 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %16 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %19 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i32 @QM_PQ_MEM_4KB(i64 %21)
  %23 = load i32, i32* @QM_OTHER_PQS_PER_PF, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %49, %3
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %28 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @NUM_OF_TCS, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* @QM_INVALID_PQ_ID, align 4
  %38 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %38, i64 %39
  %41 = getelementptr inbounds %struct.init_qm_vport_params, %struct.init_qm_vport_params* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %37, i32* %44, align 4
  br label %45

45:                                               ; preds = %36
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %32

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %11, align 8
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %54 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %55 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %58 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %61 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %64 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @qed_other_pq_map_rt_init(%struct.qed_hwfn* %53, i32 %56, i32 %59, i64 %62, i64 %65, i32 0)
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %68 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %69 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @qed_tx_pq_map_rt_init(%struct.qed_hwfn* %67, %struct.qed_ptt* %68, %struct.qed_qm_pf_rt_init_params* %69, i32 %70)
  %72 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %73 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %52
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %78 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %79 = call i64 @qed_pf_wfq_rt_init(%struct.qed_hwfn* %77, %struct.qed_qm_pf_rt_init_params* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 -1, i32* %4, align 4
  br label %119

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %52
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %85 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %86 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %89 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @qed_pf_rl_rt_init(%struct.qed_hwfn* %84, i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %119

94:                                               ; preds = %83
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %96 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %97 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %8, align 8
  %100 = call i64 @qed_vp_wfq_rt_init(%struct.qed_hwfn* %95, i64 %98, %struct.init_qm_vport_params* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i32 -1, i32* %4, align 4
  br label %119

103:                                              ; preds = %94
  %104 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %105 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %106 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %109 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.qed_qm_pf_rt_init_params*, %struct.qed_qm_pf_rt_init_params** %7, align 8
  %112 = getelementptr inbounds %struct.qed_qm_pf_rt_init_params, %struct.qed_qm_pf_rt_init_params* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.init_qm_vport_params*, %struct.init_qm_vport_params** %8, align 8
  %115 = call i64 @qed_vport_rl_rt_init(%struct.qed_hwfn* %104, i32 %107, i64 %110, i32 %113, %struct.init_qm_vport_params* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %119

118:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %117, %102, %93, %81
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @QM_PQ_MEM_4KB(i64) #1

declare dso_local i32 @qed_other_pq_map_rt_init(%struct.qed_hwfn*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @qed_tx_pq_map_rt_init(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_qm_pf_rt_init_params*, i32) #1

declare dso_local i64 @qed_pf_wfq_rt_init(%struct.qed_hwfn*, %struct.qed_qm_pf_rt_init_params*) #1

declare dso_local i64 @qed_pf_rl_rt_init(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i64 @qed_vp_wfq_rt_init(%struct.qed_hwfn*, i64, %struct.init_qm_vport_params*) #1

declare dso_local i64 @qed_vport_rl_rt_init(%struct.qed_hwfn*, i32, i64, i32, %struct.init_qm_vport_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
