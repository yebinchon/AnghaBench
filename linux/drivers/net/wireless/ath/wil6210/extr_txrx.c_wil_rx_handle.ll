; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_ring, %struct.net_device* }
%struct.wil_ring = type { i32, i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64 }
%struct.sk_buff = type { i32, i32, i32, %struct.net_device* }

@.str = private unnamed_addr constant [37 x i8] c"Rx IRQ while Rx not yet initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"rx_handle\0A\00", align 1
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_rx_handle(%struct.wil6210_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.wil_ring*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %10 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %6, align 8
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %16 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %15, i32 0, i32 0
  store %struct.wil_ring* %16, %struct.wil_ring** %7, align 8
  %17 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %18 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %27 = call i32 @wil_err(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %81

28:                                               ; preds = %2
  %29 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %30 = call i32 @wil_dbg_txrx(%struct.wil6210_priv* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %74, %28
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %37 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %38 = call %struct.sk_buff* @wil_vring_reap_rx(%struct.wil6210_priv* %36, %struct.wil_ring* %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* null, %38
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %31 ], [ %39, %35 ]
  br i1 %41, label %42, label %75

42:                                               ; preds = %40
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %47 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %42
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 3
  store %struct.net_device* %52, %struct.net_device** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @skb_reset_mac_header(%struct.sk_buff* %55)
  %57 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @PACKET_OTHERHOST, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ETH_P_802_2, align 4
  %64 = call i32 @htons(i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @wil_netif_rx_any(%struct.sk_buff* %67, %struct.net_device* %68)
  br label %74

70:                                               ; preds = %42
  %71 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = call i32 @wil_rx_reorder(%struct.wil6210_priv* %71, %struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %70, %51
  br label %31

75:                                               ; preds = %40
  %76 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %77 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %78 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @wil_rx_refill(%struct.wil6210_priv* %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %25
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*) #1

declare dso_local %struct.sk_buff* @wil_vring_reap_rx(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @wil_netif_rx_any(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @wil_rx_reorder(%struct.wil6210_priv*, %struct.sk_buff*) #1

declare dso_local i32 @wil_rx_refill(%struct.wil6210_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
