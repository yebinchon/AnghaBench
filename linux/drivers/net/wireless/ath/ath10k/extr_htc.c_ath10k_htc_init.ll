; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htc }
%struct.ath10k_htc = type { i32, %struct.ath10k*, i32 }
%struct.ath10k_htc_svc_conn_req = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath10k_htc_svc_conn_resp = type { i32, i32, %struct.TYPE_2__ }

@ath10k_htc_control_tx_complete = common dso_local global i32 0, align 4
@ath10k_htc_control_rx_complete = common dso_local global i32 0, align 4
@ATH10K_NUM_CONTROL_TX_BUFFERS = common dso_local global i32 0, align 4
@ATH10K_HTC_SVC_ID_RSVD_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not connect to htc service (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htc_init(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_htc*, align 8
  %6 = alloca %struct.ath10k_htc_svc_conn_req, align 4
  %7 = alloca %struct.ath10k_htc_svc_conn_resp, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  store %struct.ath10k_htc* %9, %struct.ath10k_htc** %5, align 8
  %10 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %11 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %14 = call i32 @ath10k_htc_reset_endpoint_states(%struct.ath10k_htc* %13)
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %17 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %16, i32 0, i32 1
  store %struct.ath10k* %15, %struct.ath10k** %17, align 8
  %18 = bitcast %struct.ath10k_htc_svc_conn_req* %6 to %struct.ath10k_htc_svc_conn_resp*
  %19 = call i32 @memset(%struct.ath10k_htc_svc_conn_resp* %18, i32 0, i32 16)
  %20 = call i32 @memset(%struct.ath10k_htc_svc_conn_resp* %7, i32 0, i32 16)
  %21 = load i32, i32* @ath10k_htc_control_tx_complete, align 4
  %22 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %6, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ath10k_htc_control_rx_complete, align 4
  %25 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %6, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ATH10K_NUM_CONTROL_TX_BUFFERS, align 4
  %28 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @ATH10K_HTC_SVC_ID_RSVD_CTRL, align 4
  %30 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %32 = bitcast %struct.ath10k_htc_svc_conn_req* %6 to %struct.ath10k_htc_svc_conn_resp*
  %33 = call i32 @ath10k_htc_connect_service(%struct.ath10k_htc* %31, %struct.ath10k_htc_svc_conn_resp* %32, %struct.ath10k_htc_svc_conn_resp* %7)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ath10k_err(%struct.ath10k* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %43 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %42, i32 0, i32 0
  %44 = call i32 @init_completion(i32* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ath10k_htc_reset_endpoint_states(%struct.ath10k_htc*) #1

declare dso_local i32 @memset(%struct.ath10k_htc_svc_conn_resp*, i32, i32) #1

declare dso_local i32 @ath10k_htc_connect_service(%struct.ath10k_htc*, %struct.ath10k_htc_svc_conn_resp*, %struct.ath10k_htc_svc_conn_resp*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
