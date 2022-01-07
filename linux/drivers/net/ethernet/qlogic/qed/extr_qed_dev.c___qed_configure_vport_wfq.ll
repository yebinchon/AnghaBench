; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_configure_vport_wfq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_configure_vport_wfq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.qed_mcp_link_state }
%struct.qed_mcp_link_state = type { i32 }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Validation failed while configuring min rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32)* @__qed_configure_vport_wfq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qed_configure_vport_wfq(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_mcp_link_state*, align 8
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.qed_mcp_link_state* %20, %struct.qed_mcp_link_state** %10, align 8
  %21 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %10, align 8
  %22 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %28 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 %26, i32* %33, align 4
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %64

42:                                               ; preds = %4
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %10, align 8
  %47 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @qed_init_wfq_param(%struct.qed_hwfn* %43, i64 %44, i32 %45, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %42
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %54 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %55 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %10, align 8
  %56 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @qed_configure_wfq_for_all_vports(%struct.qed_hwfn* %53, %struct.qed_ptt* %54, i32 %57)
  br label %62

59:                                               ; preds = %42
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %61 = call i32 @DP_NOTICE(%struct.qed_hwfn* %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %25
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @qed_init_wfq_param(%struct.qed_hwfn*, i64, i32, i32) #1

declare dso_local i32 @qed_configure_wfq_for_all_vports(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
