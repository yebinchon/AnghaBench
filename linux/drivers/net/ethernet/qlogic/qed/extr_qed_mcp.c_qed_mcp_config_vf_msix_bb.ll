; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_config_vf_msix_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_config_vf_msix_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.qed_ptt = type { i32 }

@DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_SHIFT = common dso_local global i64 0, align 8
@DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_MASK = common dso_local global i64 0, align 8
@DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_SHIFT = common dso_local global i64 0, align 8
@DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_MASK = common dso_local global i64 0, align 8
@DRV_MSG_CODE_CFG_VF_MSIX = common dso_local global i32 0, align 4
@FW_MSG_CODE_DRV_CFG_VF_MSIX_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"VF[%d]: MFW failed to set MSI-X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Requested 0x%02x MSI-x interrupts from VF 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64)* @qed_mcp_config_vf_msix_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_config_vf_msix_bb(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %15 = call i32 @IS_LEAD_HWFN(%struct.qed_hwfn* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %62

18:                                               ; preds = %4
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = mul nsw i64 %24, %23
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_SHIFT, align 8
  %28 = shl i64 %26, %27
  %29 = load i64, i64* @DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_MASK, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* %11, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = load i64, i64* @DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_MASK, align 8
  %37 = and i64 %35, %36
  %38 = load i64, i64* %11, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %11, align 8
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %41 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %42 = load i32, i32* @DRV_MSG_CODE_CFG_VF_MSIX, align 4
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %40, %struct.qed_ptt* %41, i32 %42, i64 %43, i64* %10, i64* %12)
  store i32 %44, i32* %13, align 4
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @FW_MSG_CODE_DRV_CFG_VF_MSIX_DONE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %18
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @DP_NOTICE(%struct.qed_hwfn* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %60

54:                                               ; preds = %18
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %56 = load i32, i32* @QED_MSG_IOV, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %55, i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %17
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @IS_LEAD_HWFN(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i64, i64*, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
