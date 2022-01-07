; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_bdf_dnld_send_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_bdf_dnld_send_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i32, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.wlfw_bdf_download_resp_msg_v01 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.wlfw_bdf_download_req_msg_v01 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.qmi_txn = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QMI_WLFW_MAX_DATA_SIZE_V01 = common dso_local global i32 0, align 4
@wlfw_bdf_download_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_BDF_DOWNLOAD_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_BDF_DOWNLOAD_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_bdf_download_req_msg_v01_ei = common dso_local global i32 0, align 4
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"failed to download board data file: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"qmi bdf download request completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*)* @ath10k_qmi_bdf_dnld_send_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_bdf_dnld_send_sync(%struct.ath10k_qmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_qmi*, align 8
  %4 = alloca %struct.wlfw_bdf_download_resp_msg_v01, align 8
  %5 = alloca %struct.wlfw_bdf_download_req_msg_v01*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qmi_txn, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %3, align 8
  %11 = bitcast %struct.wlfw_bdf_download_resp_msg_v01* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %12, i32 0, i32 1
  %14 = load %struct.ath10k*, %struct.ath10k** %13, align 8
  store %struct.ath10k* %14, %struct.ath10k** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wlfw_bdf_download_req_msg_v01* @kzalloc(i32 56, i32 %15)
  store %struct.wlfw_bdf_download_req_msg_v01* %16, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %17 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %18 = icmp ne %struct.wlfw_bdf_download_req_msg_v01* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %144

22:                                               ; preds = %1
  %23 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %118, %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %134

34:                                               ; preds = %31
  %35 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %36 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %38 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %40 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %39, i32 0, i32 11
  store i64 0, i64* %40, align 8
  %41 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %42 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  %43 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %48 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %50 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %49, i32 0, i32 4
  store i32 1, i32* %50, align 8
  %51 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %52 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %51, i32 0, i32 5
  store i32 1, i32* %52, align 4
  %53 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %54 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %53, i32 0, i32 6
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @QMI_WLFW_MAX_DATA_SIZE_V01, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %34
  %59 = load i32, i32* @QMI_WLFW_MAX_DATA_SIZE_V01, align 4
  %60 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %61 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  br label %68

62:                                               ; preds = %34
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %65 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %67 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %66, i32 0, i32 8
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %58
  %69 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %70 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %74 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i32 %71, i32* %72, i32 %75)
  %77 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %78 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %77, i32 0, i32 0
  %79 = load i32, i32* @wlfw_bdf_download_resp_msg_v01_ei, align 4
  %80 = call i32 @qmi_txn_init(i32* %78, %struct.qmi_txn* %8, i32 %79, %struct.wlfw_bdf_download_resp_msg_v01* %4)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %140

84:                                               ; preds = %68
  %85 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %86 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %85, i32 0, i32 0
  %87 = load i32, i32* @QMI_WLFW_BDF_DOWNLOAD_REQ_V01, align 4
  %88 = load i32, i32* @WLFW_BDF_DOWNLOAD_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %89 = load i32, i32* @wlfw_bdf_download_req_msg_v01_ei, align 4
  %90 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %91 = call i32 @qmi_send_request(i32* %86, i32* null, %struct.qmi_txn* %8, i32 %87, i32 %88, i32 %89, %struct.wlfw_bdf_download_req_msg_v01* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %8)
  br label %140

96:                                               ; preds = %84
  %97 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 %97, %98
  %100 = call i32 @qmi_txn_wait(%struct.qmi_txn* %8, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %140

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.wlfw_bdf_download_resp_msg_v01, %struct.wlfw_bdf_download_resp_msg_v01* %4, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %112 = getelementptr inbounds %struct.wlfw_bdf_download_resp_msg_v01, %struct.wlfw_bdf_download_resp_msg_v01* %4, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ath10k_err(%struct.ath10k* %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %10, align 4
  br label %140

118:                                              ; preds = %104
  %119 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %120 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %125 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %9, align 8
  %130 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %131 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, %struct.wlfw_bdf_download_req_msg_v01* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %31

134:                                              ; preds = %31
  %135 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %136 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %137 = call i32 @ath10k_dbg(%struct.ath10k* %135, i32 %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %138 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %139 = call i32 @kfree(%struct.wlfw_bdf_download_req_msg_v01* %138)
  store i32 0, i32* %2, align 4
  br label %144

140:                                              ; preds = %110, %103, %94, %83
  %141 = load %struct.wlfw_bdf_download_req_msg_v01*, %struct.wlfw_bdf_download_req_msg_v01** %5, align 8
  %142 = call i32 @kfree(%struct.wlfw_bdf_download_req_msg_v01* %141)
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %140, %134, %19
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.wlfw_bdf_download_req_msg_v01* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_bdf_download_resp_msg_v01*) #2

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_bdf_download_req_msg_v01*) #2

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #2

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #2

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #2

declare dso_local i32 @kfree(%struct.wlfw_bdf_download_req_msg_v01*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
