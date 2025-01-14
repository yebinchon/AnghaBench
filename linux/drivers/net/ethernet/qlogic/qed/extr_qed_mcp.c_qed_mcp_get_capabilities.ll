; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ptt = type { i32 }

@DRV_MSG_CODE_GET_MFW_FEATURE_SUPPORT = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@NETIF_MSG_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"MFW supported features: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_get_capabilities(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %8 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %9 = load i32, i32* @DRV_MSG_CODE_GET_MFW_FEATURE_SUPPORT, align 4
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %7, %struct.qed_ptt* %8, i32 %9, i32 0, i32* %5, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %19 = load i32, i32* @QED_MSG_SP, align 4
  %20 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %18, i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %17, %2
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
