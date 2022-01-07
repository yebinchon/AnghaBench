; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DRV_MSG_CODE_MCP_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1
@QED_MCP_HALT_SLEEP_MS = common dso_local global i32 0, align 4
@MCP_REG_CPU_STATE = common dso_local global i32 0, align 4
@MCP_REG_CPU_STATE_SOFT_HALTED = common dso_local global i64 0, align 8
@QED_MCP_HALT_MAX_RETRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed to halt the MCP [CPU_MODE = 0x%08x, CPU_STATE = 0x%08x]\0A\00", align 1
@MCP_REG_CPU_MODE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_halt(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %13 = load i32, i32* @DRV_MSG_CODE_MCP_HALT, align 4
  %14 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %11, %struct.qed_ptt* %12, i32 %13, i32 0, i64* %6, i64* %7)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = call i32 @DP_ERR(%struct.qed_hwfn* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* @QED_MCP_HALT_SLEEP_MS, align 4
  %24 = call i32 @msleep(i32 %23)
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %27 = load i32, i32* @MCP_REG_CPU_STATE, align 4
  %28 = call i64 @qed_rd(%struct.qed_hwfn* %25, %struct.qed_ptt* %26, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @MCP_REG_CPU_STATE_SOFT_HALTED, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %40

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* @QED_MCP_HALT_MAX_RETRIES, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %22, label %40

40:                                               ; preds = %35, %33
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @QED_MCP_HALT_MAX_RETRIES, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %48 = load i32, i32* @MCP_REG_CPU_MODE, align 4
  %49 = call i64 @qed_rd(%struct.qed_hwfn* %46, %struct.qed_ptt* %47, i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @DP_NOTICE(%struct.qed_hwfn* %45, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %50)
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %40
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %56 = call i32 @qed_mcp_cmd_set_blocking(%struct.qed_hwfn* %55, i32 1)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %44, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i64*, i64*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, i64) #1

declare dso_local i32 @qed_mcp_cmd_set_blocking(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
