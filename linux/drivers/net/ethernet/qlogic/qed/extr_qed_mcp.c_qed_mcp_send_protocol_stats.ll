; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_send_protocol_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_send_protocol_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%union.qed_mcp_protocol_stats = type { i32 }
%struct.qed_mcp_mb_params = type { i32, %union.qed_mcp_protocol_stats*, i32, i32 }

@QED_MCP_LAN_STATS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_STATS_TYPE_LAN = common dso_local global i32 0, align 4
@QED_MCP_FCOE_STATS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_STATS_TYPE_FCOE = common dso_local global i32 0, align 4
@QED_MCP_ISCSI_STATS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_STATS_TYPE_ISCSI = common dso_local global i32 0, align 4
@QED_MCP_RDMA_STATS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_STATS_TYPE_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid protocol type %d\0A\00", align 1
@DRV_MSG_CODE_GET_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, i32)* @qed_mcp_send_protocol_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_mcp_send_protocol_stats(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.qed_mcp_protocol_stats, align 4
  %9 = alloca %struct.qed_mcp_mb_params, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 131, label %15
    i32 130, label %18
    i32 128, label %21
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @QED_MCP_LAN_STATS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @DRV_MSG_CODE_STATS_TYPE_LAN, align 4
  store i32 %14, i32* %10, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load i32, i32* @QED_MCP_FCOE_STATS, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @DRV_MSG_CODE_STATS_TYPE_FCOE, align 4
  store i32 %17, i32* %10, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load i32, i32* @QED_MCP_ISCSI_STATS, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @DRV_MSG_CODE_STATS_TYPE_ISCSI, align 4
  store i32 %20, i32* %10, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @QED_MCP_RDMA_STATS, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @DRV_MSG_CODE_STATS_TYPE_RDMA, align 4
  store i32 %23, i32* %10, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @DP_NOTICE(%struct.qed_hwfn* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %44

28:                                               ; preds = %21, %18, %15, %12
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @qed_get_protocol_stats(i32 %31, i32 %32, %union.qed_mcp_protocol_stats* %8)
  %34 = call i32 @memset(%struct.qed_mcp_mb_params* %9, i32 0, i32 24)
  %35 = load i32, i32* @DRV_MSG_CODE_GET_STATS, align 4
  %36 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %9, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %9, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %9, i32 0, i32 1
  store %union.qed_mcp_protocol_stats* %8, %union.qed_mcp_protocol_stats** %39, align 8
  %40 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %9, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %43 = call i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn* %41, %struct.qed_ptt* %42, %struct.qed_mcp_mb_params* %9)
  br label %44

44:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_get_protocol_stats(i32, i32, %union.qed_mcp_protocol_stats*) #1

declare dso_local i32 @memset(%struct.qed_mcp_mb_params*, i32, i32) #1

declare dso_local i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_mcp_mb_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
