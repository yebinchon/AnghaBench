; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_peer_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_peer_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ath10k = type { i32 }
%struct.htt_rx_desc = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ath10k_peer = type { i32 }
%struct.ath10k_vif = type { i32 }
%struct.cfg80211_chan_def = type { %struct.ieee80211_channel* }

@RX_ATTENTION_FLAGS_PEER_IDX_INVALID = common dso_local global i32 0, align 4
@RX_MSDU_END_INFO0_FIRST_MSDU = common dso_local global i32 0, align 4
@RX_MPDU_START_INFO0_PEER_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.ath10k*, %struct.htt_rx_desc*)* @ath10k_htt_rx_h_peer_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @ath10k_htt_rx_h_peer_channel(%struct.ath10k* %0, %struct.htt_rx_desc* %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.htt_rx_desc*, align 8
  %6 = alloca %struct.ath10k_peer*, align 8
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca %struct.cfg80211_chan_def, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.htt_rx_desc* %1, %struct.htt_rx_desc** %5, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %5, align 8
  %14 = icmp ne %struct.htt_rx_desc* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %5, align 8
  %18 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RX_ATTENTION_FLAGS_PEER_IDX_INVALID, align 4
  %22 = call i32 @__cpu_to_le32(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %74

26:                                               ; preds = %16
  %27 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %5, align 8
  %28 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RX_MSDU_END_INFO0_FIRST_MSDU, align 4
  %33 = call i32 @__cpu_to_le32(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %74

37:                                               ; preds = %26
  %38 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %5, align 8
  %39 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__le32_to_cpu(i32 %41)
  %43 = load i32, i32* @RX_MPDU_START_INFO0_PEER_IDX, align 4
  %44 = call i32 @MS(i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k* %45, i32 %46)
  store %struct.ath10k_peer* %47, %struct.ath10k_peer** %6, align 8
  %48 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %49 = icmp ne %struct.ath10k_peer* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %74

51:                                               ; preds = %37
  %52 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %53 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %54 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k* %52, i32 %55)
  store %struct.ath10k_vif* %56, %struct.ath10k_vif** %7, align 8
  %57 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %58 = icmp ne %struct.ath10k_vif* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON_ONCE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %74

64:                                               ; preds = %51
  %65 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %66 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ath10k_mac_vif_chan(i32 %67, %struct.cfg80211_chan_def* %8)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %74

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %72, align 8
  store %struct.ieee80211_channel* %73, %struct.ieee80211_channel** %3, align 8
  br label %74

74:                                               ; preds = %71, %70, %63, %50, %36, %25, %15
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  ret %struct.ieee80211_channel* %75
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k*, i32) #1

declare dso_local %struct.ath10k_vif* @ath10k_get_arvif(%struct.ath10k*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ath10k_mac_vif_chan(i32, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
