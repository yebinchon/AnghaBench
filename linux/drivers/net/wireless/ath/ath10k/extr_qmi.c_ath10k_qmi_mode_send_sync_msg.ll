; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_mode_send_sync_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_mode_send_sync_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.ath10k_qmi* }
%struct.ath10k_qmi = type { i32 }
%struct.wlfw_wlan_mode_resp_msg_v01 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wlfw_wlan_mode_req_msg_v01 = type { i32, i32, i64 }
%struct.qmi_txn = type { i32 }

@wlfw_wlan_mode_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_WLAN_MODE_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_WLAN_MODE_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_wlan_mode_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to send wlan mode %d request: %d\0A\00", align 1
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"more request rejected: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"qmi wlan mode req completed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_qmi_mode_send_sync_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_mode_send_sync_msg(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k_snoc*, align 8
  %7 = alloca %struct.ath10k_qmi*, align 8
  %8 = alloca %struct.wlfw_wlan_mode_resp_msg_v01, align 8
  %9 = alloca %struct.wlfw_wlan_mode_req_msg_v01, align 8
  %10 = alloca %struct.qmi_txn, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %12)
  store %struct.ath10k_snoc* %13, %struct.ath10k_snoc** %6, align 8
  %14 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %15 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %14, i32 0, i32 0
  %16 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %15, align 8
  store %struct.ath10k_qmi* %16, %struct.ath10k_qmi** %7, align 8
  %17 = bitcast %struct.wlfw_wlan_mode_resp_msg_v01* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = bitcast %struct.wlfw_wlan_mode_req_msg_v01* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %20 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %19, i32 0, i32 0
  %21 = load i32, i32* @wlfw_wlan_mode_resp_msg_v01_ei, align 4
  %22 = call i32 @qmi_txn_init(i32* %20, %struct.qmi_txn* %10, i32 %21, %struct.wlfw_wlan_mode_resp_msg_v01* %8)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %72

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.wlfw_wlan_mode_req_msg_v01, %struct.wlfw_wlan_mode_req_msg_v01* %9, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.wlfw_wlan_mode_req_msg_v01, %struct.wlfw_wlan_mode_req_msg_v01* %9, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.wlfw_wlan_mode_req_msg_v01, %struct.wlfw_wlan_mode_req_msg_v01* %9, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %32 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %31, i32 0, i32 0
  %33 = load i32, i32* @QMI_WLFW_WLAN_MODE_REQ_V01, align 4
  %34 = load i32, i32* @WLFW_WLAN_MODE_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %35 = load i32, i32* @wlfw_wlan_mode_req_msg_v01_ei, align 4
  %36 = call i32 @qmi_send_request(i32* %32, i32* null, %struct.qmi_txn* %10, i32 %33, i32 %34, i32 %35, %struct.wlfw_wlan_mode_req_msg_v01* %9)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %10)
  %41 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %72

45:                                               ; preds = %26
  %46 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 %46, %47
  %49 = call i32 @qmi_txn_wait(%struct.qmi_txn* %10, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %72

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.wlfw_wlan_mode_resp_msg_v01, %struct.wlfw_wlan_mode_resp_msg_v01* %8, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %61 = getelementptr inbounds %struct.wlfw_wlan_mode_resp_msg_v01, %struct.wlfw_wlan_mode_resp_msg_v01* %8, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %72

67:                                               ; preds = %53
  %68 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %69 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @ath10k_dbg(%struct.ath10k* %68, i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  store i32 0, i32* %3, align 4
  br label %74

72:                                               ; preds = %59, %52, %39, %25
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_wlan_mode_resp_msg_v01*) #1

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_wlan_mode_req_msg_v01*) #1

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
