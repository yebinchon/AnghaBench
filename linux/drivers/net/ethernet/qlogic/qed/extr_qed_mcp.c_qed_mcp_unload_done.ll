; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_unload_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_unload_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.qed_ptt = type { i32 }
%struct.qed_mcp_mb_params = type { i32, i32, i32, %struct.qed_mcp_mb_params*, i32 }
%struct.mcp_mac = type { i32, i32, i32, %struct.mcp_mac*, i32 }

@DRV_MSG_CODE_UNLOAD_DONE = common dso_local global i32 0, align 4
@QED_OV_WOL_ENABLED = common dso_local global i64 0, align 8
@QED_MSG_SP = common dso_local global i32 0, align 4
@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Setting WoL MAC: %pM --> [%08x,%08x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_unload_done(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca %struct.qed_mcp_mb_params, align 8
  %6 = alloca %struct.mcp_mac, align 8
  %7 = alloca i32*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  %8 = call i32 @memset(%struct.qed_mcp_mb_params* %5, i32 0, i32 32)
  %9 = load i32, i32* @DRV_MSG_CODE_UNLOAD_DONE, align 4
  %10 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %5, i32 0, i32 4
  store i32 %9, i32* %10, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QED_OV_WOL_ENABLED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %2
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = bitcast %struct.mcp_mac* %6 to %struct.qed_mcp_mb_params*
  %25 = call i32 @memset(%struct.qed_mcp_mb_params* %24, i32 0, i32 32)
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds %struct.mcp_mac, %struct.mcp_mac* %6, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 24
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %38, %42
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = or i32 %43, %47
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = getelementptr inbounds %struct.mcp_mac, %struct.mcp_mac* %6, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %55 = load i32, i32* @QED_MSG_SP, align 4
  %56 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds %struct.mcp_mac, %struct.mcp_mac* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.mcp_mac, %struct.mcp_mac* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %54, i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %58, i32 %60, i32 %62)
  %64 = bitcast %struct.mcp_mac* %6 to %struct.qed_mcp_mb_params*
  %65 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %5, i32 0, i32 3
  store %struct.qed_mcp_mb_params* %64, %struct.qed_mcp_mb_params** %65, align 8
  %66 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %5, i32 0, i32 2
  store i32 32, i32* %66, align 8
  br label %67

67:                                               ; preds = %18, %2
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %69 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %70 = call i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn* %68, %struct.qed_ptt* %69, %struct.qed_mcp_mb_params* %5)
  ret i32 %70
}

declare dso_local i32 @memset(%struct.qed_mcp_mb_params*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_mcp_mb_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
