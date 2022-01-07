; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_tx_h_add_p2p_noa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_tx_h_add_p2p_noa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i64, i32, i64 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ath10k_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_vif*, %struct.sk_buff*)* @ath10k_tx_h_add_p2p_noa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_tx_h_add_p2p_noa_ie(%struct.ath10k* %0, %struct.ieee80211_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ath10k_vif*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %12, %struct.ieee80211_hdr** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %17, %struct.ath10k_vif** %8, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %3
  br label %74

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ieee80211_is_probe_resp(i32 %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %29
  %37 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %41 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %49 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i32 @pskb_expand_head(%struct.sk_buff* %47, i32 0, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %59 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %64 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @skb_put_data(%struct.sk_buff* %57, i64 %62, i32 %67)
  br label %69

69:                                               ; preds = %56, %46
  br label %70

70:                                               ; preds = %69, %36
  %71 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %72 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_bh(i32* %72)
  br label %74

74:                                               ; preds = %28, %70, %29
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
