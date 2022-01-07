; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_store_pairing_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_store_pairing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdcp_port_data = type { i32, i32 }
%struct.hdcp2_ake_send_pairing_info = type { i32 }
%struct.wired_cmd_ake_send_pairing_info_in = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wired_cmd_ake_send_pairing_info_out = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mei_cl_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HDCP_API_VERSION = common dso_local global i32 0, align 4
@WIRED_AKE_SEND_PAIRING_INFO = common dso_local global i32 0, align 4
@ME_HDCP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN = common dso_local global i32 0, align 4
@HDCP_2_2_E_KH_KM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mei_cldev_send failed. %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mei_cldev_recv failed. %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ME cmd 0x%08X failed. Status: 0x%X\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.hdcp_port_data*, %struct.hdcp2_ake_send_pairing_info*)* @mei_hdcp_store_pairing_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hdcp_store_pairing_info(%struct.device* %0, %struct.hdcp_port_data* %1, %struct.hdcp2_ake_send_pairing_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hdcp_port_data*, align 8
  %7 = alloca %struct.hdcp2_ake_send_pairing_info*, align 8
  %8 = alloca %struct.wired_cmd_ake_send_pairing_info_in, align 8
  %9 = alloca %struct.wired_cmd_ake_send_pairing_info_out, align 8
  %10 = alloca %struct.mei_cl_device*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.hdcp_port_data* %1, %struct.hdcp_port_data** %6, align 8
  store %struct.hdcp2_ake_send_pairing_info* %2, %struct.hdcp2_ake_send_pairing_info** %7, align 8
  %12 = bitcast %struct.wired_cmd_ake_send_pairing_info_in* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 48, i1 false)
  %13 = bitcast %struct.wired_cmd_ake_send_pairing_info_out* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = icmp ne %struct.device* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %18 = icmp ne %struct.hdcp_port_data* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.hdcp2_ake_send_pairing_info*, %struct.hdcp2_ake_send_pairing_info** %7, align 8
  %21 = icmp ne %struct.hdcp2_ake_send_pairing_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %98

25:                                               ; preds = %19
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call %struct.mei_cl_device* @to_mei_cl_device(%struct.device* %26)
  store %struct.mei_cl_device* %27, %struct.mei_cl_device** %10, align 8
  %28 = load i32, i32* @HDCP_API_VERSION, align 4
  %29 = getelementptr inbounds %struct.wired_cmd_ake_send_pairing_info_in, %struct.wired_cmd_ake_send_pairing_info_in* %8, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @WIRED_AKE_SEND_PAIRING_INFO, align 4
  %32 = getelementptr inbounds %struct.wired_cmd_ake_send_pairing_info_in, %struct.wired_cmd_ake_send_pairing_info_in* %8, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %35 = getelementptr inbounds %struct.wired_cmd_ake_send_pairing_info_in, %struct.wired_cmd_ake_send_pairing_info_in* %8, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN, align 4
  %38 = getelementptr inbounds %struct.wired_cmd_ake_send_pairing_info_in, %struct.wired_cmd_ake_send_pairing_info_in* %8, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %41 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.wired_cmd_ake_send_pairing_info_in, %struct.wired_cmd_ake_send_pairing_info_in* %8, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %6, align 8
  %46 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mei_get_ddi_index(i32 %47)
  %49 = getelementptr inbounds %struct.wired_cmd_ake_send_pairing_info_in, %struct.wired_cmd_ake_send_pairing_info_in* %8, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.wired_cmd_ake_send_pairing_info_in, %struct.wired_cmd_ake_send_pairing_info_in* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hdcp2_ake_send_pairing_info*, %struct.hdcp2_ake_send_pairing_info** %7, align 8
  %54 = getelementptr inbounds %struct.hdcp2_ake_send_pairing_info, %struct.hdcp2_ake_send_pairing_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HDCP_2_2_E_KH_KM_LEN, align 4
  %57 = call i32 @memcpy(i32 %52, i32 %55, i32 %56)
  %58 = load %struct.mei_cl_device*, %struct.mei_cl_device** %10, align 8
  %59 = bitcast %struct.wired_cmd_ake_send_pairing_info_in* %8 to i32*
  %60 = call i64 @mei_cldev_send(%struct.mei_cl_device* %58, i32* %59, i32 48)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %25
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* %11, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %98

69:                                               ; preds = %25
  %70 = load %struct.mei_cl_device*, %struct.mei_cl_device** %10, align 8
  %71 = bitcast %struct.wired_cmd_ake_send_pairing_info_out* %9 to i32*
  %72 = call i64 @mei_cldev_recv(%struct.mei_cl_device* %70, i32* %71, i32 16)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  %79 = load i64, i64* %11, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %98

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.wired_cmd_ake_send_pairing_info_out, %struct.wired_cmd_ake_send_pairing_info_out* %9, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load i32, i32* @WIRED_AKE_SEND_PAIRING_INFO, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.wired_cmd_ake_send_pairing_info_out, %struct.wired_cmd_ake_send_pairing_info_out* %9, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %90, i64 %93)
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %87, %75, %63, %22
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mei_cl_device* @to_mei_cl_device(%struct.device*) #2

declare dso_local i32 @mei_get_ddi_index(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

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
