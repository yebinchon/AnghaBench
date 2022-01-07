; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_nvm_get_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_nvm_get_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DRV_MB_PARAM_NVM_CFG_OPTION_ID = common dso_local global i32 0, align 4
@QED_NVM_CFG_OPTION_INIT = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_INIT = common dso_local global i32 0, align 4
@QED_NVM_CFG_OPTION_FREE = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_FREE = common dso_local global i32 0, align 4
@QED_NVM_CFG_OPTION_ENTITY_SEL = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_SEL = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_ID = common dso_local global i32 0, align 4
@DRV_MSG_CODE_GET_NVM_CFG_OPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_nvm_get_cfg(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_ID, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @QED_MFW_SET_FIELD(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @QED_NVM_CFG_OPTION_INIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_INIT, align 4
  %30 = call i32 @QED_MFW_SET_FIELD(i32 %28, i32 %29, i32 1)
  br label %31

31:                                               ; preds = %27, %7
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @QED_NVM_CFG_OPTION_FREE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_FREE, align 4
  %39 = call i32 @QED_MFW_SET_FIELD(i32 %37, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @QED_NVM_CFG_OPTION_ENTITY_SEL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_SEL, align 4
  %48 = call i32 @QED_MFW_SET_FIELD(i32 %46, i32 %47, i32 1)
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_ID, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @QED_MFW_SET_FIELD(i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %55 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %56 = load i32, i32* @DRV_MSG_CODE_GET_NVM_CFG_OPTION, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @qed_mcp_nvm_rd_cmd(%struct.qed_hwfn* %54, %struct.qed_ptt* %55, i32 %56, i32 %57, i32* %16, i32* %17, i32* %58, i32* %59)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  ret i32 %61
}

declare dso_local i32 @QED_MFW_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_mcp_nvm_rd_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
