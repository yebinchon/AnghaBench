; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.c_ath10k_htt_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.c_ath10k_htt_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ath10k_htc_svc_conn_req = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ath10k_htc_svc_conn_resp = type { i32, i32, %struct.TYPE_4__ }

@ath10k_htt_htc_tx_complete = common dso_local global i32 0, align 4
@ath10k_htt_htc_t2h_msg_handler = common dso_local global i32 0, align 4
@ATH10K_HTC_SVC_ID_HTT_DATA_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htt_connect(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k_htc_svc_conn_req, align 4
  %5 = alloca %struct.ath10k_htc_svc_conn_resp, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %7 = bitcast %struct.ath10k_htc_svc_conn_req* %4 to %struct.ath10k_htc_svc_conn_resp*
  %8 = call i32 @memset(%struct.ath10k_htc_svc_conn_resp* %7, i32 0, i32 16)
  %9 = call i32 @memset(%struct.ath10k_htc_svc_conn_resp* %5, i32 0, i32 16)
  %10 = load i32, i32* @ath10k_htt_htc_tx_complete, align 4
  %11 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @ath10k_htt_htc_t2h_msg_handler, align 4
  %14 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ATH10K_HTC_SVC_ID_HTT_DATA_MSG, align 4
  %17 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %4, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast %struct.ath10k_htc_svc_conn_req* %4 to %struct.ath10k_htc_svc_conn_resp*
  %23 = call i32 @ath10k_htc_connect_service(i32* %21, %struct.ath10k_htc_svc_conn_resp* %22, %struct.ath10k_htc_svc_conn_resp* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.ath10k_htc_svc_conn_resp, %struct.ath10k_htc_svc_conn_resp* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %32 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.ath10k_htc_svc_conn_resp*, i32, i32) #1

declare dso_local i32 @ath10k_htc_connect_service(i32*, %struct.ath10k_htc_svc_conn_resp*, %struct.ath10k_htc_svc_conn_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
