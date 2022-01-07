; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_error_check_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_error_check_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wil_net_stats = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"L2 RX error, l2_rx_status=0x%x\0A\00", align 1
@WIL_RX_EDMA_ERROR_MIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"L2 MIC/KEY error, dropping packet\0A\00", align 1
@WIL_RX_EDMA_ERROR_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"L2 KEY error, dropping packet\0A\00", align 1
@WIL_RX_EDMA_ERROR_REPLAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"L2 REPLAY error, dropping packet\0A\00", align 1
@WIL_RX_EDMA_ERROR_AMSDU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"L2 AMSDU error, dropping packet\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.sk_buff*, %struct.wil_net_stats*)* @wil_rx_error_check_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_rx_error_check_edma(%struct.wil6210_priv* %0, %struct.sk_buff* %1, %struct.wil_net_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wil_net_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wil_net_stats* %2, %struct.wil_net_stats** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i8* @wil_skb_rxstatus(%struct.sk_buff* %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i32 @wil_rx_status_get_l2_rx_status(i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %3
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @wil_dbg_txrx(%struct.wil6210_priv* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @WIL_RX_EDMA_ERROR_MIC, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %25 = call i32 @wil_err_ratelimited(%struct.wil6210_priv* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.wil_net_stats*, %struct.wil_net_stats** %7, align 8
  %27 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %16
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @WIL_RX_EDMA_ERROR_KEY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %36 = call i32 @wil_err_ratelimited(%struct.wil6210_priv* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.wil_net_stats*, %struct.wil_net_stats** %7, align 8
  %38 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @WIL_RX_EDMA_ERROR_REPLAY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %47 = call i32 @wil_err_ratelimited(%struct.wil6210_priv* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.wil_net_stats*, %struct.wil_net_stats** %7, align 8
  %49 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @WIL_RX_EDMA_ERROR_AMSDU, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %58 = call i32 @wil_err_ratelimited(%struct.wil6210_priv* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.wil_net_stats*, %struct.wil_net_stats** %7, align 8
  %60 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i32, i32* @EFAULT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %72

66:                                               ; preds = %3
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.wil_net_stats*, %struct.wil_net_stats** %7, align 8
  %69 = call i32 @wil_rx_status_get_checksum(i8* %67, %struct.wil_net_stats* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i8* @wil_skb_rxstatus(%struct.sk_buff*) #1

declare dso_local i32 @wil_rx_status_get_l2_rx_status(i8*) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_err_ratelimited(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_rx_status_get_checksum(i8*, %struct.wil_net_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
