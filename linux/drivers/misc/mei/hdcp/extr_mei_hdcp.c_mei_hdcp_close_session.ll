; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_close_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_close_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdcp_port_data = type { i32, i32 }
%struct.wired_cmd_close_session_in = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wired_cmd_close_session_out = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mei_cl_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HDCP_API_VERSION = common dso_local global i32 0, align 4
@WIRED_CLOSE_SESSION = common dso_local global i32 0, align 4
@ME_HDCP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mei_cldev_send failed. %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mei_cldev_recv failed. %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Session Close Failed. status: 0x%X\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.hdcp_port_data*)* @mei_hdcp_close_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hdcp_close_session(%struct.device* %0, %struct.hdcp_port_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hdcp_port_data*, align 8
  %6 = alloca %struct.wired_cmd_close_session_in, align 8
  %7 = alloca %struct.wired_cmd_close_session_out, align 8
  %8 = alloca %struct.mei_cl_device*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.hdcp_port_data* %1, %struct.hdcp_port_data** %5, align 8
  %10 = bitcast %struct.wired_cmd_close_session_in* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = bitcast %struct.wired_cmd_close_session_out* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %5, align 8
  %16 = icmp ne %struct.hdcp_port_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %14
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.mei_cl_device* @to_mei_cl_device(%struct.device* %21)
  store %struct.mei_cl_device* %22, %struct.mei_cl_device** %8, align 8
  %23 = load i32, i32* @HDCP_API_VERSION, align 4
  %24 = getelementptr inbounds %struct.wired_cmd_close_session_in, %struct.wired_cmd_close_session_in* %6, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @WIRED_CLOSE_SESSION, align 4
  %27 = getelementptr inbounds %struct.wired_cmd_close_session_in, %struct.wired_cmd_close_session_in* %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %30 = getelementptr inbounds %struct.wired_cmd_close_session_in, %struct.wired_cmd_close_session_in* %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN, align 4
  %33 = getelementptr inbounds %struct.wired_cmd_close_session_in, %struct.wired_cmd_close_session_in* %6, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %5, align 8
  %36 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.wired_cmd_close_session_in, %struct.wired_cmd_close_session_in* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %5, align 8
  %41 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mei_get_ddi_index(i32 %42)
  %44 = getelementptr inbounds %struct.wired_cmd_close_session_in, %struct.wired_cmd_close_session_in* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mei_cl_device*, %struct.mei_cl_device** %8, align 8
  %47 = bitcast %struct.wired_cmd_close_session_in* %6 to i32*
  %48 = call i64 @mei_cldev_send(%struct.mei_cl_device* %46, i32* %47, i32 40)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %20
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %84

57:                                               ; preds = %20
  %58 = load %struct.mei_cl_device*, %struct.mei_cl_device** %8, align 8
  %59 = bitcast %struct.wired_cmd_close_session_out* %7 to i32*
  %60 = call i64 @mei_cldev_recv(%struct.mei_cl_device* %58, i32* %59, i32 16)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %84

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.wired_cmd_close_session_out, %struct.wired_cmd_close_session_out* %7, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = getelementptr inbounds %struct.wired_cmd_close_session_out, %struct.wired_cmd_close_session_out* %7, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %75, %63, %51, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mei_cl_device* @to_mei_cl_device(%struct.device*) #2

declare dso_local i32 @mei_get_ddi_index(i32) #2

declare dso_local i64 @mei_cldev_send(%struct.mei_cl_device*, i32*, i32) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #2

declare dso_local i64 @mei_cldev_recv(%struct.mei_cl_device*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
