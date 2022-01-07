; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_send_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_send_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_vif** }
%struct.ieee80211_vif = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_vif = type { i32, i32, i32 }
%struct.tx_beacon_header = type { i32, i32, i32 }
%struct.ath9k_htc_tx_ctl = type { i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@ATH_OP_SCANNING = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@ATH9K_HTC_BEACON = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BSTUCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to send beacon, no free TX buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, i32)* @ath9k_htc_send_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_send_beacon(%struct.ath9k_htc_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath9k_htc_vif*, align 8
  %8 = alloca %struct.tx_beacon_header, align 4
  %9 = alloca %struct.ath9k_htc_tx_ctl*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.ieee80211_mgmt*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ath_common* @ath9k_hw_common(i32 %18)
  store %struct.ath_common* %19, %struct.ath_common** %5, align 8
  %20 = call i32 @memset(%struct.tx_beacon_header* %8, i32 0, i32 12)
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %27, i64 %29
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %30, align 8
  store %struct.ieee80211_vif* %31, %struct.ieee80211_vif** %6, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %35, %struct.ath9k_htc_vif** %7, align 8
  %36 = load i32, i32* @ATH_OP_SCANNING, align 4
  %37 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %38 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %37, i32 0, i32 0
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_bh(i32* %44)
  br label %150

46:                                               ; preds = %2
  %47 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %51 = call %struct.sk_buff* @ieee80211_beacon_get(i32 %49, %struct.ieee80211_vif* %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %12, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock_bh(i32* %56)
  br label %150

58:                                               ; preds = %46
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %62, %struct.ieee80211_mgmt** %11, align 8
  %63 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %7, align 8
  %64 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %70)
  store %struct.ieee80211_tx_info* %71, %struct.ieee80211_tx_info** %10, align 8
  %72 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %58
  %79 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %82, %struct.ieee80211_hdr** %15, align 8
  %83 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %7, align 8
  %84 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 16
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %88 = call i32 @cpu_to_le16(i32 %87)
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %90 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %7, align 8
  %94 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cpu_to_le16(i32 %95)
  %97 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %98 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %78, %58
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = call %struct.tx_beacon_header* @HTC_SKB_CB(%struct.sk_buff* %102)
  %104 = bitcast %struct.tx_beacon_header* %103 to %struct.ath9k_htc_tx_ctl*
  store %struct.ath9k_htc_tx_ctl* %104, %struct.ath9k_htc_tx_ctl** %9, align 8
  %105 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %9, align 8
  %106 = bitcast %struct.ath9k_htc_tx_ctl* %105 to %struct.tx_beacon_header*
  %107 = call i32 @memset(%struct.tx_beacon_header* %106, i32 0, i32 12)
  %108 = load i32, i32* @ATH9K_HTC_BEACON, align 4
  %109 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %9, align 8
  %110 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %112 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %9, align 8
  %115 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %7, align 8
  %117 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.tx_beacon_header, %struct.tx_beacon_header* %8, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %121 = call i32* @skb_push(%struct.sk_buff* %120, i32 12)
  store i32* %121, i32** %13, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = bitcast %struct.tx_beacon_header* %8 to i32*
  %124 = call i32 @memcpy(i32* %122, i32* %123, i32 12)
  %125 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %126 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %129 = call i32 @htc_send(i32 %127, %struct.sk_buff* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %101
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %139 = load i32, i32* @BSTUCK, align 4
  %140 = call i32 @ath_dbg(%struct.ath_common* %138, i32 %139, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %132
  %142 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %143 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %142)
  br label %144

144:                                              ; preds = %141, %101
  %145 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %146 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock_bh(i32* %146)
  %148 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %149 = call i32 @ath9k_htc_csa_is_finished(%struct.ath9k_htc_priv* %148)
  br label %150

150:                                              ; preds = %144, %54, %42
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @memset(%struct.tx_beacon_header*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(i32, %struct.ieee80211_vif*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.tx_beacon_header* @HTC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @htc_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ath9k_htc_csa_is_finished(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
