; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_error_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_error_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wil_net_stats = type { i32 }
%struct.vring_rx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RX_DMA_STATUS_ERROR = common dso_local global i32 0, align 4
@RX_DMA_ERROR_MIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MIC error, dropping packet\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.sk_buff*, %struct.wil_net_stats*)* @wil_rx_error_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_rx_error_check(%struct.wil6210_priv* %0, %struct.sk_buff* %1, %struct.wil_net_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wil_net_stats*, align 8
  %8 = alloca %struct.vring_rx_desc*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wil_net_stats* %2, %struct.wil_net_stats** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call %struct.vring_rx_desc* @wil_skb_rxdesc(%struct.sk_buff* %9)
  store %struct.vring_rx_desc* %10, %struct.vring_rx_desc** %8, align 8
  %11 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %8, align 8
  %12 = getelementptr inbounds %struct.vring_rx_desc, %struct.vring_rx_desc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RX_DMA_STATUS_ERROR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %8, align 8
  %20 = getelementptr inbounds %struct.vring_rx_desc, %struct.vring_rx_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RX_DMA_ERROR_MIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.wil_net_stats*, %struct.wil_net_stats** %7, align 8
  %28 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %32 = call i32 @wil_dbg_txrx(%struct.wil6210_priv* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.vring_rx_desc* @wil_skb_rxdesc(%struct.sk_buff*) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
