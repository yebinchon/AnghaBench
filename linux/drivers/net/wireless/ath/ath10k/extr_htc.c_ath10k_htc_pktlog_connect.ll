; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_pktlog_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_pktlog_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_htc_svc_conn_resp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32* }
%struct.ath10k_htc_svc_conn_req = type { i32, %struct.TYPE_2__ }

@ath10k_htc_pktlog_process_rx = common dso_local global i32 0, align 4
@ATH10K_HTC_SVC_ID_HTT_LOG_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to connect to PKTLOG service: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_htc_pktlog_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htc_pktlog_connect(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_htc_svc_conn_resp, align 8
  %5 = alloca %struct.ath10k_htc_svc_conn_req, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = bitcast %struct.ath10k_htc_svc_conn_req* %5 to %struct.ath10k_htc_svc_conn_resp*
  %8 = call i32 @memset(%struct.ath10k_htc_svc_conn_resp* %7, i32 0, i32 32)
  %9 = call i32 @memset(%struct.ath10k_htc_svc_conn_resp* %4, i32 0, i32 32)
  %10 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @ath10k_htc_pktlog_process_rx, align 4
  %13 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @ATH10K_HTC_SVC_ID_HTT_LOG_MSG, align 4
  %18 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, %struct.ath10k_htc_svc_conn_req* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = bitcast %struct.ath10k_htc_svc_conn_req* %5 to %struct.ath10k_htc_svc_conn_resp*
  %22 = call i32 @ath10k_htc_connect_service(i32* %20, %struct.ath10k_htc_svc_conn_resp* %21, %struct.ath10k_htc_svc_conn_resp* %4)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %2, align 4
  ret i32 %32
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
