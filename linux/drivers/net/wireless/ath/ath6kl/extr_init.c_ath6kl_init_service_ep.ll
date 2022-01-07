; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_service_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_service_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.htc_service_connect_req = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ath6kl_tx_complete = common dso_local global i32 0, align 4
@ath6kl_rx = common dso_local global i32 0, align 4
@ath6kl_rx_refill = common dso_local global i32 0, align 4
@ath6kl_tx_queue_full = common dso_local global i32 0, align 4
@MAX_DEFAULT_SEND_QUEUE_DEPTH = common dso_local global i32 0, align 4
@ATH6KL_MAX_RX_BUFFERS = common dso_local global i32 0, align 4
@WMI_CONTROL_SVC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"WMI CONTROL\00", align 1
@EIO = common dso_local global i32 0, align 4
@HTC_FLGS_TX_BNDL_PAD_EN = common dso_local global i32 0, align 4
@WMI_MAX_TX_DATA_FRAME_LENGTH = common dso_local global i32 0, align 4
@ATH6KL_BUFFER_SIZE = common dso_local global i32 0, align 4
@ath6kl_alloc_amsdu_rxbuf = common dso_local global i32 0, align 4
@HTC_CONN_FLGS_REDUCE_CRED_DRIB = common dso_local global i32 0, align 4
@HTC_CONN_FLGS_THRESH_MASK = common dso_local global i32 0, align 4
@HTC_CONN_FLGS_THRESH_LVL_HALF = common dso_local global i32 0, align 4
@WMI_DATA_BE_SVC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"WMI DATA BE\00", align 1
@WMI_DATA_BK_SVC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"WMI DATA BK\00", align 1
@WMI_DATA_VI_SVC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"WMI DATA VI\00", align 1
@WMI_DATA_VO_SVC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"WMI DATA VO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_init_service_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_init_service_ep(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.htc_service_connect_req, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %5 = call i32 @memset(%struct.htc_service_connect_req* %4, i32 0, i32 48)
  %6 = load i32, i32* @ath6kl_tx_complete, align 4
  %7 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ath6kl_rx, align 4
  %10 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ath6kl_rx_refill, align 4
  %13 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ath6kl_tx_queue_full, align 4
  %16 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MAX_DEFAULT_SEND_QUEUE_DEPTH, align 4
  %19 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 5
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @ATH6KL_MAX_RX_BUFFERS, align 4
  %21 = sdiv i32 %20, 4
  %22 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %1
  %34 = load i32, i32* @WMI_CONTROL_SVC, align 4
  %35 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %37 = call i64 @ath6kl_connectservice(%struct.ath6kl* %36, %struct.htc_service_connect_req* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %104

42:                                               ; preds = %33
  %43 = load i32, i32* @HTC_FLGS_TX_BNDL_PAD_EN, align 4
  %44 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @WMI_MAX_TX_DATA_FRAME_LENGTH, align 4
  %48 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @ATH6KL_BUFFER_SIZE, align 4
  %50 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ath6kl_alloc_amsdu_rxbuf, align 4
  %53 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @HTC_CONN_FLGS_REDUCE_CRED_DRIB, align 4
  %56 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @HTC_CONN_FLGS_THRESH_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @HTC_CONN_FLGS_THRESH_LVL_HALF, align 4
  %65 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @WMI_DATA_BE_SVC, align 4
  %69 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %71 = call i64 @ath6kl_connectservice(%struct.ath6kl* %70, %struct.htc_service_connect_req* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %42
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %104

76:                                               ; preds = %42
  %77 = load i32, i32* @WMI_DATA_BK_SVC, align 4
  %78 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %80 = call i64 @ath6kl_connectservice(%struct.ath6kl* %79, %struct.htc_service_connect_req* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %104

85:                                               ; preds = %76
  %86 = load i32, i32* @WMI_DATA_VI_SVC, align 4
  %87 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %89 = call i64 @ath6kl_connectservice(%struct.ath6kl* %88, %struct.htc_service_connect_req* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %104

94:                                               ; preds = %85
  %95 = load i32, i32* @WMI_DATA_VO_SVC, align 4
  %96 = getelementptr inbounds %struct.htc_service_connect_req, %struct.htc_service_connect_req* %4, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %98 = call i64 @ath6kl_connectservice(%struct.ath6kl* %97, %struct.htc_service_connect_req* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %104

103:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %100, %91, %82, %73, %39
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @memset(%struct.htc_service_connect_req*, i32, i32) #1

declare dso_local i64 @ath6kl_connectservice(%struct.ath6kl*, %struct.htc_service_connect_req*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
