; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_get_reorder_params_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_get_reorder_params_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wil_rx_status_extended = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.sk_buff*, i32*, i32*, i32*, i32*, i32*, i32*)* @wil_get_reorder_params_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_get_reorder_params_edma(%struct.wil6210_priv* %0, %struct.sk_buff* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.wil6210_priv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.wil_rx_status_extended*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = call %struct.wil_rx_status_extended* @wil_skb_rxstatus(%struct.sk_buff* %18)
  store %struct.wil_rx_status_extended* %19, %struct.wil_rx_status_extended** %17, align 8
  %20 = load %struct.wil_rx_status_extended*, %struct.wil_rx_status_extended** %17, align 8
  %21 = call i32 @wil_rx_status_get_tid(%struct.wil_rx_status_extended* %20)
  %22 = load i32*, i32** %11, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.wil_rx_status_extended*, %struct.wil_rx_status_extended** %17, align 8
  %24 = call i32 @wil_rx_status_get_cid(%struct.wil_rx_status_extended* %23)
  %25 = load i32*, i32** %12, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.wil_rx_status_extended*, %struct.wil_rx_status_extended** %17, align 8
  %27 = call i32 @wil_rx_status_get_mid(%struct.wil_rx_status_extended* %26)
  %28 = load i32*, i32** %13, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.wil6210_priv*, %struct.wil6210_priv** %9, align 8
  %30 = load %struct.wil_rx_status_extended*, %struct.wil_rx_status_extended** %17, align 8
  %31 = call i32 @wil_rx_status_get_seq(%struct.wil6210_priv* %29, %struct.wil_rx_status_extended* %30)
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load i32*, i32** %14, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.wil_rx_status_extended*, %struct.wil_rx_status_extended** %17, align 8
  %35 = call i32 @wil_rx_status_get_mcast(%struct.wil_rx_status_extended* %34)
  %36 = load i32*, i32** %15, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.wil_rx_status_extended*, %struct.wil_rx_status_extended** %17, align 8
  %38 = call i32 @wil_rx_status_get_retry(%struct.wil_rx_status_extended* %37)
  %39 = load i32*, i32** %16, align 8
  store i32 %38, i32* %39, align 4
  ret void
}

declare dso_local %struct.wil_rx_status_extended* @wil_skb_rxstatus(%struct.sk_buff*) #1

declare dso_local i32 @wil_rx_status_get_tid(%struct.wil_rx_status_extended*) #1

declare dso_local i32 @wil_rx_status_get_cid(%struct.wil_rx_status_extended*) #1

declare dso_local i32 @wil_rx_status_get_mid(%struct.wil_rx_status_extended*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wil_rx_status_get_seq(%struct.wil6210_priv*, %struct.wil_rx_status_extended*) #1

declare dso_local i32 @wil_rx_status_get_mcast(%struct.wil_rx_status_extended*) #1

declare dso_local i32 @wil_rx_status_get_retry(%struct.wil_rx_status_extended*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
