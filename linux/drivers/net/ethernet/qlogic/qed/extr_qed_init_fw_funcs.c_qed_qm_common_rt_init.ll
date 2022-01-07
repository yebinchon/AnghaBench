; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_qm_common_rt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_qm_common_rt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_qm_common_rt_init_params = type { i32, i32, i32, i32, i32, i32, i32 }

@QM_OPPOR_LINE_VOQ_DEF = common dso_local global i32 0, align 4
@QM_RF_OPPORTUNISTIC_MASK_LINEVOQ_SHIFT = common dso_local global i32 0, align 4
@QM_BYTE_CRD_EN = common dso_local global i32 0, align 4
@QM_RF_OPPORTUNISTIC_MASK_BYTEVOQ_SHIFT = common dso_local global i32 0, align 4
@QM_RF_OPPORTUNISTIC_MASK_PFWFQ_SHIFT = common dso_local global i32 0, align 4
@QM_RF_OPPORTUNISTIC_MASK_VPWFQ_SHIFT = common dso_local global i32 0, align 4
@QM_RF_OPPORTUNISTIC_MASK_PFRL_SHIFT = common dso_local global i32 0, align 4
@QM_RF_OPPORTUNISTIC_MASK_VPQCNRL_SHIFT = common dso_local global i32 0, align 4
@QM_OPPOR_FW_STOP_DEF = common dso_local global i32 0, align 4
@QM_RF_OPPORTUNISTIC_MASK_FWPAUSE_SHIFT = common dso_local global i32 0, align 4
@QM_OPPOR_PQ_EMPTY_DEF = common dso_local global i32 0, align 4
@QM_RF_OPPORTUNISTIC_MASK_QUEUEEMPTY_SHIFT = common dso_local global i32 0, align 4
@QM_REG_AFULLOPRTNSTCCRDMASK_RT_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_qm_common_rt_init(%struct.qed_hwfn* %0, %struct.qed_qm_common_rt_init_params* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_qm_common_rt_init_params*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_qm_common_rt_init_params* %1, %struct.qed_qm_common_rt_init_params** %4, align 8
  %6 = load i32, i32* @QM_OPPOR_LINE_VOQ_DEF, align 4
  %7 = load i32, i32* @QM_RF_OPPORTUNISTIC_MASK_LINEVOQ_SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @QM_BYTE_CRD_EN, align 4
  %10 = load i32, i32* @QM_RF_OPPORTUNISTIC_MASK_BYTEVOQ_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = or i32 %8, %11
  %13 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %14 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @QM_RF_OPPORTUNISTIC_MASK_PFWFQ_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %12, %17
  %19 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %20 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @QM_RF_OPPORTUNISTIC_MASK_VPWFQ_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %18, %23
  %25 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %26 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @QM_RF_OPPORTUNISTIC_MASK_PFRL_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %24, %29
  %31 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %32 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @QM_RF_OPPORTUNISTIC_MASK_VPQCNRL_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %30, %35
  %37 = load i32, i32* @QM_OPPOR_FW_STOP_DEF, align 4
  %38 = load i32, i32* @QM_RF_OPPORTUNISTIC_MASK_FWPAUSE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load i32, i32* @QM_OPPOR_PQ_EMPTY_DEF, align 4
  %42 = load i32, i32* @QM_RF_OPPORTUNISTIC_MASK_QUEUEEMPTY_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %46 = load i32, i32* @QM_REG_AFULLOPRTNSTCCRDMASK_RT_OFFSET, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @STORE_RT_REG(%struct.qed_hwfn* %45, i32 %46, i32 %47)
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %50 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %51 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @qed_enable_pf_rl(%struct.qed_hwfn* %49, i32 %52)
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %55 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %56 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @qed_enable_pf_wfq(%struct.qed_hwfn* %54, i32 %57)
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %60 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %61 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @qed_enable_vport_rl(%struct.qed_hwfn* %59, i32 %62)
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %65 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %66 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @qed_enable_vport_wfq(%struct.qed_hwfn* %64, i32 %67)
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %70 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %71 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %74 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %77 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qed_cmdq_lines_rt_init(%struct.qed_hwfn* %69, i32 %72, i32 %75, i32 %78)
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %81 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %82 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %85 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.qed_qm_common_rt_init_params*, %struct.qed_qm_common_rt_init_params** %4, align 8
  %88 = getelementptr inbounds %struct.qed_qm_common_rt_init_params, %struct.qed_qm_common_rt_init_params* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @qed_btb_blocks_rt_init(%struct.qed_hwfn* %80, i32 %83, i32 %86, i32 %89)
  ret i32 0
}

declare dso_local i32 @STORE_RT_REG(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_enable_pf_rl(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_enable_pf_wfq(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_enable_vport_rl(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_enable_vport_wfq(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_cmdq_lines_rt_init(%struct.qed_hwfn*, i32, i32, i32) #1

declare dso_local i32 @qed_btb_blocks_rt_init(%struct.qed_hwfn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
