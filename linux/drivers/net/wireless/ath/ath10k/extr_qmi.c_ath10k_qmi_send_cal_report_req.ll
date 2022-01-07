; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_send_cal_report_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_send_cal_report_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i32, %struct.TYPE_3__*, %struct.ath10k* }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.ath10k = type { i32 }
%struct.wlfw_cal_report_resp_msg_v01 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.wlfw_cal_report_req_msg_v01 = type { i32, i32* }
%struct.qmi_txn = type { i32 }

@wlfw_cal_report_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_MAX_NUM_CAL_V01 = common dso_local global i32 0, align 4
@QMI_WLFW_CAL_REPORT_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_CAL_REPORT_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_cal_report_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to send calibration request: %d\0A\00", align 1
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"calibration request rejected: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"qmi cal report request completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*)* @ath10k_qmi_send_cal_report_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_send_cal_report_req(%struct.ath10k_qmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_qmi*, align 8
  %4 = alloca %struct.wlfw_cal_report_resp_msg_v01, align 8
  %5 = alloca %struct.wlfw_cal_report_req_msg_v01, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.qmi_txn, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %3, align 8
  %11 = bitcast %struct.wlfw_cal_report_resp_msg_v01* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = bitcast %struct.wlfw_cal_report_req_msg_v01* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %13, i32 0, i32 2
  %15 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  store %struct.ath10k* %15, %struct.ath10k** %6, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %16, i32 0, i32 0
  %18 = load i32, i32* @wlfw_cal_report_resp_msg_v01_ei, align 4
  %19 = call i32 @qmi_txn_init(i32* %17, %struct.qmi_txn* %7, i32 %18, %struct.wlfw_cal_report_resp_msg_v01* %4)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %110

23:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %65, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @QMI_WLFW_MAX_NUM_CAL_V01, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %30 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %28
  %39 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %40 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %38
  %49 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %50 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.wlfw_cal_report_req_msg_v01, %struct.wlfw_cal_report_req_msg_v01* %5, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %48, %38, %28
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %24

68:                                               ; preds = %24
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.wlfw_cal_report_req_msg_v01, %struct.wlfw_cal_report_req_msg_v01* %5, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %72 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %71, i32 0, i32 0
  %73 = load i32, i32* @QMI_WLFW_CAL_REPORT_REQ_V01, align 4
  %74 = load i32, i32* @WLFW_CAL_REPORT_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %75 = load i32, i32* @wlfw_cal_report_req_msg_v01_ei, align 4
  %76 = call i32 @qmi_send_request(i32* %72, i32* null, %struct.qmi_txn* %7, i32 %73, i32 %74, i32 %75, %struct.wlfw_cal_report_req_msg_v01* %5)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %7)
  %81 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ath10k_err(%struct.ath10k* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %110

84:                                               ; preds = %68
  %85 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %86 = load i32, i32* @HZ, align 4
  %87 = mul nsw i32 %85, %86
  %88 = call i32 @qmi_txn_wait(%struct.qmi_txn* %7, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %110

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.wlfw_cal_report_resp_msg_v01, %struct.wlfw_cal_report_resp_msg_v01* %4, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %100 = getelementptr inbounds %struct.wlfw_cal_report_resp_msg_v01, %struct.wlfw_cal_report_resp_msg_v01* %4, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ath10k_err(%struct.ath10k* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %10, align 4
  br label %110

106:                                              ; preds = %92
  %107 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %108 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %109 = call i32 @ath10k_dbg(%struct.ath10k* %107, i32 %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %112

110:                                              ; preds = %98, %91, %79, %22
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %106
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_cal_report_resp_msg_v01*) #2

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_cal_report_req_msg_v01*) #2

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
