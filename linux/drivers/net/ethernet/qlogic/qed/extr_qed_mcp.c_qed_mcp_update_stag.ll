; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_update_stag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_update_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.public_func = type { i64 }

@FUNC_MF_CFG_OV_STAG_MASK = common dso_local global i32 0, align 4
@QED_MF_OVLAN_CLSS = common dso_local global i32 0, align 4
@QED_MCP_VLAN_UNSET = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_TAG_VALUE = common dso_local global i32 0, align 4
@NIG_REG_LLH_FUNC_TAG_EN = common dso_local global i32 0, align 4
@DORQ_REG_TAG1_OVRD_MODE = common dso_local global i32 0, align 4
@DORQ_REG_PF_EXT_VID_BB_K2 = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ovlan = %d hw_mode = 0x%x\0A\00", align 1
@DRV_MSG_CODE_S_TAG_UPDATE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_mcp_update_stag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_mcp_update_stag(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca %struct.public_func, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %9 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %11 = call i32 @MCP_PF_ID(%struct.qed_hwfn* %10)
  %12 = call i32 @qed_mcp_get_shmem_func(%struct.qed_hwfn* %8, %struct.qed_ptt* %9, %struct.public_func* %5, i32 %11)
  %13 = getelementptr inbounds %struct.public_func, %struct.public_func* %5, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @FUNC_MF_CFG_OV_STAG_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %17, i32* %22, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @QED_MF_OVLAN_CLSS, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %32, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %91

39:                                               ; preds = %2
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %41 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @QED_MCP_VLAN_UNSET, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %39
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %48 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %49 = load i32, i32* @NIG_REG_LLH_FUNC_TAG_VALUE, align 4
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %51 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @qed_wr(%struct.qed_hwfn* %47, %struct.qed_ptt* %48, i32 %49, i32 %53)
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %56 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %57 = load i32, i32* @NIG_REG_LLH_FUNC_TAG_EN, align 4
  %58 = call i32 @qed_wr(%struct.qed_hwfn* %55, %struct.qed_ptt* %56, i32 %57, i32 1)
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %60 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %61 = load i32, i32* @DORQ_REG_TAG1_OVRD_MODE, align 4
  %62 = call i32 @qed_wr(%struct.qed_hwfn* %59, %struct.qed_ptt* %60, i32 %61, i32 1)
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %64 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %65 = load i32, i32* @DORQ_REG_PF_EXT_VID_BB_K2, align 4
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %67 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @qed_wr(%struct.qed_hwfn* %63, %struct.qed_ptt* %64, i32 %65, i32 %69)
  br label %88

71:                                               ; preds = %39
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %73 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %74 = load i32, i32* @NIG_REG_LLH_FUNC_TAG_EN, align 4
  %75 = call i32 @qed_wr(%struct.qed_hwfn* %72, %struct.qed_ptt* %73, i32 %74, i32 0)
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %77 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %78 = load i32, i32* @NIG_REG_LLH_FUNC_TAG_VALUE, align 4
  %79 = call i32 @qed_wr(%struct.qed_hwfn* %76, %struct.qed_ptt* %77, i32 %78, i32 0)
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %81 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %82 = load i32, i32* @DORQ_REG_TAG1_OVRD_MODE, align 4
  %83 = call i32 @qed_wr(%struct.qed_hwfn* %80, %struct.qed_ptt* %81, i32 %82, i32 0)
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %85 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %86 = load i32, i32* @DORQ_REG_PF_EXT_VID_BB_K2, align 4
  %87 = call i32 @qed_wr(%struct.qed_hwfn* %84, %struct.qed_ptt* %85, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %71, %46
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %90 = call i32 @qed_sp_pf_update_stag(%struct.qed_hwfn* %89)
  br label %91

91:                                               ; preds = %88, %2
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %93 = load i32, i32* @QED_MSG_SP, align 4
  %94 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %95 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %101 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %92, i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %103)
  %105 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %106 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %107 = load i32, i32* @DRV_MSG_CODE_S_TAG_UPDATE_ACK, align 4
  %108 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %105, %struct.qed_ptt* %106, i32 %107, i32 0, i32* %6, i32* %7)
  ret void
}

declare dso_local i32 @qed_mcp_get_shmem_func(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.public_func*, i32) #1

declare dso_local i32 @MCP_PF_ID(%struct.qed_hwfn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_sp_pf_update_stag(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
