; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_msa_ready_send_sync_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_msa_ready_send_sync_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.wlfw_msa_ready_resp_msg_v01 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wlfw_msa_ready_req_msg_v01 = type { i32 }
%struct.qmi_txn = type { i32 }

@wlfw_msa_ready_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_MSA_READY_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_MSA_READY_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_msa_ready_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to send msa mem ready request: %d\0A\00", align 1
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"msa ready request rejected: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"qmi msa mem ready request completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*)* @ath10k_qmi_msa_ready_send_sync_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_msa_ready_send_sync_msg(%struct.ath10k_qmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_qmi*, align 8
  %4 = alloca %struct.wlfw_msa_ready_resp_msg_v01, align 8
  %5 = alloca %struct.wlfw_msa_ready_req_msg_v01, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.qmi_txn, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %3, align 8
  %9 = bitcast %struct.wlfw_msa_ready_resp_msg_v01* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = bitcast %struct.wlfw_msa_ready_req_msg_v01* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %11, i32 0, i32 1
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %6, align 8
  %14 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %14, i32 0, i32 0
  %16 = load i32, i32* @wlfw_msa_ready_resp_msg_v01_ei, align 4
  %17 = call i32 @qmi_txn_init(i32* %15, %struct.qmi_txn* %7, i32 %16, %struct.wlfw_msa_ready_resp_msg_v01* %4)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %23 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %22, i32 0, i32 0
  %24 = load i32, i32* @QMI_WLFW_MSA_READY_REQ_V01, align 4
  %25 = load i32, i32* @WLFW_MSA_READY_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %26 = load i32, i32* @wlfw_msa_ready_req_msg_v01_ei, align 4
  %27 = call i32 @qmi_send_request(i32* %23, i32* null, %struct.qmi_txn* %7, i32 %24, i32 %25, i32 %26, %struct.wlfw_msa_ready_req_msg_v01* %5)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %7)
  %32 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ath10k_err(%struct.ath10k* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %61

35:                                               ; preds = %21
  %36 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 %36, %37
  %39 = call i32 @qmi_txn_wait(%struct.qmi_txn* %7, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %61

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.wlfw_msa_ready_resp_msg_v01, %struct.wlfw_msa_ready_resp_msg_v01* %4, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %51 = getelementptr inbounds %struct.wlfw_msa_ready_resp_msg_v01, %struct.wlfw_msa_ready_resp_msg_v01* %4, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ath10k_err(%struct.ath10k* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %59 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %60 = call i32 @ath10k_dbg(%struct.ath10k* %58, i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %63

61:                                               ; preds = %42, %30, %20
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_msa_ready_resp_msg_v01*) #2

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_msa_ready_req_msg_v01*) #2

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
