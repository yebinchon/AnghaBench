; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c___qed_mcp_resc_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c___qed_mcp_resc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_resc_lock_params = type { i32, i32, i32, i8* }

@RESOURCE_OPCODE_REQ = common dso_local global i32 0, align 4
@RESOURCE_OPCODE_REQ_WO_AGING = common dso_local global i32 0, align 4
@RESOURCE_OPCODE_REQ_W_AGING = common dso_local global i32 0, align 4
@RESOURCE_CMD_REQ_RESC = common dso_local global i32 0, align 4
@RESOURCE_CMD_REQ_OPCODE = common dso_local global i32 0, align 4
@RESOURCE_CMD_REQ_AGE = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Resource lock request: param 0x%08x [age %d, opcode %d, resource %d]\0A\00", align 1
@RESOURCE_CMD_RSP_OWNER = common dso_local global i32 0, align 4
@RESOURCE_CMD_RSP_OPCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Resource lock response: mcp_param 0x%08x [opcode %d, owner %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"Unexpected opcode in resource lock response [mcp_param 0x%08x, opcode %d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_resc_lock_params*)* @__qed_mcp_resc_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qed_mcp_resc_lock(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_resc_lock_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_resc_lock_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_resc_lock_params* %2, %struct.qed_resc_lock_params** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %14 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %24 [
    i32 131, label %16
    i32 130, label %20
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @RESOURCE_OPCODE_REQ, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %19 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @RESOURCE_OPCODE_REQ_WO_AGING, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %23 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @RESOURCE_OPCODE_REQ_W_AGING, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %20, %16
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RESOURCE_CMD_REQ_RESC, align 4
  %29 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %30 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @QED_MFW_SET_FIELD(i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RESOURCE_CMD_REQ_OPCODE, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @QED_MFW_SET_FIELD(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @RESOURCE_CMD_REQ_AGE, align 4
  %39 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %40 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @QED_MFW_SET_FIELD(i32 %37, i32 %38, i32 %41)
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %44 = load i32, i32* @QED_MSG_SP, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %47 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %51 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %43, i32 %44, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %49, i32 %52)
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %55 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @qed_mcp_resource_cmd(%struct.qed_hwfn* %54, %struct.qed_ptt* %55, i32 %56, i32* %9, i32* %10)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %26
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %96

62:                                               ; preds = %26
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @RESOURCE_CMD_RSP_OWNER, align 4
  %65 = call i8* @QED_MFW_GET_FIELD(i32 %63, i32 %64)
  %66 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %67 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @RESOURCE_CMD_RSP_OPCODE, align 4
  %70 = call i8* @QED_MFW_GET_FIELD(i32 %68, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %73 = load i32, i32* @QED_MSG_SP, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %77 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %72, i32 %73, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i32 %79)
  %81 = load i32, i32* %11, align 4
  switch i32 %81, label %88 [
    i32 128, label %82
    i32 129, label %85
  ]

82:                                               ; preds = %62
  %83 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %84 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %95

85:                                               ; preds = %62
  %86 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %87 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  br label %95

88:                                               ; preds = %62
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @DP_NOTICE(%struct.qed_hwfn* %89, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %85, %82
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %88, %60
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @QED_MFW_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @qed_mcp_resource_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32*, i32*) #1

declare dso_local i8* @QED_MFW_GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
