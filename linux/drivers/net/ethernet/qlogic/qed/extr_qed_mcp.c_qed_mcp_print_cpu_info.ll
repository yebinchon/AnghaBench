; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_print_cpu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_print_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_MCP_RESP_ITER_US = common dso_local global i32 0, align 4
@MCP_REG_CPU_MODE = common dso_local global i32 0, align 4
@MCP_REG_CPU_STATE = common dso_local global i32 0, align 4
@MCP_REG_CPU_PROGRAM_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"MCP CPU info: mode 0x%08x, state 0x%08x, pc {0x%08x, 0x%08x, 0x%08x}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_mcp_print_cpu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_mcp_print_cpu_info(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  %11 = load i32, i32* @QED_MCP_RESP_ITER_US, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %14 = load i32, i32* @MCP_REG_CPU_MODE, align 4
  %15 = call i32 @qed_rd(%struct.qed_hwfn* %12, %struct.qed_ptt* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %17 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %18 = load i32, i32* @MCP_REG_CPU_STATE, align 4
  %19 = call i32 @qed_rd(%struct.qed_hwfn* %16, %struct.qed_ptt* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %21 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %22 = load i32, i32* @MCP_REG_CPU_PROGRAM_COUNTER, align 4
  %23 = call i32 @qed_rd(%struct.qed_hwfn* %20, %struct.qed_ptt* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @udelay(i32 %24)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %28 = load i32, i32* @MCP_REG_CPU_PROGRAM_COUNTER, align 4
  %29 = call i32 @qed_rd(%struct.qed_hwfn* %26, %struct.qed_ptt* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @udelay(i32 %30)
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %33 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %34 = load i32, i32* @MCP_REG_CPU_PROGRAM_COUNTER, align 4
  %35 = call i32 @qed_rd(%struct.qed_hwfn* %32, %struct.qed_ptt* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @DP_NOTICE(%struct.qed_hwfn* %36, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
