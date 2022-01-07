; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_send_drv_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_send_drv_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_mcp_drv_version = type { i32*, i32 }
%struct.qed_mcp_mb_params = type { i32, %struct.qed_mcp_mb_params*, i32, i32*, i32 }
%struct.drv_version_stc = type { i32, %struct.drv_version_stc*, i32, i32*, i32 }

@MCP_DRV_VER_STR_SIZE = common dso_local global i32 0, align 4
@DRV_MSG_CODE_SET_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_send_drv_version(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_mcp_drv_version* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_mcp_drv_version*, align 8
  %7 = alloca %struct.qed_mcp_mb_params, align 8
  %8 = alloca %struct.drv_version_stc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_mcp_drv_version* %2, %struct.qed_mcp_drv_version** %6, align 8
  %12 = bitcast %struct.drv_version_stc* %8 to %struct.qed_mcp_mb_params*
  %13 = call i32 @memset(%struct.qed_mcp_mb_params* %12, i32 0, i32 40)
  %14 = load %struct.qed_mcp_drv_version*, %struct.qed_mcp_drv_version** %6, align 8
  %15 = getelementptr inbounds %struct.qed_mcp_drv_version, %struct.qed_mcp_drv_version* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.drv_version_stc, %struct.drv_version_stc* %8, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %43, %3
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* @MCP_DRV_VER_STR_SIZE, align 4
  %22 = sub nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %18
  %27 = load %struct.qed_mcp_drv_version*, %struct.qed_mcp_drv_version** %6, align 8
  %28 = getelementptr inbounds %struct.qed_mcp_drv_version, %struct.qed_mcp_drv_version* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_be32(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.drv_version_stc, %struct.drv_version_stc* %8, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %18

46:                                               ; preds = %18
  %47 = call i32 @memset(%struct.qed_mcp_mb_params* %7, i32 0, i32 40)
  %48 = load i32, i32* @DRV_MSG_CODE_SET_VERSION, align 4
  %49 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %7, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = bitcast %struct.drv_version_stc* %8 to %struct.qed_mcp_mb_params*
  %51 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %7, i32 0, i32 1
  store %struct.qed_mcp_mb_params* %50, %struct.qed_mcp_mb_params** %51, align 8
  %52 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %7, i32 0, i32 0
  store i32 40, i32* %52, align 8
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %54 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %55 = call i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn* %53, %struct.qed_ptt* %54, %struct.qed_mcp_mb_params* %7)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %60 = call i32 @DP_ERR(%struct.qed_hwfn* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %46
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.qed_mcp_mb_params*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_mcp_mb_params*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
