; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_get_protocol_stats_fcoe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_get_protocol_stats_fcoe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qed_fcoe_cb_ops* }
%struct.qed_fcoe_cb_ops = type { i32 (i8*)* }
%struct.qed_mcp_fcoe_stats = type { i32, i32, i64, i64 }
%struct.qed_fcoe_stats = type { i32, i64, i64, i64, i64, i64, i64 }

@QED_MSG_STORAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to collect FCoE statistics\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_get_protocol_stats_fcoe(%struct.qed_dev* %0, %struct.qed_mcp_fcoe_stats* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_mcp_fcoe_stats*, align 8
  %5 = alloca %struct.qed_fcoe_stats, align 8
  %6 = alloca %struct.qed_fcoe_cb_ops*, align 8
  %7 = alloca i8*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_mcp_fcoe_stats* %1, %struct.qed_mcp_fcoe_stats** %4, align 8
  %8 = call i32 @memset(%struct.qed_fcoe_stats* %5, i32 0, i32 56)
  %9 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %10 = call i64 @qed_fcoe_stats(%struct.qed_dev* %9, %struct.qed_fcoe_stats* %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %14 = load i32, i32* @QED_MSG_STORAGE, align 4
  %15 = call i32 @DP_VERBOSE(%struct.qed_dev* %13, i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %72

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %5, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %5, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %18, %20
  %22 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %5, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %21, %23
  %25 = load %struct.qed_mcp_fcoe_stats*, %struct.qed_mcp_fcoe_stats** %4, align 8
  %26 = getelementptr inbounds %struct.qed_mcp_fcoe_stats, %struct.qed_mcp_fcoe_stats* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %5, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %5, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %28, %30
  %32 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %5, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %31, %33
  %35 = load %struct.qed_mcp_fcoe_stats*, %struct.qed_mcp_fcoe_stats** %4, align 8
  %36 = getelementptr inbounds %struct.qed_mcp_fcoe_stats, %struct.qed_mcp_fcoe_stats* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = getelementptr inbounds %struct.qed_fcoe_stats, %struct.qed_fcoe_stats* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.qed_mcp_fcoe_stats*, %struct.qed_mcp_fcoe_stats** %4, align 8
  %40 = getelementptr inbounds %struct.qed_mcp_fcoe_stats, %struct.qed_mcp_fcoe_stats* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %42 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.qed_fcoe_cb_ops*, %struct.qed_fcoe_cb_ops** %43, align 8
  %45 = icmp ne %struct.qed_fcoe_cb_ops* %44, null
  br i1 %45, label %46, label %72

46:                                               ; preds = %16
  %47 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %48 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %53 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.qed_fcoe_cb_ops*, %struct.qed_fcoe_cb_ops** %54, align 8
  store %struct.qed_fcoe_cb_ops* %55, %struct.qed_fcoe_cb_ops** %6, align 8
  %56 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %57 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %7, align 8
  %59 = load %struct.qed_fcoe_cb_ops*, %struct.qed_fcoe_cb_ops** %6, align 8
  %60 = getelementptr inbounds %struct.qed_fcoe_cb_ops, %struct.qed_fcoe_cb_ops* %59, i32 0, i32 0
  %61 = load i32 (i8*)*, i32 (i8*)** %60, align 8
  %62 = icmp ne i32 (i8*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load %struct.qed_fcoe_cb_ops*, %struct.qed_fcoe_cb_ops** %6, align 8
  %65 = getelementptr inbounds %struct.qed_fcoe_cb_ops, %struct.qed_fcoe_cb_ops* %64, i32 0, i32 0
  %66 = load i32 (i8*)*, i32 (i8*)** %65, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 %66(i8* %67)
  %69 = load %struct.qed_mcp_fcoe_stats*, %struct.qed_mcp_fcoe_stats** %4, align 8
  %70 = getelementptr inbounds %struct.qed_mcp_fcoe_stats, %struct.qed_mcp_fcoe_stats* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %63, %51
  br label %72

72:                                               ; preds = %12, %71, %46, %16
  ret void
}

declare dso_local i32 @memset(%struct.qed_fcoe_stats*, i32, i32) #1

declare dso_local i64 @qed_fcoe_stats(%struct.qed_dev*, %struct.qed_fcoe_stats*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
