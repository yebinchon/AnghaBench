; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_get_protocol_stats_iscsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_get_protocol_stats_iscsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_mcp_iscsi_stats = type { i32, i32, i32, i32 }
%struct.qed_iscsi_stats = type { i32, i32, i32, i32 }

@QED_MSG_STORAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to collect ISCSI statistics\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_get_protocol_stats_iscsi(%struct.qed_dev* %0, %struct.qed_mcp_iscsi_stats* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_mcp_iscsi_stats*, align 8
  %5 = alloca %struct.qed_iscsi_stats, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_mcp_iscsi_stats* %1, %struct.qed_mcp_iscsi_stats** %4, align 8
  %6 = call i32 @memset(%struct.qed_iscsi_stats* %5, i32 0, i32 16)
  %7 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %8 = call i64 @qed_iscsi_stats(%struct.qed_dev* %7, %struct.qed_iscsi_stats* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %12 = load i32, i32* @QED_MSG_STORAGE, align 4
  %13 = call i32 @DP_VERBOSE(%struct.qed_dev* %11, i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %31

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %5, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qed_mcp_iscsi_stats*, %struct.qed_mcp_iscsi_stats** %4, align 8
  %18 = getelementptr inbounds %struct.qed_mcp_iscsi_stats, %struct.qed_mcp_iscsi_stats* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %5, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qed_mcp_iscsi_stats*, %struct.qed_mcp_iscsi_stats** %4, align 8
  %22 = getelementptr inbounds %struct.qed_mcp_iscsi_stats, %struct.qed_mcp_iscsi_stats* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qed_mcp_iscsi_stats*, %struct.qed_mcp_iscsi_stats** %4, align 8
  %26 = getelementptr inbounds %struct.qed_mcp_iscsi_stats, %struct.qed_mcp_iscsi_stats* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.qed_iscsi_stats, %struct.qed_iscsi_stats* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qed_mcp_iscsi_stats*, %struct.qed_mcp_iscsi_stats** %4, align 8
  %30 = getelementptr inbounds %struct.qed_mcp_iscsi_stats, %struct.qed_mcp_iscsi_stats* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @memset(%struct.qed_iscsi_stats*, i32, i32) #1

declare dso_local i64 @qed_iscsi_stats(%struct.qed_dev*, %struct.qed_iscsi_stats*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
