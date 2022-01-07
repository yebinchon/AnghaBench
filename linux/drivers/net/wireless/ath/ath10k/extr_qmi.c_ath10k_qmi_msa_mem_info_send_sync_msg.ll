; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_msa_mem_info_send_sync_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_msa_mem_info_send_sync_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_qmi = type { i32, %struct.TYPE_6__*, i32, i32, i32, %struct.ath10k* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ath10k = type { i32 }
%struct.wlfw_msa_info_resp_msg_v01 = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.wlfw_msa_info_req_msg_v01 = type { i32, i32 }
%struct.qmi_txn = type { i32 }

@wlfw_msa_info_resp_msg_v01_ei = common dso_local global i32 0, align 4
@QMI_WLFW_MSA_INFO_REQ_V01 = common dso_local global i32 0, align 4
@WLFW_MSA_INFO_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@wlfw_msa_info_req_msg_v01_ei = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to send msa mem info req: %d\0A\00", align 1
@ATH10K_QMI_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QMI_RESULT_SUCCESS_V01 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"msa info req rejected: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QMI_WLFW_MAX_MEM_REG_V01 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"invalid memory region length received: %d\0A\00", align 1
@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"qmi msa mem region %d addr 0x%pa size 0x%x flag 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"qmi msa mem info request completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_qmi*)* @ath10k_qmi_msa_mem_info_send_sync_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_qmi_msa_mem_info_send_sync_msg(%struct.ath10k_qmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_qmi*, align 8
  %4 = alloca %struct.wlfw_msa_info_resp_msg_v01, align 8
  %5 = alloca %struct.wlfw_msa_info_req_msg_v01, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.qmi_txn, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k_qmi* %0, %struct.ath10k_qmi** %3, align 8
  %10 = bitcast %struct.wlfw_msa_info_resp_msg_v01* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = bitcast %struct.wlfw_msa_info_req_msg_v01* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %12, i32 0, i32 5
  %14 = load %struct.ath10k*, %struct.ath10k** %13, align 8
  store %struct.ath10k* %14, %struct.ath10k** %6, align 8
  %15 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %16 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.wlfw_msa_info_req_msg_v01, %struct.wlfw_msa_info_req_msg_v01* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.wlfw_msa_info_req_msg_v01, %struct.wlfw_msa_info_req_msg_v01* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %24 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %23, i32 0, i32 2
  %25 = load i32, i32* @wlfw_msa_info_resp_msg_v01_ei, align 4
  %26 = call i32 @qmi_txn_init(i32* %24, %struct.qmi_txn* %7, i32 %25, %struct.wlfw_msa_info_resp_msg_v01* %4)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %165

30:                                               ; preds = %1
  %31 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %32 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %31, i32 0, i32 2
  %33 = load i32, i32* @QMI_WLFW_MSA_INFO_REQ_V01, align 4
  %34 = load i32, i32* @WLFW_MSA_INFO_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %35 = load i32, i32* @wlfw_msa_info_req_msg_v01_ei, align 4
  %36 = call i32 @qmi_send_request(i32* %32, i32* null, %struct.qmi_txn* %7, i32 %33, i32 %34, i32 %35, %struct.wlfw_msa_info_req_msg_v01* %5)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = call i32 @qmi_txn_cancel(%struct.qmi_txn* %7)
  %41 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ath10k_err(%struct.ath10k* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %165

44:                                               ; preds = %30
  %45 = load i32, i32* @ATH10K_QMI_TIMEOUT, align 4
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 %45, %46
  %48 = call i32 @qmi_txn_wait(%struct.qmi_txn* %7, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %165

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, %struct.wlfw_msa_info_resp_msg_v01* %4, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @QMI_RESULT_SUCCESS_V01, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %60 = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, %struct.wlfw_msa_info_resp_msg_v01* %4, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ath10k_err(%struct.ath10k* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %165

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, %struct.wlfw_msa_info_resp_msg_v01* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @QMI_WLFW_MAX_MEM_REG_V01, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %73 = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, %struct.wlfw_msa_info_resp_msg_v01* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ath10k_err(%struct.ath10k* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %165

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, %struct.wlfw_msa_info_resp_msg_v01* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %82 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %158, %78
  %84 = load i32, i32* %9, align 4
  %85 = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, %struct.wlfw_msa_info_resp_msg_v01* %4, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %161

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, %struct.wlfw_msa_info_resp_msg_v01* %4, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %97 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %95, i32* %102, align 4
  %103 = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, %struct.wlfw_msa_info_resp_msg_v01* %4, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %111 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i32 %109, i32* %116, align 4
  %117 = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, %struct.wlfw_msa_info_resp_msg_v01* %4, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %125 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 %123, i32* %130, align 4
  %131 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %132 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %135 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %134, i32 0, i32 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %142 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %3, align 8
  %150 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %131, i32 %132, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32* %140, i32 %148, i32 %156)
  br label %158

158:                                              ; preds = %88
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %83

161:                                              ; preds = %83
  %162 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %163 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %164 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %162, i32 %163, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %167

165:                                              ; preds = %71, %58, %51, %39, %29
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %165, %161
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qmi_txn_init(i32*, %struct.qmi_txn*, i32, %struct.wlfw_msa_info_resp_msg_v01*) #2

declare dso_local i32 @qmi_send_request(i32*, i32*, %struct.qmi_txn*, i32, i32, i32, %struct.wlfw_msa_info_req_msg_v01*) #2

declare dso_local i32 @qmi_txn_cancel(%struct.qmi_txn*) #2

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @qmi_txn_wait(%struct.qmi_txn*, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
