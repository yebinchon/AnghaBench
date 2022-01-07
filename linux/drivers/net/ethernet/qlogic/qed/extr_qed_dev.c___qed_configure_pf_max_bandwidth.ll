; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_configure_pf_max_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_configure_pf_max_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_mcp_link_state = type { i32, i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Configured MAX bandwidth to be %08x Mb/sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qed_configure_pf_max_bandwidth(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_mcp_link_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.qed_mcp_link_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store %struct.qed_mcp_link_state* %2, %struct.qed_mcp_link_state** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %11, i32* %16, align 4
  %17 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %8, align 8
  %18 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 100
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %65

26:                                               ; preds = %21, %4
  %27 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %8, align 8
  %28 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sdiv i32 %31, 100
  %33 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %8, align 8
  %34 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %8, align 8
  %36 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %45 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 100000, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %26
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %49 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %51 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %54 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @qed_init_pf_rl(%struct.qed_hwfn* %48, %struct.qed_ptt* %49, i32 %52, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %59 = load i32, i32* @NETIF_MSG_LINK, align 4
  %60 = load %struct.qed_mcp_link_state*, %struct.qed_mcp_link_state** %8, align 8
  %61 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %58, i32 %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %47, %24
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @qed_init_pf_rl(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
