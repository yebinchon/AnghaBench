; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_get_protocol_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_get_protocol_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%union.qed_mcp_protocol_stats = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qed_eth_stats = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid protocol type = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_get_protocol_stats(%struct.qed_dev* %0, i32 %1, %union.qed_mcp_protocol_stats* %2) #0 {
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.qed_mcp_protocol_stats*, align 8
  %7 = alloca %struct.qed_eth_stats, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.qed_mcp_protocol_stats* %2, %union.qed_mcp_protocol_stats** %6, align 8
  %8 = load %union.qed_mcp_protocol_stats*, %union.qed_mcp_protocol_stats** %6, align 8
  %9 = call i32 @memset(%union.qed_mcp_protocol_stats* %8, i32 0, i32 12)
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %39 [
    i32 128, label %11
    i32 130, label %29
    i32 129, label %34
  ]

11:                                               ; preds = %3
  %12 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %13 = call i32 @qed_get_vport_stats(%struct.qed_dev* %12, %struct.qed_eth_stats* %7)
  %14 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %7, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %union.qed_mcp_protocol_stats*, %union.qed_mcp_protocol_stats** %6, align 8
  %18 = bitcast %union.qed_mcp_protocol_stats* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %7, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %union.qed_mcp_protocol_stats*, %union.qed_mcp_protocol_stats** %6, align 8
  %24 = bitcast %union.qed_mcp_protocol_stats* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %union.qed_mcp_protocol_stats*, %union.qed_mcp_protocol_stats** %6, align 8
  %27 = bitcast %union.qed_mcp_protocol_stats* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  br label %44

29:                                               ; preds = %3
  %30 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %31 = load %union.qed_mcp_protocol_stats*, %union.qed_mcp_protocol_stats** %6, align 8
  %32 = bitcast %union.qed_mcp_protocol_stats* %31 to i32*
  %33 = call i32 @qed_get_protocol_stats_fcoe(%struct.qed_dev* %30, i32* %32)
  br label %44

34:                                               ; preds = %3
  %35 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %36 = load %union.qed_mcp_protocol_stats*, %union.qed_mcp_protocol_stats** %6, align 8
  %37 = bitcast %union.qed_mcp_protocol_stats* %36 to i32*
  %38 = call i32 @qed_get_protocol_stats_iscsi(%struct.qed_dev* %35, i32* %37)
  br label %44

39:                                               ; preds = %3
  %40 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %41 = load i32, i32* @QED_MSG_SP, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @DP_VERBOSE(%struct.qed_dev* %40, i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %34, %29, %11
  ret void
}

declare dso_local i32 @memset(%union.qed_mcp_protocol_stats*, i32, i32) #1

declare dso_local i32 @qed_get_vport_stats(%struct.qed_dev*, %struct.qed_eth_stats*) #1

declare dso_local i32 @qed_get_protocol_stats_fcoe(%struct.qed_dev*, i32*) #1

declare dso_local i32 @qed_get_protocol_stats_iscsi(%struct.qed_dev*, i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
