; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_cfg_send_sync_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_cfg_send_sync_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_qmi_wlan_enable_cfg = type { i64, i64, i64, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.ath10k_snoc = type { %struct.ath10k_qmi* }
%struct.ath10k_qmi = type { i32 }
%struct.wlfw_wlan_cfg_resp_msg_v01 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.wlfw_wlan_cfg_req_msg_v01 = type { i32, i64, i32, i64, i32, i64, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.qmi_txn = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wlfw_wlan_cfg_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_MAX_NUM_CE_V01 = common dso_local global i64 0, align 8
@QMI_WLFW_MAX_NUM_SVC_V01 = common dso_local global i64 0, align 8
@QMI_WLFW_MAX_NUM_SHADOW_REG_V01 = common dso_local global i64 0, align 8
@QMI_WLFW_WLAN_CFG_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_WLAN_CFG_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_wlan_cfg_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to send config request: %d\0A\00", align 1
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"config request rejected: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"qmi config request completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_qmi_wlan_enable_cfg*, i8*)* @ath10k_qmi_cfg_send_sync_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_cfg_send_sync_msg(%struct.ath10k* %0, %struct.ath10k_qmi_wlan_enable_cfg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_qmi_wlan_enable_cfg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ath10k_snoc*, align 8
  %9 = alloca %struct.ath10k_qmi*, align 8
  %10 = alloca %struct.wlfw_wlan_cfg_resp_msg_v01, align 8
  %11 = alloca %struct.wlfw_wlan_cfg_req_msg_v01*, align 8
  %12 = alloca %struct.qmi_txn, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_qmi_wlan_enable_cfg* %1, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %16 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %15)
  store %struct.ath10k_snoc* %16, %struct.ath10k_snoc** %8, align 8
  %17 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %8, align 8
  %18 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %17, i32 0, i32 0
  %19 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %18, align 8
  store %struct.ath10k_qmi* %19, %struct.ath10k_qmi** %9, align 8
  %20 = bitcast %struct.wlfw_wlan_cfg_resp_msg_v01* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.wlfw_wlan_cfg_req_msg_v01* @kzalloc(i32 80, i32 %21)
  store %struct.wlfw_wlan_cfg_req_msg_v01* %22, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %23 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %24 = icmp ne %struct.wlfw_wlan_cfg_req_msg_v01* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %277

28:                                               ; preds = %3
  %29 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %9, align 8
  %30 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %29, i32 0, i32 0
  %31 = load i32, i32* @wlfw_wlan_cfg_resp_msg_v01_ei, align 4
  %32 = call i32 @qmi_txn_init(i32* %30, %struct.qmi_txn* %12, i32 %31, %struct.wlfw_wlan_cfg_resp_msg_v01* %10)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %273

36:                                               ; preds = %28
  %37 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %38 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %37, i32 0, i32 9
  store i64 0, i64* %38, align 8
  %39 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %40 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %42 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QMI_WLFW_MAX_NUM_CE_V01, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i64, i64* @QMI_WLFW_MAX_NUM_CE_V01, align 8
  %48 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %49 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %56

50:                                               ; preds = %36
  %51 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %52 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %55 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %46
  store i64 0, i64* %14, align 8
  br label %57

57:                                               ; preds = %129, %56
  %58 = load i64, i64* %14, align 8
  %59 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %60 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %132

63:                                               ; preds = %57
  %64 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %65 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %64, i32 0, i32 5
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %72 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %71, i32 0, i32 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  store i32 %70, i32* %76, align 4
  %77 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %78 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %77, i32 0, i32 5
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %85 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %84, i32 0, i32 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i32 %83, i32* %89, align 4
  %90 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %91 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %90, i32 0, i32 5
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %98 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %97, i32 0, i32 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i64, i64* %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %96, i32* %102, align 4
  %103 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %104 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %103, i32 0, i32 5
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %111 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %110, i32 0, i32 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32 %109, i32* %115, align 4
  %116 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %117 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %116, i32 0, i32 5
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %124 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %123, i32 0, i32 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i64, i64* %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %63
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %14, align 8
  br label %57

132:                                              ; preds = %57
  %133 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %134 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  %135 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %136 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @QMI_WLFW_MAX_NUM_SVC_V01, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load i64, i64* @QMI_WLFW_MAX_NUM_SVC_V01, align 8
  %142 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %143 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  br label %150

144:                                              ; preds = %132
  %145 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %146 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %149 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %148, i32 0, i32 3
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %144, %140
  store i64 0, i64* %14, align 8
  br label %151

151:                                              ; preds = %197, %150
  %152 = load i64, i64* %14, align 8
  %153 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %154 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ult i64 %152, %155
  br i1 %156, label %157, label %200

157:                                              ; preds = %151
  %158 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %159 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %158, i32 0, i32 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load i64, i64* %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %166 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %165, i32 0, i32 7
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = load i64, i64* %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  store i32 %164, i32* %170, align 4
  %171 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %172 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %171, i32 0, i32 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = load i64, i64* %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %179 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %178, i32 0, i32 7
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = load i64, i64* %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i32 %177, i32* %183, align 4
  %184 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %185 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %184, i32 0, i32 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i64, i64* %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %192 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %191, i32 0, i32 7
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load i64, i64* %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  store i32 %190, i32* %196, align 4
  br label %197

197:                                              ; preds = %157
  %198 = load i64, i64* %14, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %14, align 8
  br label %151

200:                                              ; preds = %151
  %201 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %202 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %201, i32 0, i32 4
  store i32 1, i32* %202, align 8
  %203 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %204 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @QMI_WLFW_MAX_NUM_SHADOW_REG_V01, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %200
  %209 = load i64, i64* @QMI_WLFW_MAX_NUM_SHADOW_REG_V01, align 8
  %210 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %211 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %210, i32 0, i32 5
  store i64 %209, i64* %211, align 8
  br label %218

212:                                              ; preds = %200
  %213 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %214 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %217 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %216, i32 0, i32 5
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %212, %208
  %219 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %220 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %6, align 8
  %223 = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, %struct.ath10k_qmi_wlan_enable_cfg* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %226 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, %struct.wlfw_wlan_cfg_req_msg_v01* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = mul i64 4, %227
  %229 = trunc i64 %228 to i32
  %230 = call i32 @memcpy(i32 %221, i32 %224, i32 %229)
  %231 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %9, align 8
  %232 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %231, i32 0, i32 0
  %233 = load i32, i32* @QMI_WLFW_WLAN_CFG_REQ_V01, align 4
  %234 = load i32, i32* @WLFW_WLAN_CFG_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %235 = load i32, i32* @wlfw_wlan_cfg_req_msg_v01_ei, align 4
  %236 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %237 = call i32 @qmi_send_request(i32* %232, i32* null, %struct.qmi_txn* %12, i32 %233, i32 %234, i32 %235, %struct.wlfw_wlan_cfg_req_msg_v01* %236)
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %218
  %241 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %12)
  %242 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %243 = load i32, i32* %13, align 4
  %244 = call i32 @ath10k_err(%struct.ath10k* %242, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %243)
  br label %273

245:                                              ; preds = %218
  %246 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %247 = load i32, i32* @HZ, align 4
  %248 = mul nsw i32 %246, %247
  %249 = call i32 @qmi_txn_wait(%struct.qmi_txn* %12, i32 %248)
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  br label %273

253:                                              ; preds = %245
  %254 = getelementptr inbounds %struct.wlfw_wlan_cfg_resp_msg_v01, %struct.wlfw_wlan_cfg_resp_msg_v01* %10, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %253
  %260 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %261 = getelementptr inbounds %struct.wlfw_wlan_cfg_resp_msg_v01, %struct.wlfw_wlan_cfg_resp_msg_v01* %10, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @ath10k_err(%struct.ath10k* %260, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* @EINVAL, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %13, align 4
  br label %273

267:                                              ; preds = %253
  %268 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %269 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %270 = call i32 @ath10k_dbg(%struct.ath10k* %268, i32 %269, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %271 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %272 = call i32 @kfree(%struct.wlfw_wlan_cfg_req_msg_v01* %271)
  store i32 0, i32* %4, align 4
  br label %277

273:                                              ; preds = %259, %252, %240, %35
  %274 = load %struct.wlfw_wlan_cfg_req_msg_v01*, %struct.wlfw_wlan_cfg_req_msg_v01** %11, align 8
  %275 = call i32 @kfree(%struct.wlfw_wlan_cfg_req_msg_v01* %274)
  %276 = load i32, i32* %13, align 4
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %273, %267, %25
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.wlfw_wlan_cfg_req_msg_v01* @kzalloc(i32, i32) #1

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_wlan_cfg_resp_msg_v01*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_wlan_cfg_req_msg_v01*) #1

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.wlfw_wlan_cfg_req_msg_v01*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
