; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_nvm_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_nvm_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DRV_MB_PARAM_NVM_CFG_OPTION_ID = common dso_local global i32 0, align 4
@QED_NVM_CFG_OPTION_ALL = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_ALL = common dso_local global i32 0, align 4
@QED_NVM_CFG_OPTION_INIT = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_INIT = common dso_local global i32 0, align 4
@QED_NVM_CFG_OPTION_COMMIT = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_COMMIT = common dso_local global i32 0, align 4
@QED_NVM_CFG_OPTION_FREE = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_FREE = common dso_local global i32 0, align 4
@QED_NVM_CFG_OPTION_ENTITY_SEL = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_SEL = common dso_local global i32 0, align 4
@DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_ID = common dso_local global i32 0, align 4
@DRV_MSG_CODE_SET_NVM_CFG_OPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_nvm_set_cfg(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_ID, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @QED_MFW_SET_FIELD(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @QED_NVM_CFG_OPTION_ALL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_ALL, align 4
  %29 = call i32 @QED_MFW_SET_FIELD(i32 %27, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %26, %7
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @QED_NVM_CFG_OPTION_INIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_INIT, align 4
  %38 = call i32 @QED_MFW_SET_FIELD(i32 %36, i32 %37, i32 1)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @QED_NVM_CFG_OPTION_COMMIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_COMMIT, align 4
  %47 = call i32 @QED_MFW_SET_FIELD(i32 %45, i32 %46, i32 1)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @QED_NVM_CFG_OPTION_FREE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_FREE, align 4
  %56 = call i32 @QED_MFW_SET_FIELD(i32 %54, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @QED_NVM_CFG_OPTION_ENTITY_SEL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_SEL, align 4
  %65 = call i32 @QED_MFW_SET_FIELD(i32 %63, i32 %64, i32 1)
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @DRV_MB_PARAM_NVM_CFG_OPTION_ENTITY_ID, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @QED_MFW_SET_FIELD(i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %57
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %72 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %73 = load i32, i32* @DRV_MSG_CODE_SET_NVM_CFG_OPTION, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @qed_mcp_nvm_wr_cmd(%struct.qed_hwfn* %71, %struct.qed_ptt* %72, i32 %73, i32 %74, i32* %16, i32* %17, i32 %75, i32* %76)
  ret i32 %77
}

declare dso_local i32 @QED_MFW_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_mcp_nvm_wr_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
