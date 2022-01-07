; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.ath10k_htc_svc_conn_resp }
%struct.ath10k_htc_svc_conn_resp = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ath10k_htc_svc_conn_req = type { i32, i32, %struct.TYPE_3__ }

@ath10k_wmi_htc_tx_complete = common dso_local global i32 0, align 4
@ath10k_wmi_process_rx = common dso_local global i32 0, align 4
@ath10k_wmi_op_ep_tx_credits = common dso_local global i32 0, align 4
@ATH10K_HTC_SVC_ID_WMI_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"failed to connect to WMI CONTROL service status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_connect(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_htc_svc_conn_req, align 4
  %6 = alloca %struct.ath10k_htc_svc_conn_resp, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = call i32 @memset(%struct.ath10k_htc_svc_conn_resp* %9, i32 0, i32 20)
  %11 = bitcast %struct.ath10k_htc_svc_conn_req* %5 to %struct.ath10k_htc_svc_conn_resp*
  %12 = call i32 @memset(%struct.ath10k_htc_svc_conn_resp* %11, i32 0, i32 20)
  %13 = call i32 @memset(%struct.ath10k_htc_svc_conn_resp* %6, i32 0, i32 20)
  %14 = load i32, i32* @ath10k_wmi_htc_tx_complete, align 4
  %15 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %5, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @ath10k_wmi_process_rx, align 4
  %18 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %5, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ath10k_wmi_op_ep_tx_credits, align 4
  %21 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %5, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ATH10K_HTC_SVC_ID_WMI_CONTROL, align 4
  %24 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %5, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 1
  %27 = bitcast %struct.ath10k_htc_svc_conn_req* %5 to %struct.ath10k_htc_svc_conn_resp*
  %28 = call i32 @ath10k_htc_connect_service(i32* %26, %struct.ath10k_htc_svc_conn_resp* %27, %struct.ath10k_htc_svc_conn_resp* %6)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ath10k_warn(%struct.ath10k* %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %42

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.ath10k_htc_svc_conn_resp, %struct.ath10k_htc_svc_conn_resp* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.ath10k_htc_svc_conn_resp*, i32, i32) #1

declare dso_local i32 @ath10k_htc_connect_service(i32*, %struct.ath10k_htc_svc_conn_resp*, %struct.ath10k_htc_svc_conn_resp*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
