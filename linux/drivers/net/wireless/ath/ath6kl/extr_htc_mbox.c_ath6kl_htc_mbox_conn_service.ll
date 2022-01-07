; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_conn_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_conn_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.htc_endpoint* }
%struct.htc_endpoint = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.htc_endpoint* }
%struct.htc_service_connect_req = type { i64, i64, i32, i32, i32, i32 }
%struct.htc_service_connect_resp = type { i64, i32, i32 }
%struct.htc_packet = type { i32, i64, i32* }
%struct.htc_conn_service_resp = type { i64, i32, i64, i32, i32 }
%struct.htc_conn_service_msg = type { i64, i8*, i8*, i8* }

@ENDPOINT_MAX = common dso_local global i32 0, align 4
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"htc connect service target 0x%p service id 0x%x\0A\00", align 1
@HTC_CTRL_RSVD_SVC = common dso_local global i64 0, align 8
@ENDPOINT_0 = common dso_local global i32 0, align 4
@HTC_MAX_CTRL_MSG_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HTC_MSG_CONN_SVC_ID = common dso_local global i64 0, align 8
@HTC_SERVICE_TX_PACKET_TAG = common dso_local global i32 0, align 4
@HTC_MSG_CONN_SVC_RESP_ID = common dso_local global i64 0, align 8
@HTC_SERVICE_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"target failed service 0x%X connect request (status:%d)\0A\00", align 1
@ENDPOINT_UNUSED = common dso_local global i32 0, align 4
@MAX_DEF_COOKIE_NUM = common dso_local global i32 0, align 4
@MAX_HI_COOKIE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, %struct.htc_service_connect_req*, %struct.htc_service_connect_resp*)* @ath6kl_htc_mbox_conn_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_mbox_conn_service(%struct.htc_target* %0, %struct.htc_service_connect_req* %1, %struct.htc_service_connect_resp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.htc_service_connect_req*, align 8
  %7 = alloca %struct.htc_service_connect_resp*, align 8
  %8 = alloca %struct.htc_packet*, align 8
  %9 = alloca %struct.htc_packet*, align 8
  %10 = alloca %struct.htc_conn_service_resp*, align 8
  %11 = alloca %struct.htc_conn_service_msg*, align 8
  %12 = alloca %struct.htc_endpoint*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.htc_service_connect_req* %1, %struct.htc_service_connect_req** %6, align 8
  store %struct.htc_service_connect_resp* %2, %struct.htc_service_connect_resp** %7, align 8
  store %struct.htc_packet* null, %struct.htc_packet** %8, align 8
  store %struct.htc_packet* null, %struct.htc_packet** %9, align 8
  %17 = load i32, i32* @ENDPOINT_MAX, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %19 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %20 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %21 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ath6kl_dbg(i32 %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.htc_target* %19, i64 %22)
  %24 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %25 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HTC_CTRL_RSVD_SVC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ENDPOINT_0, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @HTC_MAX_CTRL_MSG_LEN, align 4
  store i32 %31, i32* %14, align 4
  br label %144

32:                                               ; preds = %3
  %33 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %34 = call %struct.htc_packet* @htc_get_control_buf(%struct.htc_target* %33, i32 1)
  store %struct.htc_packet* %34, %struct.htc_packet** %9, align 8
  %35 = load %struct.htc_packet*, %struct.htc_packet** %9, align 8
  %36 = icmp ne %struct.htc_packet* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %308

40:                                               ; preds = %32
  %41 = load %struct.htc_packet*, %struct.htc_packet** %9, align 8
  %42 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.htc_conn_service_msg*
  store %struct.htc_conn_service_msg* %44, %struct.htc_conn_service_msg** %11, align 8
  %45 = load %struct.htc_conn_service_msg*, %struct.htc_conn_service_msg** %11, align 8
  %46 = call i32 @memset(%struct.htc_conn_service_msg* %45, i32 0, i32 32)
  %47 = load i64, i64* @HTC_MSG_CONN_SVC_ID, align 8
  %48 = call i8* @cpu_to_le16(i64 %47)
  %49 = load %struct.htc_conn_service_msg*, %struct.htc_conn_service_msg** %11, align 8
  %50 = getelementptr inbounds %struct.htc_conn_service_msg, %struct.htc_conn_service_msg* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %52 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @cpu_to_le16(i64 %53)
  %55 = load %struct.htc_conn_service_msg*, %struct.htc_conn_service_msg** %11, align 8
  %56 = getelementptr inbounds %struct.htc_conn_service_msg, %struct.htc_conn_service_msg* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %58 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @cpu_to_le16(i64 %59)
  %61 = load %struct.htc_conn_service_msg*, %struct.htc_conn_service_msg** %11, align 8
  %62 = getelementptr inbounds %struct.htc_conn_service_msg, %struct.htc_conn_service_msg* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.htc_packet*, %struct.htc_packet** %9, align 8
  %64 = load %struct.htc_conn_service_msg*, %struct.htc_conn_service_msg** %11, align 8
  %65 = bitcast %struct.htc_conn_service_msg* %64 to i32*
  %66 = load %struct.htc_conn_service_msg*, %struct.htc_conn_service_msg** %11, align 8
  %67 = getelementptr inbounds %struct.htc_conn_service_msg, %struct.htc_conn_service_msg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 32, %68
  %70 = load i32, i32* @ENDPOINT_0, align 4
  %71 = load i32, i32* @HTC_SERVICE_TX_PACKET_TAG, align 4
  %72 = call i32 @set_htc_pkt_info(%struct.htc_packet* %63, i32* null, i32* %65, i64 %69, i32 %70, i32 %71)
  %73 = load %struct.htc_packet*, %struct.htc_packet** %9, align 8
  %74 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.htc_packet*, %struct.htc_packet** %9, align 8
  %76 = call i32 @ath6kl_htc_tx_prep_pkt(%struct.htc_packet* %75, i32 0, i32 0, i32 0)
  %77 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %78 = load %struct.htc_packet*, %struct.htc_packet** %9, align 8
  %79 = call i32 @ath6kl_htc_tx_issue(%struct.htc_target* %77, %struct.htc_packet* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %40
  br label %290

83:                                               ; preds = %40
  %84 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %85 = call %struct.htc_packet* @htc_wait_for_ctrl_msg(%struct.htc_target* %84)
  store %struct.htc_packet* %85, %struct.htc_packet** %8, align 8
  %86 = load %struct.htc_packet*, %struct.htc_packet** %8, align 8
  %87 = icmp ne %struct.htc_packet* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %15, align 4
  br label %290

91:                                               ; preds = %83
  %92 = load %struct.htc_packet*, %struct.htc_packet** %8, align 8
  %93 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.htc_conn_service_resp*
  store %struct.htc_conn_service_resp* %95, %struct.htc_conn_service_resp** %10, align 8
  %96 = load %struct.htc_conn_service_resp*, %struct.htc_conn_service_resp** %10, align 8
  %97 = getelementptr inbounds %struct.htc_conn_service_resp, %struct.htc_conn_service_resp* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le16_to_cpu(i32 %98)
  %100 = ptrtoint i8* %99 to i64
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %16, align 8
  %102 = load i64, i64* @HTC_MSG_CONN_SVC_RESP_ID, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %91
  %105 = load %struct.htc_packet*, %struct.htc_packet** %8, align 8
  %106 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %108, 32
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %91
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %15, align 4
  br label %290

113:                                              ; preds = %104
  %114 = load %struct.htc_conn_service_resp*, %struct.htc_conn_service_resp** %10, align 8
  %115 = getelementptr inbounds %struct.htc_conn_service_resp, %struct.htc_conn_service_resp* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.htc_service_connect_resp*, %struct.htc_service_connect_resp** %7, align 8
  %118 = getelementptr inbounds %struct.htc_service_connect_resp, %struct.htc_service_connect_resp* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.htc_conn_service_resp*, %struct.htc_conn_service_resp** %10, align 8
  %120 = getelementptr inbounds %struct.htc_conn_service_resp, %struct.htc_conn_service_resp* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @HTC_SERVICE_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %113
  %125 = load %struct.htc_conn_service_resp*, %struct.htc_conn_service_resp** %10, align 8
  %126 = getelementptr inbounds %struct.htc_conn_service_resp, %struct.htc_conn_service_resp* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.htc_conn_service_resp*, %struct.htc_conn_service_resp** %10, align 8
  %129 = getelementptr inbounds %struct.htc_conn_service_resp, %struct.htc_conn_service_resp* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @ath6kl_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %127, i64 %130)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %15, align 4
  br label %290

134:                                              ; preds = %113
  %135 = load %struct.htc_conn_service_resp*, %struct.htc_conn_service_resp** %10, align 8
  %136 = getelementptr inbounds %struct.htc_conn_service_resp, %struct.htc_conn_service_resp* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %13, align 4
  %139 = load %struct.htc_conn_service_resp*, %struct.htc_conn_service_resp** %10, align 8
  %140 = getelementptr inbounds %struct.htc_conn_service_resp, %struct.htc_conn_service_resp* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @le16_to_cpu(i32 %141)
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %134, %29
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @ENDPOINT_UNUSED, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @ENDPOINT_MAX, align 4
  %151 = icmp uge i32 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  br label %156

156:                                              ; preds = %152, %148, %144
  %157 = phi i1 [ true, %148 ], [ true, %144 ], [ %155, %152 ]
  %158 = zext i1 %157 to i32
  %159 = call i64 @WARN_ON_ONCE(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %15, align 4
  br label %290

164:                                              ; preds = %156
  %165 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %166 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %165, i32 0, i32 1
  %167 = load %struct.htc_endpoint*, %struct.htc_endpoint** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %167, i64 %169
  store %struct.htc_endpoint* %170, %struct.htc_endpoint** %12, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %173 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %175 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %164
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %15, align 4
  br label %290

181:                                              ; preds = %164
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.htc_service_connect_resp*, %struct.htc_service_connect_resp** %7, align 8
  %184 = getelementptr inbounds %struct.htc_service_connect_resp, %struct.htc_service_connect_resp* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* %14, align 4
  %186 = load %struct.htc_service_connect_resp*, %struct.htc_service_connect_resp** %7, align 8
  %187 = getelementptr inbounds %struct.htc_service_connect_resp, %struct.htc_service_connect_resp* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  %188 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %189 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %193 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %195 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %198 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %201 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %203 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %206 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 8
  %207 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %208 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %212 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  %214 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %215 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %216 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 4
  store %struct.htc_endpoint* %214, %struct.htc_endpoint** %217, align 8
  %218 = load i32, i32* %13, align 4
  %219 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %220 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  %222 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %223 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %226 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 2
  store i32 %224, i32* %227, align 8
  %228 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %229 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  switch i32 %230, label %236 [
    i32 128, label %231
  ]

231:                                              ; preds = %181
  %232 = load i32, i32* @MAX_DEF_COOKIE_NUM, align 4
  %233 = sdiv i32 %232, 3
  %234 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %235 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  br label %240

236:                                              ; preds = %181
  %237 = load i32, i32* @MAX_HI_COOKIE_NUM, align 4
  %238 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %239 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %238, i32 0, i32 3
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %236, %231
  %241 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %242 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %265

245:                                              ; preds = %240
  %246 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %247 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %14, align 4
  %250 = icmp ugt i32 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load i32, i32* @ENOMEM, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %15, align 4
  br label %290

254:                                              ; preds = %245
  %255 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %256 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %259 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sdiv i32 %257, %260
  %262 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %263 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 3
  store i32 %261, i32* %264, align 4
  br label %274

265:                                              ; preds = %240
  %266 = load i32, i32* %14, align 4
  %267 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %268 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = udiv i32 %266, %269
  %271 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %272 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 3
  store i32 %270, i32* %273, align 4
  br label %274

274:                                              ; preds = %265, %254
  %275 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %276 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %274
  %281 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %282 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 3
  store i32 1, i32* %283, align 4
  br label %284

284:                                              ; preds = %280, %274
  %285 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %6, align 8
  %286 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.htc_endpoint*, %struct.htc_endpoint** %12, align 8
  %289 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %288, i32 0, i32 4
  store i32 %287, i32* %289, align 8
  br label %290

290:                                              ; preds = %284, %251, %178, %161, %124, %110, %88, %82
  %291 = load %struct.htc_packet*, %struct.htc_packet** %9, align 8
  %292 = icmp ne %struct.htc_packet* %291, null
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %295 = load %struct.htc_packet*, %struct.htc_packet** %9, align 8
  %296 = call i32 @htc_reclaim_txctrl_buf(%struct.htc_target* %294, %struct.htc_packet* %295)
  br label %297

297:                                              ; preds = %293, %290
  %298 = load %struct.htc_packet*, %struct.htc_packet** %8, align 8
  %299 = icmp ne %struct.htc_packet* %298, null
  br i1 %299, label %300, label %306

300:                                              ; preds = %297
  %301 = load %struct.htc_packet*, %struct.htc_packet** %8, align 8
  %302 = call i32 @htc_rxpkt_reset(%struct.htc_packet* %301)
  %303 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %304 = load %struct.htc_packet*, %struct.htc_packet** %8, align 8
  %305 = call i32 @reclaim_rx_ctrl_buf(%struct.htc_target* %303, %struct.htc_packet* %304)
  br label %306

306:                                              ; preds = %300, %297
  %307 = load i32, i32* %15, align 4
  store i32 %307, i32* %4, align 4
  br label %308

308:                                              ; preds = %306, %37
  %309 = load i32, i32* %4, align 4
  ret i32 %309
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, %struct.htc_target*, i64) #1

declare dso_local %struct.htc_packet* @htc_get_control_buf(%struct.htc_target*, i32) #1

declare dso_local i32 @memset(%struct.htc_conn_service_msg*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @set_htc_pkt_info(%struct.htc_packet*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @ath6kl_htc_tx_prep_pkt(%struct.htc_packet*, i32, i32, i32) #1

declare dso_local i32 @ath6kl_htc_tx_issue(%struct.htc_target*, %struct.htc_packet*) #1

declare dso_local %struct.htc_packet* @htc_wait_for_ctrl_msg(%struct.htc_target*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @htc_reclaim_txctrl_buf(%struct.htc_target*, %struct.htc_packet*) #1

declare dso_local i32 @htc_rxpkt_reset(%struct.htc_packet*) #1

declare dso_local i32 @reclaim_rx_ctrl_buf(%struct.htc_target*, %struct.htc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
