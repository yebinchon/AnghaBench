; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_set_fw_log_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_set_fw_log_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.ath10k_qmi* }
%struct.ath10k_qmi = type { i32 }
%struct.wlfw_ini_resp_msg_v01 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wlfw_ini_req_msg_v01 = type { i32, i32 }
%struct.qmi_txn = type { i32 }

@wlfw_ini_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_INI_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_INI_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_ini_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fail to send fw log reqest: %d\0A\00", align 1
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"fw log request rejectedr: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"qmi fw log request completed, mode: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_qmi_set_fw_log_mode(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k_snoc*, align 8
  %7 = alloca %struct.wlfw_ini_resp_msg_v01, align 8
  %8 = alloca %struct.ath10k_qmi*, align 8
  %9 = alloca %struct.wlfw_ini_req_msg_v01, align 4
  %10 = alloca %struct.qmi_txn, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %12)
  store %struct.ath10k_snoc* %13, %struct.ath10k_snoc** %6, align 8
  %14 = bitcast %struct.wlfw_ini_resp_msg_v01* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %16 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %15, i32 0, i32 0
  %17 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %16, align 8
  store %struct.ath10k_qmi* %17, %struct.ath10k_qmi** %8, align 8
  %18 = bitcast %struct.wlfw_ini_req_msg_v01* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = getelementptr inbounds %struct.wlfw_ini_req_msg_v01, %struct.wlfw_ini_req_msg_v01* %9, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.wlfw_ini_req_msg_v01, %struct.wlfw_ini_req_msg_v01* %9, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %8, align 8
  %23 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %22, i32 0, i32 0
  %24 = load i32, i32* @wlfw_ini_resp_msg_v01_ei, align 4
  %25 = call i32 @qmi_txn_init(i32* %23, %struct.qmi_txn* %10, i32 %24, %struct.wlfw_ini_resp_msg_v01* %7)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %70

29:                                               ; preds = %2
  %30 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %8, align 8
  %31 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %30, i32 0, i32 0
  %32 = load i32, i32* @QMI_WLFW_INI_REQ_V01, align 4
  %33 = load i32, i32* @WLFW_INI_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %34 = load i32, i32* @wlfw_ini_req_msg_v01_ei, align 4
  %35 = call i32 @qmi_send_request(i32* %31, i32* null, %struct.qmi_txn* %10, i32 %32, i32 %33, i32 %34, %struct.wlfw_ini_req_msg_v01* %9)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %10)
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @ath10k_err(%struct.ath10k* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %70

43:                                               ; preds = %29
  %44 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i32 @qmi_txn_wait(%struct.qmi_txn* %10, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %70

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.wlfw_ini_resp_msg_v01, %struct.wlfw_ini_resp_msg_v01* %7, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %59 = getelementptr inbounds %struct.wlfw_ini_resp_msg_v01, %struct.wlfw_ini_resp_msg_v01* %7, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ath10k_err(%struct.ath10k* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %11, align 4
  br label %70

65:                                               ; preds = %51
  %66 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %67 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @ath10k_dbg(%struct.ath10k* %66, i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  store i32 0, i32* %3, align 4
  br label %72

70:                                               ; preds = %57, %50, %38, %28
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_ini_resp_msg_v01*) #1

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_ini_req_msg_v01*) #1

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
