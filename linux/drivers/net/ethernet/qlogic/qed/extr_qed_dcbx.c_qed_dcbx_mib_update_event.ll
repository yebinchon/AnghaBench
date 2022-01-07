; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_mib_update_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_mib_update_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.qed_dcbx_results, i32 }
%struct.qed_dcbx_results = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.qed_ptt = type { i32 }

@QED_DCBX_OPERATIONAL_MIB = common dso_local global i32 0, align 4
@QED_PCI_ETH_ROCE = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ROCE = common dso_local global i64 0, align 8
@DCBX_PROTOCOL_ROCE_V2 = common dso_local global i64 0, align 8
@NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT = common dso_local global i32 0, align 4
@NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN = common dso_local global i32 0, align 4
@NIG_REG_TX_EDPM_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dcbx_mib_update_event(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_dcbx_results*, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %12 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @qed_dcbx_read_mib(%struct.qed_hwfn* %11, %struct.qed_ptt* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %96

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @QED_DCBX_OPERATIONAL_MIB, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %25 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %26 = call i32 @qed_dcbx_process_mib_info(%struct.qed_hwfn* %24, %struct.qed_ptt* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %23
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %32 = call i32 @qed_qm_reconf(%struct.qed_hwfn* %30, %struct.qed_ptt* %31)
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = call i32 @qed_sp_pf_update(%struct.qed_hwfn* %33)
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %36 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QED_PCI_ETH_ROCE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %43 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %44 = call i32 @qed_roce_dpm_dcbx(%struct.qed_hwfn* %42, %struct.qed_ptt* %43)
  br label %45

45:                                               ; preds = %41, %29
  br label %46

46:                                               ; preds = %45, %23
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %50 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @qed_dcbx_get_params(%struct.qed_hwfn* %48, i32* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @QED_DCBX_OPERATIONAL_MIB, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %47
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %60 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store %struct.qed_dcbx_results* %62, %struct.qed_dcbx_results** %9, align 8
  %63 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %9, align 8
  %64 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i64, i64* @DCBX_PROTOCOL_ROCE, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 1, %69
  %71 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %9, align 8
  %72 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i64, i64* @DCBX_PROTOCOL_ROCE_V2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = or i32 %70, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @NIG_REG_TX_EDPM_CTRL_TX_EDPM_TC_EN_SHIFT, align 4
  %81 = load i32, i32* %10, align 4
  %82 = shl i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @NIG_REG_TX_EDPM_CTRL_TX_EDPM_EN, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %87 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %88 = load i32, i32* @NIG_REG_TX_EDPM_CTRL, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @qed_wr(%struct.qed_hwfn* %86, %struct.qed_ptt* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %58, %47
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @qed_dcbx_aen(%struct.qed_hwfn* %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %91, %17
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @qed_dcbx_read_mib(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_dcbx_process_mib_info(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_qm_reconf(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_sp_pf_update(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_roce_dpm_dcbx(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_dcbx_get_params(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_dcbx_aen(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
