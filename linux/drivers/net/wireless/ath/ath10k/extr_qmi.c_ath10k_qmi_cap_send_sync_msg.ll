; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_cap_send_sync_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_cap_send_sync_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, i32, %struct.ath10k* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.ath10k = type { i32 }
%struct.wlfw_cap_resp_msg_v01 = type { i32, i64, %struct.TYPE_13__, i64, %struct.TYPE_12__, i64, %struct.TYPE_11__, i64, %struct.TYPE_10__, i64, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.wlfw_cap_req_msg_v01 = type { i32 }
%struct.ath10k_snoc = type { i32 }
%struct.qmi_txn = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wlfw_cap_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_CAP_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_CAP_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_cap_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to send capability request: %d\0A\00", align 1
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"capability req rejected: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_BUILD_ID_LEN = common dso_local global i32 0, align 4
@ATH10K_SNOC_FLAG_REGISTERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"qmi chip_id 0x%x chip_family 0x%x board_id 0x%x soc_id 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"qmi fw_version 0x%x fw_build_timestamp %s fw_build_id %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*)* @ath10k_qmi_cap_send_sync_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_cap_send_sync_msg(%struct.ath10k_qmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_qmi*, align 8
  %4 = alloca %struct.wlfw_cap_resp_msg_v01*, align 8
  %5 = alloca %struct.wlfw_cap_req_msg_v01, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_snoc*, align 8
  %8 = alloca %struct.qmi_txn, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %3, align 8
  %10 = bitcast %struct.wlfw_cap_req_msg_v01* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %11, i32 0, i32 7
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %6, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %14)
  store %struct.ath10k_snoc* %15, %struct.ath10k_snoc** %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.wlfw_cap_resp_msg_v01* @kzalloc(i32 96, i32 %16)
  store %struct.wlfw_cap_resp_msg_v01* %17, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %18 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %19 = icmp ne %struct.wlfw_cap_resp_msg_v01* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %198

23:                                               ; preds = %1
  %24 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %24, i32 0, i32 6
  %26 = load i32, i32* @wlfw_cap_resp_msg_v01_ei, align 4
  %27 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %28 = call i32 @qmi_txn_init(i32* %25, %struct.qmi_txn* %8, i32 %26, %struct.wlfw_cap_resp_msg_v01* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %194

32:                                               ; preds = %23
  %33 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %34 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %33, i32 0, i32 6
  %35 = load i32, i32* @QMI_WLFW_CAP_REQ_V01, align 4
  %36 = load i32, i32* @WLFW_CAP_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %37 = load i32, i32* @wlfw_cap_req_msg_v01_ei, align 4
  %38 = call i32 @qmi_send_request(i32* %34, i32* null, %struct.qmi_txn* %8, i32 %35, i32 %36, i32 %37, %struct.wlfw_cap_req_msg_v01* %5)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %8)
  %43 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ath10k_err(%struct.ath10k* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %194

46:                                               ; preds = %32
  %47 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %48 = load i32, i32* @HZ, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @qmi_txn_wait(%struct.qmi_txn* %8, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %194

54:                                               ; preds = %46
  %55 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %56 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %55, i32 0, i32 10
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %63 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %64 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %63, i32 0, i32 10
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ath10k_err(%struct.ath10k* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %194

70:                                               ; preds = %54
  %71 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %72 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %71, i32 0, i32 9
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %77 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %81 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %84 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %88 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  br label %90

90:                                               ; preds = %75, %70
  %91 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %92 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %97 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %101 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  br label %107

103:                                              ; preds = %90
  %104 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %105 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  store i32 255, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %95
  %108 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %109 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %114 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %118 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %107
  %121 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %122 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %127 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %131 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %133 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %136 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @strlcpy(i32 %134, i32 %138, i32 4)
  br label %140

140:                                              ; preds = %125, %120
  %141 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %142 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %147 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %150 = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, %struct.wlfw_cap_resp_msg_v01* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @MAX_BUILD_ID_LEN, align 4
  %153 = add nsw i32 %152, 1
  %154 = call i32 @strlcpy(i32 %148, i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %145, %140
  %156 = load i32, i32* @ATH10K_SNOC_FLAG_REGISTERED, align 4
  %157 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %7, align 8
  %158 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %157, i32 0, i32 0
  %159 = call i32 @test_bit(i32 %156, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %191, label %161

161:                                              ; preds = %155
  %162 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %163 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %164 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %168 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %172 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %176 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (%struct.ath10k*, i8*, i32, i32, i32, ...) @ath10k_info(%struct.ath10k* %162, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %170, i32 %174, i32 %178)
  %180 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %181 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %182 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %185 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %188 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (%struct.ath10k*, i8*, i32, i32, i32, ...) @ath10k_info(%struct.ath10k* %180, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %183, i32 %186, i32 %189)
  br label %191

191:                                              ; preds = %161, %155
  %192 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %193 = call i32 @kfree(%struct.wlfw_cap_resp_msg_v01* %192)
  store i32 0, i32* %2, align 4
  br label %198

194:                                              ; preds = %61, %53, %41, %31
  %195 = load %struct.wlfw_cap_resp_msg_v01*, %struct.wlfw_cap_resp_msg_v01** %4, align 8
  %196 = call i32 @kfree(%struct.wlfw_cap_resp_msg_v01* %195)
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %194, %191, %20
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #2

declare dso_local %struct.wlfw_cap_resp_msg_v01* @kzalloc(i32, i32) #2

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_cap_resp_msg_v01*) #2

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_cap_req_msg_v01*) #2

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #2

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @test_bit(i32, i32*) #2

declare dso_local i32 @ath10k_info(%struct.ath10k*, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @kfree(%struct.wlfw_cap_resp_msg_v01*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
