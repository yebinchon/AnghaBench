; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_repeater_check_flow_prepare_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/hdcp/extr_mei_hdcp.c_mei_hdcp_repeater_check_flow_prepare_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdcp_port_data = type { i32, i32 }
%struct.hdcp2_rep_send_receiverid_list = type { i32, i32, i32, i32 }
%struct.hdcp2_rep_send_ack = type { i32, i32 }
%struct.wired_cmd_verify_repeater_in = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wired_cmd_verify_repeater_out = type { i32, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mei_cl_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HDCP_API_VERSION = common dso_local global i32 0, align 4
@WIRED_VERIFY_REPEATER = common dso_local global i32 0, align 4
@ME_HDCP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN = common dso_local global i32 0, align 4
@HDCP_2_2_RXINFO_LEN = common dso_local global i32 0, align 4
@HDCP_2_2_SEQ_NUM_LEN = common dso_local global i32 0, align 4
@HDCP_2_2_V_PRIME_HALF_LEN = common dso_local global i32 0, align 4
@HDCP_2_2_RECEIVER_IDS_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mei_cldev_send failed. %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mei_cldev_recv failed. %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ME cmd 0x%08X failed. status: 0x%X\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HDCP_2_2_REP_SEND_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.hdcp_port_data*, %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_ack*)* @mei_hdcp_repeater_check_flow_prepare_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hdcp_repeater_check_flow_prepare_ack(%struct.device* %0, %struct.hdcp_port_data* %1, %struct.hdcp2_rep_send_receiverid_list* %2, %struct.hdcp2_rep_send_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.hdcp_port_data*, align 8
  %8 = alloca %struct.hdcp2_rep_send_receiverid_list*, align 8
  %9 = alloca %struct.hdcp2_rep_send_ack*, align 8
  %10 = alloca %struct.wired_cmd_verify_repeater_in, align 8
  %11 = alloca %struct.wired_cmd_verify_repeater_out, align 8
  %12 = alloca %struct.mei_cl_device*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.hdcp_port_data* %1, %struct.hdcp_port_data** %7, align 8
  store %struct.hdcp2_rep_send_receiverid_list* %2, %struct.hdcp2_rep_send_receiverid_list** %8, align 8
  store %struct.hdcp2_rep_send_ack* %3, %struct.hdcp2_rep_send_ack** %9, align 8
  %14 = bitcast %struct.wired_cmd_verify_repeater_in* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 56, i1 false)
  %15 = bitcast %struct.wired_cmd_verify_repeater_out* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_receiverid_list** %8, align 8
  %20 = icmp ne %struct.hdcp2_rep_send_receiverid_list* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.hdcp2_rep_send_ack*, %struct.hdcp2_rep_send_ack** %9, align 8
  %23 = icmp ne %struct.hdcp2_rep_send_ack* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %26 = icmp ne %struct.hdcp_port_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21, %18, %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %134

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call %struct.mei_cl_device* @to_mei_cl_device(%struct.device* %31)
  store %struct.mei_cl_device* %32, %struct.mei_cl_device** %12, align 8
  %33 = load i32, i32* @HDCP_API_VERSION, align 4
  %34 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @WIRED_VERIFY_REPEATER, align 4
  %37 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %40 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN, align 4
  %43 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %46 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hdcp_port_data*, %struct.hdcp_port_data** %7, align 8
  %51 = getelementptr inbounds %struct.hdcp_port_data, %struct.hdcp_port_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mei_get_ddi_index(i32 %52)
  %54 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_receiverid_list** %8, align 8
  %59 = getelementptr inbounds %struct.hdcp2_rep_send_receiverid_list, %struct.hdcp2_rep_send_receiverid_list* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HDCP_2_2_RXINFO_LEN, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_receiverid_list** %8, align 8
  %66 = getelementptr inbounds %struct.hdcp2_rep_send_receiverid_list, %struct.hdcp2_rep_send_receiverid_list* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HDCP_2_2_SEQ_NUM_LEN, align 4
  %69 = call i32 @memcpy(i32 %64, i32 %67, i32 %68)
  %70 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_receiverid_list** %8, align 8
  %73 = getelementptr inbounds %struct.hdcp2_rep_send_receiverid_list, %struct.hdcp2_rep_send_receiverid_list* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @HDCP_2_2_V_PRIME_HALF_LEN, align 4
  %76 = call i32 @memcpy(i32 %71, i32 %74, i32 %75)
  %77 = getelementptr inbounds %struct.wired_cmd_verify_repeater_in, %struct.wired_cmd_verify_repeater_in* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.hdcp2_rep_send_receiverid_list*, %struct.hdcp2_rep_send_receiverid_list** %8, align 8
  %80 = getelementptr inbounds %struct.hdcp2_rep_send_receiverid_list, %struct.hdcp2_rep_send_receiverid_list* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HDCP_2_2_RECEIVER_IDS_MAX_LEN, align 4
  %83 = call i32 @memcpy(i32 %78, i32 %81, i32 %82)
  %84 = load %struct.mei_cl_device*, %struct.mei_cl_device** %12, align 8
  %85 = bitcast %struct.wired_cmd_verify_repeater_in* %10 to i32*
  %86 = call i64 @mei_cldev_send(%struct.mei_cl_device* %84, i32* %85, i32 56)
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %13, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %30
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %91)
  %93 = load i64, i64* %13, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %5, align 4
  br label %134

95:                                               ; preds = %30
  %96 = load %struct.mei_cl_device*, %struct.mei_cl_device** %12, align 8
  %97 = bitcast %struct.wired_cmd_verify_repeater_out* %11 to i32*
  %98 = call i64 @mei_cldev_recv(%struct.mei_cl_device* %96, i32* %97, i32 24)
  store i64 %98, i64* %13, align 8
  %99 = load i64, i64* %13, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %103)
  %105 = load i64, i64* %13, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %134

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.wired_cmd_verify_repeater_out, %struct.wired_cmd_verify_repeater_out* %11, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ME_HDCP_STATUS_SUCCESS, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = load i32, i32* @WIRED_VERIFY_REPEATER, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.wired_cmd_verify_repeater_out, %struct.wired_cmd_verify_repeater_out* %11, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %116, i64 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %134

123:                                              ; preds = %107
  %124 = load %struct.hdcp2_rep_send_ack*, %struct.hdcp2_rep_send_ack** %9, align 8
  %125 = getelementptr inbounds %struct.hdcp2_rep_send_ack, %struct.hdcp2_rep_send_ack* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.wired_cmd_verify_repeater_out, %struct.wired_cmd_verify_repeater_out* %11, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @HDCP_2_2_V_PRIME_HALF_LEN, align 4
  %130 = call i32 @memcpy(i32 %126, i32 %128, i32 %129)
  %131 = load i32, i32* @HDCP_2_2_REP_SEND_ACK, align 4
  %132 = load %struct.hdcp2_rep_send_ack*, %struct.hdcp2_rep_send_ack** %9, align 8
  %133 = getelementptr inbounds %struct.hdcp2_rep_send_ack, %struct.hdcp2_rep_send_ack* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %123, %113, %101, %89, %27
  %135 = load i32, i32* %5, align 4
  ret i32 %135
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
