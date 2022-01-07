; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_qcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_qcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.bnxt_vf_info, %struct.hwrm_func_qcfg_output* }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_vf_info = type { i32 }
%struct.hwrm_func_qcfg_output = type { i32, i64, i32, i32, i32, i32 }
%struct.hwrm_func_qcfg_input = type { i32, i32 }

@HWRM_FUNC_QCFG = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FUNC_QCFG_RESP_FLAGS_FW_DCBX_AGENT_ENABLED = common dso_local global i32 0, align 4
@FUNC_QCFG_RESP_FLAGS_FW_LLDP_AGENT_ENABLED = common dso_local global i32 0, align 4
@BNXT_FW_CAP_LLDP_AGENT = common dso_local global i32 0, align 4
@BNXT_FW_CAP_DCBX_AGENT = common dso_local global i32 0, align 4
@FUNC_QCFG_RESP_FLAGS_MULTI_HOST = common dso_local global i32 0, align 4
@BNXT_FLAG_MULTI_HOST = common dso_local global i32 0, align 4
@FUNC_QCFG_RESP_EVB_MODE_VEB = common dso_local global i64 0, align 8
@BRIDGE_MODE_VEB = common dso_local global i32 0, align 4
@FUNC_QCFG_RESP_EVB_MODE_VEPA = common dso_local global i64 0, align 8
@BRIDGE_MODE_VEPA = common dso_local global i32 0, align 4
@BRIDGE_MODE_UNDEF = common dso_local global i32 0, align 4
@BNXT_MAX_MTU = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_func_qcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_func_qcfg(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.hwrm_func_qcfg_input, align 4
  %4 = alloca %struct.hwrm_func_qcfg_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %7 = bitcast %struct.hwrm_func_qcfg_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 9
  %10 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %9, align 8
  store %struct.hwrm_func_qcfg_output* %10, %struct.hwrm_func_qcfg_output** %4, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = load i32, i32* @HWRM_FUNC_QCFG, align 4
  %13 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %11, %struct.hwrm_func_qcfg_input* %3, i32 %12, i32 -1, i32 -1)
  %14 = call i32 @cpu_to_le16(i32 65535)
  %15 = getelementptr inbounds %struct.hwrm_func_qcfg_input, %struct.hwrm_func_qcfg_input* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %20 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %21 = call i32 @_hwrm_send_message(%struct.bnxt* %19, %struct.hwrm_func_qcfg_input* %3, i32 8, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %124

25:                                               ; preds = %1
  %26 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %27 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @FUNC_QCFG_RESP_FLAGS_FW_DCBX_AGENT_ENABLED, align 4
  %32 = load i32, i32* @FUNC_QCFG_RESP_FLAGS_FW_LLDP_AGENT_ENABLED, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %25
  %37 = load i32, i32* @BNXT_FW_CAP_LLDP_AGENT, align 4
  %38 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %39 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @FUNC_QCFG_RESP_FLAGS_FW_DCBX_AGENT_ENABLED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32, i32* @BNXT_FW_CAP_DCBX_AGENT, align 4
  %48 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %49 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %36
  br label %53

53:                                               ; preds = %52, %25
  %54 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %55 = call i64 @BNXT_PF(%struct.bnxt* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @FUNC_QCFG_RESP_FLAGS_MULTI_HOST, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @BNXT_FLAG_MULTI_HOST, align 4
  %64 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %57, %53
  %69 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %70 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %78 [
    i32 130, label %72
    i32 129, label %72
    i32 128, label %72
  ]

72:                                               ; preds = %68, %68, %68
  %73 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %74 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %77 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %72
  %79 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %80 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 67335
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %85 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FUNC_QCFG_RESP_EVB_MODE_VEB, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83, %78
  %90 = load i32, i32* @BRIDGE_MODE_VEB, align 4
  %91 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %92 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  br label %108

93:                                               ; preds = %83
  %94 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %95 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FUNC_QCFG_RESP_EVB_MODE_VEPA, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @BRIDGE_MODE_VEPA, align 4
  %101 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %102 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  br label %107

103:                                              ; preds = %93
  %104 = load i32, i32* @BRIDGE_MODE_UNDEF, align 4
  %105 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %106 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %89
  %109 = load %struct.hwrm_func_qcfg_output*, %struct.hwrm_func_qcfg_output** %4, align 8
  %110 = getelementptr inbounds %struct.hwrm_func_qcfg_output, %struct.hwrm_func_qcfg_output* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %114 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %116 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %108
  %120 = load i32, i32* @BNXT_MAX_MTU, align 4
  %121 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %122 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %108
  br label %124

124:                                              ; preds = %123, %24
  %125 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %126 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %125, i32 0, i32 3
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_qcfg_input*, i32, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_func_qcfg_input*, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i64 @BNXT_PF(%struct.bnxt*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
