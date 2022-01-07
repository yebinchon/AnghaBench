; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_host_cap_send_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_host_cap_send_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.wlfw_host_cap_resp_msg_v01 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wlfw_host_cap_req_msg_v01 = type { i32, i64 }
%struct.qmi_txn = type { i32 }

@wlfw_host_cap_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_HOST_CAP_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_HOST_CAP_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_host_cap_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to send host capability request: %d\0A\00", align 1
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"host capability request rejected: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"qmi host capability request completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*)* @ath10k_qmi_host_cap_send_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_host_cap_send_sync(%struct.ath10k_qmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_qmi*, align 8
  %4 = alloca %struct.wlfw_host_cap_resp_msg_v01, align 8
  %5 = alloca %struct.wlfw_host_cap_req_msg_v01, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.qmi_txn, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %3, align 8
  %9 = bitcast %struct.wlfw_host_cap_resp_msg_v01* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = bitcast %struct.wlfw_host_cap_req_msg_v01* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %11, i32 0, i32 1
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %6, align 8
  %14 = getelementptr inbounds %struct.wlfw_host_cap_req_msg_v01, %struct.wlfw_host_cap_req_msg_v01* %5, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.wlfw_host_cap_req_msg_v01, %struct.wlfw_host_cap_req_msg_v01* %5, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %16, i32 0, i32 0
  %18 = load i32, i32* @wlfw_host_cap_resp_msg_v01_ei, align 4
  %19 = call i32 @qmi_txn_init(i32* %17, %struct.qmi_txn* %7, i32 %18, %struct.wlfw_host_cap_resp_msg_v01* %4)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %63

23:                                               ; preds = %1
  %24 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %24, i32 0, i32 0
  %26 = load i32, i32* @QMI_WLFW_HOST_CAP_REQ_V01, align 4
  %27 = load i32, i32* @WLFW_HOST_CAP_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %28 = load i32, i32* @wlfw_host_cap_req_msg_v01_ei, align 4
  %29 = call i32 @qmi_send_request(i32* %25, i32* null, %struct.qmi_txn* %7, i32 %26, i32 %27, i32 %28, %struct.wlfw_host_cap_req_msg_v01* %5)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %7)
  %34 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ath10k_err(%struct.ath10k* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %63

37:                                               ; preds = %23
  %38 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i32 @qmi_txn_wait(%struct.qmi_txn* %7, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %63

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.wlfw_host_cap_resp_msg_v01, %struct.wlfw_host_cap_resp_msg_v01* %4, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %53 = getelementptr inbounds %struct.wlfw_host_cap_resp_msg_v01, %struct.wlfw_host_cap_resp_msg_v01* %4, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ath10k_err(%struct.ath10k* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %63

59:                                               ; preds = %45
  %60 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %61 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %62 = call i32 @ath10k_dbg(%struct.ath10k* %60, i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %65

63:                                               ; preds = %51, %44, %32, %22
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_host_cap_resp_msg_v01*) #2

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_host_cap_req_msg_v01*) #2

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
