; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_resource_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_resource_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DRV_MSG_CODE_RESOURCE_CMD = common dso_local global i32 0, align 4
@FW_MSG_CODE_UNSUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"The resource command is unsupported by the MFW\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RESOURCE_OPCODE_UNKNOWN_CMD = common dso_local global i64 0, align 8
@RESOURCE_CMD_REQ_OPCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"The resource command is unknown to the MFW [param 0x%08x, opcode %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64*, i64*)* @qed_mcp_resource_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_resource_cmd(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %15 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %16 = load i32, i32* @DRV_MSG_CODE_RESOURCE_CMD, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %14, %struct.qed_ptt* %15, i32 %16, i64 %17, i64* %18, i64* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %52

25:                                               ; preds = %5
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FW_MSG_CODE_UNSUPPORTED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %32 = call i32 @DP_INFO(%struct.qed_hwfn* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %52

35:                                               ; preds = %25
  %36 = load i64*, i64** %11, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RESOURCE_OPCODE_UNKNOWN_CMD, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* @RESOURCE_CMD_REQ_OPCODE, align 4
  %43 = call i32 @QED_MFW_GET_FIELD(i64 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @DP_NOTICE(%struct.qed_hwfn* %44, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %45, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %40, %30, %23
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i64, i64*, i64*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @QED_MFW_GET_FIELD(i64, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
