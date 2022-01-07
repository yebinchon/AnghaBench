; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.h_ath10k_tx_h_seq_no.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.h_ath10k_tx_h_seq_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ath10k_vif = type { i32 }

@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_vif*, %struct.sk_buff*)* @ath10k_tx_h_seq_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_tx_h_seq_no(%struct.ieee80211_vif* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.ath10k_vif*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %8)
  store %struct.ieee80211_tx_info* %9, %struct.ieee80211_tx_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %6, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %18, %struct.ath10k_vif** %7, align 8
  %19 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %2
  %26 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %27 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %32 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %31, i32 0, i32 0
  store i32 4096, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %42 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 16
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %47 = call i32 @cpu_to_le16(i32 %46)
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %53 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_le16(i32 %54)
  %56 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %45, %2
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
