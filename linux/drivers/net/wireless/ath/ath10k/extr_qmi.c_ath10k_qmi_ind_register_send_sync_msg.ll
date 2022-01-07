; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_ind_register_send_sync_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_ind_register_send_sync_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i32, i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.wlfw_ind_register_resp_msg_v01 = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wlfw_ind_register_req_msg_v01 = type { i32, i32, i32, i32, i32, i32 }
%struct.qmi_txn = type { i32 }

@ATH10K_QMI_CLIENT_ID = common dso_local global i32 0, align 4
@wlfw_ind_register_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_IND_REGISTER_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_IND_REGISTER_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_ind_register_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to send indication registered request: %d\0A\00", align 1
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"indication request rejected: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QMI_WLFW_FW_READY_V01 = common dso_local global i32 0, align 4
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"qmi indication register request completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*)* @ath10k_qmi_ind_register_send_sync_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_ind_register_send_sync_msg(%struct.ath10k_qmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_qmi*, align 8
  %4 = alloca %struct.wlfw_ind_register_resp_msg_v01, align 8
  %5 = alloca %struct.wlfw_ind_register_req_msg_v01, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.qmi_txn, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %3, align 8
  %9 = bitcast %struct.wlfw_ind_register_resp_msg_v01* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = bitcast %struct.wlfw_ind_register_req_msg_v01* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 24, i1 false)
  %11 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %11, i32 0, i32 2
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %6, align 8
  %14 = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, %struct.wlfw_ind_register_req_msg_v01* %5, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @ATH10K_QMI_CLIENT_ID, align 4
  %16 = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, %struct.wlfw_ind_register_req_msg_v01* %5, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, %struct.wlfw_ind_register_req_msg_v01* %5, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, %struct.wlfw_ind_register_req_msg_v01* %5, i32 0, i32 2
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, %struct.wlfw_ind_register_req_msg_v01* %5, i32 0, i32 3
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, %struct.wlfw_ind_register_req_msg_v01* %5, i32 0, i32 4
  store i32 1, i32* %20, align 4
  %21 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %21, i32 0, i32 1
  %23 = load i32, i32* @wlfw_ind_register_resp_msg_v01_ei, align 4
  %24 = call i32 @qmi_txn_init(i32* %22, %struct.qmi_txn* %7, i32 %23, %struct.wlfw_ind_register_resp_msg_v01* %4)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %82

28:                                               ; preds = %1
  %29 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %30 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %29, i32 0, i32 1
  %31 = load i32, i32* @QMI_WLFW_IND_REGISTER_REQ_V01, align 4
  %32 = load i32, i32* @WLFW_IND_REGISTER_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %33 = load i32, i32* @wlfw_ind_register_req_msg_v01_ei, align 4
  %34 = call i32 @qmi_send_request(i32* %30, i32* null, %struct.qmi_txn* %7, i32 %31, i32 %32, i32 %33, %struct.wlfw_ind_register_req_msg_v01* %5)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %7)
  %39 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ath10k_err(%struct.ath10k* %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %82

42:                                               ; preds = %28
  %43 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %43, %44
  %46 = call i32 @qmi_txn_wait(%struct.qmi_txn* %7, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %82

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.wlfw_ind_register_resp_msg_v01, %struct.wlfw_ind_register_resp_msg_v01* %4, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %58 = getelementptr inbounds %struct.wlfw_ind_register_resp_msg_v01, %struct.wlfw_ind_register_resp_msg_v01* %4, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ath10k_err(%struct.ath10k* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %82

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.wlfw_ind_register_resp_msg_v01, %struct.wlfw_ind_register_resp_msg_v01* %4, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.wlfw_ind_register_resp_msg_v01, %struct.wlfw_ind_register_resp_msg_v01* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @QMI_WLFW_FW_READY_V01, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %76 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %64
  %79 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %80 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %81 = call i32 @ath10k_dbg(%struct.ath10k* %79, i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %84

82:                                               ; preds = %56, %49, %37, %27
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_ind_register_resp_msg_v01*) #2

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_ind_register_req_msg_v01*) #2

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #2

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
