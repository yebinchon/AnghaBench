; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mei_msg_hdr = type { i32 }
%struct.mei_bus_message = type { i32 }
%struct.hbm_host_version_response = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hbm_props_response = type { i32, i32 }
%struct.hbm_host_enum_response = type { i32 }
%struct.hbm_dma_setup_response = type { i32 }
%struct.hbm_add_client_request = type { i32 }
%struct.mei_hbm_cl_cmd = type { i32 }
%struct.hbm_client_connect_request = type { i32 }
%struct.hbm_flow_control = type { i32 }

@MEI_HBM_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"hbm: state is idle ignore spurious messages\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"hbm: start: response message received.\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"HBM VERSION: DRIVER=%02d:%02d DEVICE=%02d:%02d\0A\00", align 1
@HBM_MAJOR_VERSION = common dso_local global i32 0, align 4
@HBM_MINOR_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"hbm: start: version mismatch - stopping the driver.\0A\00", align 1
@MEI_HBM_STOPPED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"hbm: start: failed to send stop request\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MEI_DEV_INIT_CLIENTS = common dso_local global i32 0, align 4
@MEI_HBM_STARTING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"hbm: start: state mismatch, [%d, %d]\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"running w/o dma ring\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"hbm: dma setup response: message received.\0A\00", align 1
@MEI_HBM_DR_SETUP = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [51 x i8] c"hbm: dma setup response: state mismatch, [%d, %d]\0A\00", align 1
@MEI_HBMS_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"hbm: dma setup not allowed\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"hbm: dma setup response: failure = %d %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"hbm: client connect response: message received.\0A\00", align 1
@MEI_FOP_CONNECT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [52 x i8] c"hbm: client disconnect response: message received.\0A\00", align 1
@MEI_FOP_DISCONNECT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [54 x i8] c"hbm: client flow control response: message received.\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"hbm: power gate isolation entry response received\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"hbm: power gate isolation exit request received\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"hbm: properties response: message received.\0A\00", align 1
@MEI_HBM_CLIENT_PROPERTIES = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [52 x i8] c"hbm: properties response: state mismatch, [%d, %d]\0A\00", align 1
@MEI_HBMS_CLIENT_NOT_FOUND = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [47 x i8] c"hbm: properties response: %d CLIENT_NOT_FOUND\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"hbm: properties response: wrong status = %d %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"hbm: enumeration response: message received\0A\00", align 1
@MEI_HBM_ENUM_CLIENTS = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [53 x i8] c"hbm: enumeration response: state mismatch, [%d, %d]\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"hbm: stop response: message received\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"hbm: stop response: state mismatch, [%d, %d]\0A\00", align 1
@MEI_DEV_POWER_DOWN = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [32 x i8] c"hbm: stop response: resetting.\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"hbm: disconnect request: message received\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"hbm: stop request: message received\0A\00", align 1
@.str.27 = private unnamed_addr constant [48 x i8] c"hbm: stop request: failed to send stop request\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"hbm: add client request received\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"hbm: add client: state mismatch, [%d, %d]\0A\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"hbm: add client: failed to send response %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"hbm: add client request processed\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"hbm: notify response received\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"hbm: notification\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"hbm: wrong command %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_hbm_dispatch(%struct.mei_device* %0, %struct.mei_msg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_msg_hdr*, align 8
  %6 = alloca %struct.mei_bus_message*, align 8
  %7 = alloca %struct.hbm_host_version_response*, align 8
  %8 = alloca %struct.hbm_props_response*, align 8
  %9 = alloca %struct.hbm_host_enum_response*, align 8
  %10 = alloca %struct.hbm_dma_setup_response*, align 8
  %11 = alloca %struct.hbm_add_client_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mei_hbm_cl_cmd*, align 8
  %14 = alloca %struct.hbm_client_connect_request*, align 8
  %15 = alloca %struct.hbm_flow_control*, align 8
  %16 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.mei_msg_hdr* %1, %struct.mei_msg_hdr** %5, align 8
  %17 = load %struct.mei_msg_hdr*, %struct.mei_msg_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp uge i64 %20, 8
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %25 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %26 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mei_msg_hdr*, %struct.mei_msg_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mei_read_slots(%struct.mei_device* %24, i64 %27, i32 %30)
  %32 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.mei_bus_message*
  store %struct.mei_bus_message* %35, %struct.mei_bus_message** %6, align 8
  %36 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %37 = bitcast %struct.mei_bus_message* %36 to %struct.mei_hbm_cl_cmd*
  store %struct.mei_hbm_cl_cmd* %37, %struct.mei_hbm_cl_cmd** %13, align 8
  %38 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %39 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MEI_HBM_IDLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %2
  %44 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %45 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %594

48:                                               ; preds = %2
  %49 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %50 = getelementptr inbounds %struct.mei_bus_message, %struct.mei_bus_message* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %586 [
    i32 137, label %52
    i32 133, label %199
    i32 142, label %264
    i32 140, label %273
    i32 135, label %282
    i32 130, label %292
    i32 129, label %304
    i32 139, label %316
    i32 138, label %399
    i32 136, label %451
    i32 141, label %487
    i32 128, label %497
    i32 134, label %517
    i32 131, label %568
    i32 132, label %578
  ]

52:                                               ; preds = %48
  %53 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %54 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %58 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %57, i32 0, i32 3
  store i32 0, i32* %58, align 8
  %59 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %60 = bitcast %struct.mei_bus_message* %59 to %struct.hbm_host_version_response*
  store %struct.hbm_host_version_response* %60, %struct.hbm_host_version_response** %7, align 8
  %61 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %62 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HBM_MAJOR_VERSION, align 4
  %65 = load i32, i32* @HBM_MINOR_VERSION, align 4
  %66 = load %struct.hbm_host_version_response*, %struct.hbm_host_version_response** %7, align 8
  %67 = getelementptr inbounds %struct.hbm_host_version_response, %struct.hbm_host_version_response* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hbm_host_version_response*, %struct.hbm_host_version_response** %7, align 8
  %71 = getelementptr inbounds %struct.hbm_host_version_response, %struct.hbm_host_version_response* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65, i32 %69, i32 %73)
  %75 = load %struct.hbm_host_version_response*, %struct.hbm_host_version_response** %7, align 8
  %76 = getelementptr inbounds %struct.hbm_host_version_response, %struct.hbm_host_version_response* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %52
  %80 = load i32, i32* @HBM_MAJOR_VERSION, align 4
  %81 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %82 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @HBM_MINOR_VERSION, align 4
  %85 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %86 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  br label %103

88:                                               ; preds = %52
  %89 = load %struct.hbm_host_version_response*, %struct.hbm_host_version_response** %7, align 8
  %90 = getelementptr inbounds %struct.hbm_host_version_response, %struct.hbm_host_version_response* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %94 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.hbm_host_version_response*, %struct.hbm_host_version_response** %7, align 8
  %97 = getelementptr inbounds %struct.hbm_host_version_response, %struct.hbm_host_version_response* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %101 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  br label %103

103:                                              ; preds = %88, %79
  %104 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %105 = call i32 @mei_hbm_version_is_supported(%struct.mei_device* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %127, label %107

107:                                              ; preds = %103
  %108 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %109 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_warn(i32 %110, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i8*, i8** @MEI_HBM_STOPPED, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %115 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %117 = call i32 @mei_hbm_stop_req(%struct.mei_device* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %107
  %120 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %121 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %594

126:                                              ; preds = %107
  br label %593

127:                                              ; preds = %103
  %128 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %129 = call i32 @mei_hbm_config_features(%struct.mei_device* %128)
  %130 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %131 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MEI_DEV_INIT_CLIENTS, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %141, label %135

135:                                              ; preds = %127
  %136 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %137 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MEI_HBM_STARTING, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %135, %127
  %142 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %143 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %146 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %149 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i32, i8*, ...) @dev_err(i32 %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %147, i64 %150)
  %152 = load i32, i32* @EPROTO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %594

154:                                              ; preds = %135
  %155 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %156 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %184

159:                                              ; preds = %154
  %160 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %161 = call i32 @mei_dmam_ring_alloc(%struct.mei_device* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %165 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32, i8*, ...) @dev_info(i32 %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %168

168:                                              ; preds = %163, %159
  %169 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %170 = call i32 @mei_dma_ring_is_allocated(%struct.mei_device* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %174 = call i32 @mei_hbm_dma_setup_req(%struct.mei_device* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %594

179:                                              ; preds = %172
  %180 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %181 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %180, i32 0, i32 6
  %182 = call i32 @wake_up(i32* %181)
  br label %593

183:                                              ; preds = %168
  br label %184

184:                                              ; preds = %183, %154
  %185 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %186 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %185, i32 0, i32 5
  store i32 0, i32* %186, align 8
  %187 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %188 = call i32 @mei_dmam_ring_free(%struct.mei_device* %187)
  %189 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %190 = call i32 @mei_hbm_enum_clients_req(%struct.mei_device* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %594

195:                                              ; preds = %184
  %196 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %197 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %196, i32 0, i32 6
  %198 = call i32 @wake_up(i32* %197)
  br label %593

199:                                              ; preds = %48
  %200 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %201 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i32, i8*, ...) @dev_dbg(i32 %202, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %204 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %205 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %204, i32 0, i32 3
  store i32 0, i32* %205, align 8
  %206 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %207 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @MEI_HBM_DR_SETUP, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %199
  %212 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %213 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %216 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %219 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 (i32, i8*, ...) @dev_err(i32 %214, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %217, i64 %220)
  %222 = load i32, i32* @EPROTO, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %3, align 4
  br label %594

224:                                              ; preds = %199
  %225 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %226 = bitcast %struct.mei_bus_message* %225 to %struct.hbm_dma_setup_response*
  store %struct.hbm_dma_setup_response* %226, %struct.hbm_dma_setup_response** %10, align 8
  %227 = load %struct.hbm_dma_setup_response*, %struct.hbm_dma_setup_response** %10, align 8
  %228 = getelementptr inbounds %struct.hbm_dma_setup_response, %struct.hbm_dma_setup_response* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %256

231:                                              ; preds = %224
  %232 = load %struct.hbm_dma_setup_response*, %struct.hbm_dma_setup_response** %10, align 8
  %233 = getelementptr inbounds %struct.hbm_dma_setup_response, %struct.hbm_dma_setup_response* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %16, align 4
  %235 = load i32, i32* %16, align 4
  %236 = load i32, i32* @MEI_HBMS_NOT_ALLOWED, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %231
  %239 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %240 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 (i32, i8*, ...) @dev_dbg(i32 %241, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %251

243:                                              ; preds = %231
  %244 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %245 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %16, align 4
  %249 = call i32 @mei_hbm_status_str(i32 %248)
  %250 = call i32 (i32, i8*, ...) @dev_info(i32 %246, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %247, i32 %249)
  br label %251

251:                                              ; preds = %243, %238
  %252 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %253 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %252, i32 0, i32 5
  store i32 0, i32* %253, align 8
  %254 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %255 = call i32 @mei_dmam_ring_free(%struct.mei_device* %254)
  br label %256

256:                                              ; preds = %251, %224
  %257 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %258 = call i32 @mei_hbm_enum_clients_req(%struct.mei_device* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i32, i32* @EIO, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %3, align 4
  br label %594

263:                                              ; preds = %256
  br label %593

264:                                              ; preds = %48
  %265 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %266 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i32, i8*, ...) @dev_dbg(i32 %267, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  %269 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %270 = load %struct.mei_hbm_cl_cmd*, %struct.mei_hbm_cl_cmd** %13, align 8
  %271 = load i32, i32* @MEI_FOP_CONNECT, align 4
  %272 = call i32 @mei_hbm_cl_res(%struct.mei_device* %269, %struct.mei_hbm_cl_cmd* %270, i32 %271)
  br label %593

273:                                              ; preds = %48
  %274 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %275 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = call i32 (i32, i8*, ...) @dev_dbg(i32 %276, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %278 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %279 = load %struct.mei_hbm_cl_cmd*, %struct.mei_hbm_cl_cmd** %13, align 8
  %280 = load i32, i32* @MEI_FOP_DISCONNECT, align 4
  %281 = call i32 @mei_hbm_cl_res(%struct.mei_device* %278, %struct.mei_hbm_cl_cmd* %279, i32 %280)
  br label %593

282:                                              ; preds = %48
  %283 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %284 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i32 (i32, i8*, ...) @dev_dbg(i32 %285, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  %287 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %288 = bitcast %struct.mei_bus_message* %287 to %struct.hbm_flow_control*
  store %struct.hbm_flow_control* %288, %struct.hbm_flow_control** %15, align 8
  %289 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %290 = load %struct.hbm_flow_control*, %struct.hbm_flow_control** %15, align 8
  %291 = call i32 @mei_hbm_cl_tx_flow_ctrl_creds_res(%struct.mei_device* %289, %struct.hbm_flow_control* %290)
  br label %593

292:                                              ; preds = %48
  %293 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %294 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = call i32 (i32, i8*, ...) @dev_dbg(i32 %295, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %297 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %298 = call i32 @mei_hbm_pg_enter_res(%struct.mei_device* %297)
  store i32 %298, i32* %12, align 4
  %299 = load i32, i32* %12, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %292
  %302 = load i32, i32* %12, align 4
  store i32 %302, i32* %3, align 4
  br label %594

303:                                              ; preds = %292
  br label %593

304:                                              ; preds = %48
  %305 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %306 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = call i32 (i32, i8*, ...) @dev_dbg(i32 %307, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0))
  %309 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %310 = call i32 @mei_hbm_pg_exit_res(%struct.mei_device* %309)
  store i32 %310, i32* %12, align 4
  %311 = load i32, i32* %12, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %304
  %314 = load i32, i32* %12, align 4
  store i32 %314, i32* %3, align 4
  br label %594

315:                                              ; preds = %304
  br label %593

316:                                              ; preds = %48
  %317 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %318 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = call i32 (i32, i8*, ...) @dev_dbg(i32 %319, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0))
  %321 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %322 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %321, i32 0, i32 3
  store i32 0, i32* %322, align 8
  %323 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %324 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @MEI_DEV_INIT_CLIENTS, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %334, label %328

328:                                              ; preds = %316
  %329 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %330 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @MEI_HBM_CLIENT_PROPERTIES, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %347

334:                                              ; preds = %328, %316
  %335 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %336 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %339 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %342 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = call i32 (i32, i8*, ...) @dev_err(i32 %337, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 %340, i64 %343)
  %345 = load i32, i32* @EPROTO, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %3, align 4
  br label %594

347:                                              ; preds = %328
  %348 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %349 = bitcast %struct.mei_bus_message* %348 to %struct.hbm_props_response*
  store %struct.hbm_props_response* %349, %struct.hbm_props_response** %8, align 8
  %350 = load %struct.hbm_props_response*, %struct.hbm_props_response** %8, align 8
  %351 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @MEI_HBMS_CLIENT_NOT_FOUND, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %363

355:                                              ; preds = %347
  %356 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %357 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.hbm_props_response*, %struct.hbm_props_response** %8, align 8
  %360 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 (i32, i8*, ...) @dev_dbg(i32 %358, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0), i32 %361)
  br label %387

363:                                              ; preds = %347
  %364 = load %struct.hbm_props_response*, %struct.hbm_props_response** %8, align 8
  %365 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %382

368:                                              ; preds = %363
  %369 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %370 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.hbm_props_response*, %struct.hbm_props_response** %8, align 8
  %373 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.hbm_props_response*, %struct.hbm_props_response** %8, align 8
  %376 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @mei_hbm_status_str(i32 %377)
  %379 = call i32 (i32, i8*, ...) @dev_err(i32 %371, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i32 %374, i32 %378)
  %380 = load i32, i32* @EPROTO, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %3, align 4
  br label %594

382:                                              ; preds = %363
  %383 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %384 = load %struct.hbm_props_response*, %struct.hbm_props_response** %8, align 8
  %385 = call i32 @mei_hbm_me_cl_add(%struct.mei_device* %383, %struct.hbm_props_response* %384)
  br label %386

386:                                              ; preds = %382
  br label %387

387:                                              ; preds = %386, %355
  %388 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %389 = load %struct.hbm_props_response*, %struct.hbm_props_response** %8, align 8
  %390 = getelementptr inbounds %struct.hbm_props_response, %struct.hbm_props_response* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = add nsw i32 %391, 1
  %393 = call i32 @mei_hbm_prop_req(%struct.mei_device* %388, i32 %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %387
  %396 = load i32, i32* @EIO, align 4
  %397 = sub nsw i32 0, %396
  store i32 %397, i32* %3, align 4
  br label %594

398:                                              ; preds = %387
  br label %593

399:                                              ; preds = %48
  %400 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %401 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = call i32 (i32, i8*, ...) @dev_dbg(i32 %402, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0))
  %404 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %405 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %404, i32 0, i32 3
  store i32 0, i32* %405, align 8
  %406 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %407 = bitcast %struct.mei_bus_message* %406 to %struct.hbm_host_enum_response*
  store %struct.hbm_host_enum_response* %407, %struct.hbm_host_enum_response** %9, align 8
  %408 = call i32 @BUILD_BUG_ON(i32 0)
  %409 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %410 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.hbm_host_enum_response*, %struct.hbm_host_enum_response** %9, align 8
  %413 = getelementptr inbounds %struct.hbm_host_enum_response, %struct.hbm_host_enum_response* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @memcpy(i32 %411, i32 %414, i32 4)
  %416 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %417 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @MEI_DEV_INIT_CLIENTS, align 4
  %420 = icmp ne i32 %418, %419
  br i1 %420, label %427, label %421

421:                                              ; preds = %399
  %422 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %423 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @MEI_HBM_ENUM_CLIENTS, align 8
  %426 = icmp ne i64 %424, %425
  br i1 %426, label %427, label %440

427:                                              ; preds = %421, %399
  %428 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %429 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %432 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %435 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = call i32 (i32, i8*, ...) @dev_err(i32 %430, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 %433, i64 %436)
  %438 = load i32, i32* @EPROTO, align 4
  %439 = sub nsw i32 0, %438
  store i32 %439, i32* %3, align 4
  br label %594

440:                                              ; preds = %421
  %441 = load i64, i64* @MEI_HBM_CLIENT_PROPERTIES, align 8
  %442 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %443 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %442, i32 0, i32 0
  store i64 %441, i64* %443, align 8
  %444 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %445 = call i32 @mei_hbm_prop_req(%struct.mei_device* %444, i32 0)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %440
  %448 = load i32, i32* @EIO, align 4
  %449 = sub nsw i32 0, %448
  store i32 %449, i32* %3, align 4
  br label %594

450:                                              ; preds = %440
  br label %593

451:                                              ; preds = %48
  %452 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %453 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = call i32 (i32, i8*, ...) @dev_dbg(i32 %454, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0))
  %456 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %457 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %456, i32 0, i32 3
  store i32 0, i32* %457, align 8
  %458 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %459 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = inttoptr i64 %460 to i8*
  %462 = load i8*, i8** @MEI_HBM_STOPPED, align 8
  %463 = icmp ne i8* %461, %462
  br i1 %463, label %464, label %477

464:                                              ; preds = %451
  %465 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %466 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %469 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %472 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = call i32 (i32, i8*, ...) @dev_err(i32 %467, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0), i32 %470, i64 %473)
  %475 = load i32, i32* @EPROTO, align 4
  %476 = sub nsw i32 0, %475
  store i32 %476, i32* %3, align 4
  br label %594

477:                                              ; preds = %451
  %478 = load i32, i32* @MEI_DEV_POWER_DOWN, align 4
  %479 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %480 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %479, i32 0, i32 2
  store i32 %478, i32* %480, align 4
  %481 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %482 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  %484 = call i32 (i32, i8*, ...) @dev_info(i32 %483, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0))
  %485 = load i32, i32* @EPROTO, align 4
  %486 = sub nsw i32 0, %485
  store i32 %486, i32* %3, align 4
  br label %594

487:                                              ; preds = %48
  %488 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %489 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = call i32 (i32, i8*, ...) @dev_dbg(i32 %490, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0))
  %492 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %493 = bitcast %struct.mei_bus_message* %492 to %struct.hbm_client_connect_request*
  store %struct.hbm_client_connect_request* %493, %struct.hbm_client_connect_request** %14, align 8
  %494 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %495 = load %struct.hbm_client_connect_request*, %struct.hbm_client_connect_request** %14, align 8
  %496 = call i32 @mei_hbm_fw_disconnect_req(%struct.mei_device* %494, %struct.hbm_client_connect_request* %495)
  br label %593

497:                                              ; preds = %48
  %498 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %499 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = call i32 (i32, i8*, ...) @dev_dbg(i32 %500, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0))
  %502 = load i8*, i8** @MEI_HBM_STOPPED, align 8
  %503 = ptrtoint i8* %502 to i64
  %504 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %505 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %504, i32 0, i32 0
  store i64 %503, i64* %505, align 8
  %506 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %507 = call i32 @mei_hbm_stop_req(%struct.mei_device* %506)
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %516

509:                                              ; preds = %497
  %510 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %511 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 8
  %513 = call i32 (i32, i8*, ...) @dev_err(i32 %512, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0))
  %514 = load i32, i32* @EIO, align 4
  %515 = sub nsw i32 0, %514
  store i32 %515, i32* %3, align 4
  br label %594

516:                                              ; preds = %497
  br label %593

517:                                              ; preds = %48
  %518 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %519 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = call i32 (i32, i8*, ...) @dev_dbg(i32 %520, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0))
  %522 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %523 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* @MEI_HBM_ENUM_CLIENTS, align 8
  %526 = icmp sle i64 %524, %525
  br i1 %526, label %534, label %527

527:                                              ; preds = %517
  %528 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %529 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = inttoptr i64 %530 to i8*
  %532 = load i8*, i8** @MEI_HBM_STOPPED, align 8
  %533 = icmp uge i8* %531, %532
  br i1 %533, label %534, label %547

534:                                              ; preds = %527, %517
  %535 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %536 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 8
  %538 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %539 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 4
  %541 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %542 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = call i32 (i32, i8*, ...) @dev_err(i32 %537, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0), i32 %540, i64 %543)
  %545 = load i32, i32* @EPROTO, align 4
  %546 = sub nsw i32 0, %545
  store i32 %546, i32* %3, align 4
  br label %594

547:                                              ; preds = %527
  %548 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %549 = bitcast %struct.mei_bus_message* %548 to %struct.hbm_add_client_request*
  store %struct.hbm_add_client_request* %549, %struct.hbm_add_client_request** %11, align 8
  %550 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %551 = load %struct.hbm_add_client_request*, %struct.hbm_add_client_request** %11, align 8
  %552 = call i32 @mei_hbm_fw_add_cl_req(%struct.mei_device* %550, %struct.hbm_add_client_request* %551)
  store i32 %552, i32* %12, align 4
  %553 = load i32, i32* %12, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %563

555:                                              ; preds = %547
  %556 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %557 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 8
  %559 = load i32, i32* %12, align 4
  %560 = call i32 (i32, i8*, ...) @dev_err(i32 %558, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0), i32 %559)
  %561 = load i32, i32* @EIO, align 4
  %562 = sub nsw i32 0, %561
  store i32 %562, i32* %3, align 4
  br label %594

563:                                              ; preds = %547
  %564 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %565 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 8
  %567 = call i32 (i32, i8*, ...) @dev_dbg(i32 %566, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0))
  br label %593

568:                                              ; preds = %48
  %569 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %570 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 8
  %572 = call i32 (i32, i8*, ...) @dev_dbg(i32 %571, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0))
  %573 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %574 = load %struct.mei_hbm_cl_cmd*, %struct.mei_hbm_cl_cmd** %13, align 8
  %575 = load %struct.mei_hbm_cl_cmd*, %struct.mei_hbm_cl_cmd** %13, align 8
  %576 = call i32 @notify_res_to_fop(%struct.mei_hbm_cl_cmd* %575)
  %577 = call i32 @mei_hbm_cl_res(%struct.mei_device* %573, %struct.mei_hbm_cl_cmd* %574, i32 %576)
  br label %593

578:                                              ; preds = %48
  %579 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %580 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 8
  %582 = call i32 (i32, i8*, ...) @dev_dbg(i32 %581, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  %583 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %584 = load %struct.mei_hbm_cl_cmd*, %struct.mei_hbm_cl_cmd** %13, align 8
  %585 = call i32 @mei_hbm_cl_notify(%struct.mei_device* %583, %struct.mei_hbm_cl_cmd* %584)
  br label %593

586:                                              ; preds = %48
  %587 = load %struct.mei_bus_message*, %struct.mei_bus_message** %6, align 8
  %588 = getelementptr inbounds %struct.mei_bus_message, %struct.mei_bus_message* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 %589)
  %591 = load i32, i32* @EPROTO, align 4
  %592 = sub nsw i32 0, %591
  store i32 %592, i32* %3, align 4
  br label %594

593:                                              ; preds = %578, %568, %563, %516, %487, %450, %398, %315, %303, %282, %273, %264, %263, %195, %179, %126
  store i32 0, i32* %3, align 4
  br label %594

594:                                              ; preds = %593, %586, %555, %534, %509, %477, %464, %447, %427, %395, %368, %334, %313, %301, %260, %211, %192, %176, %141, %119, %43
  %595 = load i32, i32* %3, align 4
  ret i32 %595
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mei_read_slots(%struct.mei_device*, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mei_hbm_version_is_supported(%struct.mei_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mei_hbm_stop_req(%struct.mei_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mei_hbm_config_features(%struct.mei_device*) #1

declare dso_local i32 @mei_dmam_ring_alloc(%struct.mei_device*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @mei_dma_ring_is_allocated(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_dma_setup_req(%struct.mei_device*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mei_dmam_ring_free(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_enum_clients_req(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_status_str(i32) #1

declare dso_local i32 @mei_hbm_cl_res(%struct.mei_device*, %struct.mei_hbm_cl_cmd*, i32) #1

declare dso_local i32 @mei_hbm_cl_tx_flow_ctrl_creds_res(%struct.mei_device*, %struct.hbm_flow_control*) #1

declare dso_local i32 @mei_hbm_pg_enter_res(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_pg_exit_res(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_me_cl_add(%struct.mei_device*, %struct.hbm_props_response*) #1

declare dso_local i32 @mei_hbm_prop_req(%struct.mei_device*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mei_hbm_fw_disconnect_req(%struct.mei_device*, %struct.hbm_client_connect_request*) #1

declare dso_local i32 @mei_hbm_fw_add_cl_req(%struct.mei_device*, %struct.hbm_add_client_request*) #1

declare dso_local i32 @notify_res_to_fop(%struct.mei_hbm_cl_cmd*) #1

declare dso_local i32 @mei_hbm_cl_notify(%struct.mei_device*, %struct.mei_hbm_cl_cmd*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
