; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_resc_allocation_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_resc_allocation_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_resc_alloc_in_params = type { i32, i32, i32 }
%struct.qed_resc_alloc_out_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_mcp_mb_params = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params* }
%struct.resource_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.resource_info*, %struct.resource_info* }

@RESOURCE_NUM_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Failed to match resource %d [%s] with the MFW resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unexpected resource alloc command [0x%08x]\0A\00", align 1
@QED_RESC_ALLOC_VERSION = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"Resource message request: cmd 0x%08x, res_id %d [%s], hsi_version %d.%d, val 0x%x\0A\00", align 1
@DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR = common dso_local global i32 0, align 4
@DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [114 x i8] c"Resource message response: mfw_hsi_version %d.%d, num 0x%x, start 0x%x, vf_num 0x%x, vf_start 0x%x, flags 0x%08x\0A\00", align 1
@FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR = common dso_local global i32 0, align 4
@FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_out_params*)* @qed_mcp_resc_allocation_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_resc_allocation_msg(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_resc_alloc_in_params* %2, %struct.qed_resc_alloc_out_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.qed_resc_alloc_in_params*, align 8
  %9 = alloca %struct.qed_resc_alloc_out_params*, align 8
  %10 = alloca %struct.qed_mcp_mb_params, align 8
  %11 = alloca %struct.resource_info, align 8
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store %struct.qed_resc_alloc_in_params* %2, %struct.qed_resc_alloc_in_params** %8, align 8
  store %struct.qed_resc_alloc_out_params* %3, %struct.qed_resc_alloc_out_params** %9, align 8
  %13 = call i32 @memset(%struct.resource_info* %11, i32 0, i32 72)
  %14 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %15 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @qed_mcp_get_mfw_res_id(i32 %16)
  %18 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RESOURCE_NUM_INVALID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %25 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %26 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %29 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @qed_hw_get_resc_name(i32 %30)
  %32 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_ERR(%struct.qed_hwfn* %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %160

35:                                               ; preds = %4
  %36 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %37 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %45 [
    i32 128, label %39
    i32 129, label %44
  ]

39:                                               ; preds = %35
  %40 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %41 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %39
  br label %53

45:                                               ; preds = %35
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %47 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %48 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_ERR(%struct.qed_hwfn* %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %160

53:                                               ; preds = %44
  %54 = bitcast %struct.qed_mcp_mb_params* %10 to %struct.resource_info*
  %55 = call i32 @memset(%struct.resource_info* %54, i32 0, i32 72)
  %56 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %57 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* @QED_RESC_ALLOC_VERSION, align 4
  %61 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 11
  store i32 %60, i32* %61, align 8
  %62 = bitcast %struct.resource_info* %11 to %struct.qed_mcp_mb_params*
  %63 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 12
  store %struct.qed_mcp_mb_params* %62, %struct.qed_mcp_mb_params** %63, align 8
  %64 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 2
  store i32 72, i32* %64, align 4
  %65 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 12
  %66 = load %struct.qed_mcp_mb_params*, %struct.qed_mcp_mb_params** %65, align 8
  %67 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 13
  store %struct.qed_mcp_mb_params* %66, %struct.qed_mcp_mb_params** %67, align 8
  %68 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %72 = load i32, i32* @QED_MSG_SP, align 4
  %73 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %74 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %77 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %80 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @qed_hw_get_resc_name(i32 %81)
  %83 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR, align 4
  %86 = call i32 @QED_MFW_GET_FIELD(i32 %84, i32 %85)
  %87 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 11
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR, align 4
  %90 = call i32 @QED_MFW_GET_FIELD(i32 %88, i32 %89)
  %91 = load %struct.qed_resc_alloc_in_params*, %struct.qed_resc_alloc_in_params** %8, align 8
  %92 = getelementptr inbounds %struct.qed_resc_alloc_in_params, %struct.qed_resc_alloc_in_params* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %71, i32 %72, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78, i32 %82, i32 %86, i32 %90, i32 %93)
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %96 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %97 = bitcast %struct.qed_mcp_mb_params* %10 to %struct.resource_info*
  %98 = call i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn* %95, %struct.qed_ptt* %96, %struct.resource_info* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %53
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %5, align 4
  br label %160

103:                                              ; preds = %53
  %104 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %107 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %10, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %111 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %115 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %119 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %123 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %127 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %11, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %131 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %133 = load i32, i32* @QED_MSG_SP, align 4
  %134 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %135 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR, align 4
  %138 = call i32 @QED_MFW_GET_FIELD(i32 %136, i32 %137)
  %139 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %140 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR, align 4
  %143 = call i32 @QED_MFW_GET_FIELD(i32 %141, i32 %142)
  %144 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %145 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %148 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %151 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %154 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.qed_resc_alloc_out_params*, %struct.qed_resc_alloc_out_params** %9, align 8
  %157 = getelementptr inbounds %struct.qed_resc_alloc_out_params, %struct.qed_resc_alloc_out_params* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %132, i32 %133, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i32 %138, i32 %143, i32 %146, i32 %149, i32 %152, i32 %155, i32 %158)
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %103, %101, %45, %23
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @memset(%struct.resource_info*, i32, i32) #1

declare dso_local i64 @qed_mcp_get_mfw_res_id(i32) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32, ...) #1

declare dso_local i32 @qed_hw_get_resc_name(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @QED_MFW_GET_FIELD(i32, i32) #1

declare dso_local i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.resource_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
