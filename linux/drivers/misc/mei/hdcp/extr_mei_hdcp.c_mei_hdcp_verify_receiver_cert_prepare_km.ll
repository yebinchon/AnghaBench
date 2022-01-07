; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_verify_receiver_cert_prepare_km.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_verify_receiver_cert_prepare_km.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdcp_port_data = type { i32, i32 }
%struct.hdcp2_ake_send_cert = type { i32*, i32, i32 }
%struct.hdcp2_ake_no_stored_km = type { i32, i32 }
%struct.wired_cmd_verify_receiver_cert_in = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wired_cmd_verify_receiver_cert_out = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mei_cl_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HDCP_API_VERSION = common dso_local global i32 0, align 4
@WIRED_VERIFY_RECEIVER_CERT = common dso_local global i32 0, align 4
@ME_HDCP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN = common dso_local global i32 0, align 4
@HDCP_2_2_RRX_LEN = common dso_local global i32 0, align 4
@HDCP_2_2_RXCAPS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mei_cldev_send failed: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mei_cldev_recv failed: %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ME cmd 0x%08X Failed. Status: 0x%X\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HDCP_2_2_AKE_STORED_KM = common dso_local global i32 0, align 4
@HDCP_2_2_AKE_NO_STORED_KM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.hdcp_port_data*, %struct.hdcp2_ake_send_cert*, i32*, %struct.hdcp2_ake_no_stored_km*, i64*)* @mei_hdcp_verify_receiver_cert_prepare_km to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hdcp_verify_receiver_cert_prepare_km(%struct.device* %0, %struct.hdcp_port_data* %1, %struct.hdcp2_ake_send_cert* %2, i32* %3, %struct.hdcp2_ake_no_stored_km* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hdcp_port_data*, align 8
  %10 = alloca %struct.hdcp2_ake_send_cert*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hdcp2_ake_no_stored_km*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.wired_cmd_verify_receiver_cert_in, align 8
  %15 = alloca %struct.wired_cmd_verify_receiver_cert_out, align 8
  %16 = alloca %struct.mei_cl_device*, align 8
  %17 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.hdcp_port_data* %1, %struct.hdcp_port_data** %9, align 8
  store %struct.hdcp2_ake_send_cert* %2, %struct.hdcp2_ake_send_cert** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.hdcp2_ake_no_stored_km* %4, %struct.hdcp2_ake_no_stored_km** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = bitcast %struct.wired_cmd_verify_receiver_cert_in* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 56, i1 false)
  %19 = bitcast %struct.wired_cmd_verify_receiver_cert_out* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %6
  %23 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %9, align 8
  %24 = icmp ne %struct.hdcp_port_data* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.hdcp2_ake_send_cert*, %struct.hdcp2_ake_send_cert** %10, align 8
  %27 = icmp ne %struct.hdcp2_ake_send_cert* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.hdcp2_ake_no_stored_km*, %struct.hdcp2_ake_no_stored_km** %12, align 8
  %33 = icmp ne %struct.hdcp2_ake_no_stored_km* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64*, i64** %13, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %31, %28, %25, %22, %6
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %149

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = call %struct.mei_cl_device* @to_mei_cl_device(%struct.device* %41)
  store %struct.mei_cl_device* %42, %struct.mei_cl_device** %16, align 8
  %43 = load i32, i32* @HDCP_API_VERSION, align 4
  %44 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_in, %struct.wired_cmd_verify_receiver_cert_in* %14, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @WIRED_VERIFY_RECEIVER_CERT, align 4
  %47 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_in, %struct.wired_cmd_verify_receiver_cert_in* %14, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %50 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_in, %struct.wired_cmd_verify_receiver_cert_in* %14, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN, align 4
  %53 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_in, %struct.wired_cmd_verify_receiver_cert_in* %14, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %9, align 8
  %56 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_in, %struct.wired_cmd_verify_receiver_cert_in* %14, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %9, align 8
  %61 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mei_get_ddi_index(i32 %62)
  %64 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_in, %struct.wired_cmd_verify_receiver_cert_in* %14, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.hdcp2_ake_send_cert*, %struct.hdcp2_ake_send_cert** %10, align 8
  %67 = getelementptr inbounds %struct.hdcp2_ake_send_cert, %struct.hdcp2_ake_send_cert* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_in, %struct.wired_cmd_verify_receiver_cert_in* %14, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_in, %struct.wired_cmd_verify_receiver_cert_in* %14, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hdcp2_ake_send_cert*, %struct.hdcp2_ake_send_cert** %10, align 8
  %73 = getelementptr inbounds %struct.hdcp2_ake_send_cert, %struct.hdcp2_ake_send_cert* %72, i32 0, i32 1
  %74 = load i32, i32* @HDCP_2_2_RRX_LEN, align 4
  %75 = call i32 @memcpy(i32 %71, i32* %73, i32 %74)
  %76 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_in, %struct.wired_cmd_verify_receiver_cert_in* %14, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hdcp2_ake_send_cert*, %struct.hdcp2_ake_send_cert** %10, align 8
  %79 = getelementptr inbounds %struct.hdcp2_ake_send_cert, %struct.hdcp2_ake_send_cert* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @HDCP_2_2_RXCAPS_LEN, align 4
  %82 = call i32 @memcpy(i32 %77, i32* %80, i32 %81)
  %83 = load %struct.mei_cl_device*, %struct.mei_cl_device** %16, align 8
  %84 = bitcast %struct.wired_cmd_verify_receiver_cert_in* %14 to i32*
  %85 = call i64 @mei_cldev_send(%struct.mei_cl_device* %83, i32* %84, i32 56)
  store i64 %85, i64* %17, align 8
  %86 = load i64, i64* %17, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %40
  %89 = load %struct.device*, %struct.device** %8, align 8
  %90 = load i64, i64* %17, align 8
  %91 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %90)
  %92 = load i64, i64* %17, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %7, align 4
  br label %149

94:                                               ; preds = %40
  %95 = load %struct.mei_cl_device*, %struct.mei_cl_device** %16, align 8
  %96 = bitcast %struct.wired_cmd_verify_receiver_cert_out* %15 to i32*
  %97 = call i64 @mei_cldev_recv(%struct.mei_cl_device* %95, i32* %96, i32 32)
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* %17, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.device*, %struct.device** %8, align 8
  %102 = load i64, i64* %17, align 8
  %103 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  %104 = load i64, i64* %17, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %7, align 4
  br label %149

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_out, %struct.wired_cmd_verify_receiver_cert_out* %15, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.device*, %struct.device** %8, align 8
  %114 = load i32, i32* @WIRED_VERIFY_RECEIVER_CERT, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_out, %struct.wired_cmd_verify_receiver_cert_out* %15, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %115, i64 %118)
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %149

122:                                              ; preds = %106
  %123 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_out, %struct.wired_cmd_verify_receiver_cert_out* %15, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = xor i1 %125, true
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = load i32*, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_out, %struct.wired_cmd_verify_receiver_cert_out* %15, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %122
  %134 = load i32, i32* @HDCP_2_2_AKE_STORED_KM, align 4
  %135 = load %struct.hdcp2_ake_no_stored_km*, %struct.hdcp2_ake_no_stored_km** %12, align 8
  %136 = getelementptr inbounds %struct.hdcp2_ake_no_stored_km, %struct.hdcp2_ake_no_stored_km* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i64*, i64** %13, align 8
  store i64 4, i64* %137, align 8
  br label %143

138:                                              ; preds = %122
  %139 = load i32, i32* @HDCP_2_2_AKE_NO_STORED_KM, align 4
  %140 = load %struct.hdcp2_ake_no_stored_km*, %struct.hdcp2_ake_no_stored_km** %12, align 8
  %141 = getelementptr inbounds %struct.hdcp2_ake_no_stored_km, %struct.hdcp2_ake_no_stored_km* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i64*, i64** %13, align 8
  store i64 8, i64* %142, align 8
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.hdcp2_ake_no_stored_km*, %struct.hdcp2_ake_no_stored_km** %12, align 8
  %145 = getelementptr inbounds %struct.hdcp2_ake_no_stored_km, %struct.hdcp2_ake_no_stored_km* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.wired_cmd_verify_receiver_cert_out, %struct.wired_cmd_verify_receiver_cert_out* %15, i32 0, i32 0
  %148 = call i32 @memcpy(i32 %146, i32* %147, i32 4)
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %143, %112, %100, %88, %37
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mei_cl_device* @to_mei_cl_device(%struct.device*) #2

declare dso_local i32 @mei_get_ddi_index(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

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
