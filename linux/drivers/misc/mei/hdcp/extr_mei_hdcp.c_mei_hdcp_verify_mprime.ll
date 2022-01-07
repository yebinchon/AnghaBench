; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_verify_mprime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_verify_mprime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdcp_port_data = type { i32, i32, i32, i32, i32 }
%struct.hdcp2_rep_stream_ready = type { i32 }
%struct.wired_cmd_repeater_auth_stream_req_in = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wired_cmd_repeater_auth_stream_req_out = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mei_cl_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HDCP_API_VERSION = common dso_local global i32 0, align 4
@WIRED_REPEATER_AUTH_STREAM_REQ = common dso_local global i32 0, align 4
@ME_HDCP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_MIN_IN = common dso_local global i32 0, align 4
@HDCP_2_2_MPRIME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mei_cldev_send failed. %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mei_cldev_recv failed. %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ME cmd 0x%08X failed. status: 0x%X\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.hdcp_port_data*, %struct.hdcp2_rep_stream_ready*)* @mei_hdcp_verify_mprime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hdcp_verify_mprime(%struct.device* %0, %struct.hdcp_port_data* %1, %struct.hdcp2_rep_stream_ready* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hdcp_port_data*, align 8
  %7 = alloca %struct.hdcp2_rep_stream_ready*, align 8
  %8 = alloca %struct.wired_cmd_repeater_auth_stream_req_in, align 8
  %9 = alloca %struct.wired_cmd_repeater_auth_stream_req_out, align 8
  %10 = alloca %struct.mei_cl_device*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.hdcp_port_data* %1, %struct.hdcp_port_data** %6, align 8
  store %struct.hdcp2_rep_stream_ready* %2, %struct.hdcp2_rep_stream_ready** %7, align 8
  %12 = bitcast %struct.wired_cmd_repeater_auth_stream_req_in* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 56, i1 false)
  %13 = bitcast %struct.wired_cmd_repeater_auth_stream_req_out* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = icmp ne %struct.device* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.hdcp2_rep_stream_ready*, %struct.hdcp2_rep_stream_ready** %7, align 8
  %18 = icmp ne %struct.hdcp2_rep_stream_ready* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %21 = icmp ne %struct.hdcp_port_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %121

25:                                               ; preds = %19
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call %struct.mei_cl_device* @to_mei_cl_device(%struct.device* %26)
  store %struct.mei_cl_device* %27, %struct.mei_cl_device** %10, align 8
  %28 = load i32, i32* @HDCP_API_VERSION, align 4
  %29 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @WIRED_REPEATER_AUTH_STREAM_REQ, align 4
  %32 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %35 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @WIRED_CMD_BUF_LEN_REPEATER_AUTH_STREAM_REQ_MIN_IN, align 4
  %38 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %41 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %46 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mei_get_ddi_index(i32 %47)
  %49 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hdcp2_rep_stream_ready*, %struct.hdcp2_rep_stream_ready** %7, align 8
  %54 = getelementptr inbounds %struct.hdcp2_rep_stream_ready, %struct.hdcp2_rep_stream_ready* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HDCP_2_2_MPRIME_LEN, align 4
  %57 = call i32 @memcpy(i32 %52, i32 %55, i32 %56)
  %58 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %61 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @drm_hdcp_cpu_to_be24(i32 %59, i32 %62)
  %64 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %67 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %70 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i32 %65, i32 %68, i32 %74)
  %76 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %77 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cpu_to_be16(i32 %78)
  %80 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_in, %struct.wired_cmd_repeater_auth_stream_req_in* %8, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load %struct.mei_cl_device*, %struct.mei_cl_device** %10, align 8
  %82 = bitcast %struct.wired_cmd_repeater_auth_stream_req_in* %8 to i32*
  %83 = call i64 @mei_cldev_send(%struct.mei_cl_device* %81, i32* %82, i32 56)
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %25
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %88)
  %90 = load i64, i64* %11, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %4, align 4
  br label %121

92:                                               ; preds = %25
  %93 = load %struct.mei_cl_device*, %struct.mei_cl_device** %10, align 8
  %94 = bitcast %struct.wired_cmd_repeater_auth_stream_req_out* %9 to i32*
  %95 = call i64 @mei_cldev_recv(%struct.mei_cl_device* %93, i32* %94, i32 16)
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  %102 = load i64, i64* %11, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  br label %121

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_out, %struct.wired_cmd_repeater_auth_stream_req_out* %9, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = load i32, i32* @WIRED_REPEATER_AUTH_STREAM_REQ, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.wired_cmd_repeater_auth_stream_req_out, %struct.wired_cmd_repeater_auth_stream_req_out* %9, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %113, i64 %116)
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %121

120:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %110, %98, %86, %22
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mei_cl_device* @to_mei_cl_device(%struct.device*) #2

declare dso_local i32 @mei_get_ddi_index(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @drm_hdcp_cpu_to_be24(i32, i32) #2

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i64 @mei_cldev_send(%struct.mei_cl_device*, i32*, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, ...) #2

declare dso_local i64 @mei_cldev_recv(%struct.mei_cl_device*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
