; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_load_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_load_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DRV_MSG_CODE_LOAD_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to send a LOAD_DONE command, rc = %d\0A\00", align 1
@FW_MB_PARAM_LOAD_DONE_DID_EFUSE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [109 x i8] c"warning: device configuration is not supported on this board type. The device may not function as expected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_load_done(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %11 = load i32, i32* @DRV_MSG_CODE_LOAD_DONE, align 4
  %12 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %9, %struct.qed_ptt* %10, i32 %11, i32 0, i32* %6, i32* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FW_MB_PARAM_LOAD_DONE_DID_EFUSE_ERROR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_NOTICE(%struct.qed_hwfn* %26, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
