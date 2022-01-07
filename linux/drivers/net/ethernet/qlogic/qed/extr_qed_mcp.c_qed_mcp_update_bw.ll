; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_update_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_update_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_mcp_function_info }
%struct.qed_mcp_function_info = type { i32, i32 }
%struct.qed_ptt = type { i32 }
%struct.public_func = type { i32 }

@DRV_MSG_CODE_BW_UPDATE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_mcp_update_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_mcp_update_bw(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca %struct.qed_mcp_function_info*, align 8
  %6 = alloca %struct.public_func, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %12 = call i32 @MCP_PF_ID(%struct.qed_hwfn* %11)
  %13 = call i32 @qed_mcp_get_shmem_func(%struct.qed_hwfn* %9, %struct.qed_ptt* %10, %struct.public_func* %6, i32 %12)
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %15 = call i32 @qed_read_pf_bandwidth(%struct.qed_hwfn* %14, %struct.public_func* %6)
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.qed_mcp_function_info* %19, %struct.qed_mcp_function_info** %5, align 8
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %24 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qed_configure_pf_min_bandwidth(i32 %22, i32 %25)
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %28 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %5, align 8
  %31 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @qed_configure_pf_max_bandwidth(i32 %29, i32 %32)
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %35 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %36 = load i32, i32* @DRV_MSG_CODE_BW_UPDATE_ACK, align 4
  %37 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %34, %struct.qed_ptt* %35, i32 %36, i32 0, i32* %7, i32* %8)
  ret void
}

declare dso_local i32 @qed_mcp_get_shmem_func(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.public_func*, i32) #1

declare dso_local i32 @MCP_PF_ID(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_read_pf_bandwidth(%struct.qed_hwfn*, %struct.public_func*) #1

declare dso_local i32 @qed_configure_pf_min_bandwidth(i32, i32) #1

declare dso_local i32 @qed_configure_pf_max_bandwidth(i32, i32) #1

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
