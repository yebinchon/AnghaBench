; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_handle_eapol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_handle_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i64 }
%struct.sk_buff = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wireless_dev = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@WMI_FW_CAPABILITY_SPLIT_REKEY = common dso_local global i32 0, align 4
@WIL_REKEY_IDLE = common dso_local global i64 0, align 8
@WIL_REKEY_M3_RECEIVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_vif*, %struct.sk_buff*)* @wil_rx_handle_eapol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_rx_handle_eapol(%struct.wil6210_vif* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %8 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %7)
  store %struct.wil6210_priv* %8, %struct.wil6210_priv** %5, align 8
  %9 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %10 = call %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif* %9)
  store %struct.wireless_dev* %10, %struct.wireless_dev** %6, align 8
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @WMI_FW_CAPABILITY_SPLIT_REKEY, align 4
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %19 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16, %2
  br label %40

24:                                               ; preds = %16
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @wil_skb_is_eap_3(%struct.wil6210_priv* %25, %struct.sk_buff* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %40

30:                                               ; preds = %24
  %31 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %32 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WIL_REKEY_IDLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* @WIL_REKEY_M3_RECEIVED, align 8
  %38 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %39 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %23, %29, %36, %30
  ret void
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wil_skb_is_eap_3(%struct.wil6210_priv*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
