; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_peer_assoc_h_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32* }
%struct.wmi_peer_assoc_complete_arg = type { %struct.wmi_rate_set_arg }
%struct.wmi_rate_set_arg = type { i64, i32* }
%struct.ath10k_vif = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.cfg80211_chan_def = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*)* @ath10k_peer_assoc_h_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_peer_assoc_h_rates(%struct.ath10k* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.wmi_peer_assoc_complete_arg* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.wmi_peer_assoc_complete_arg*, align 8
  %9 = alloca %struct.ath10k_vif*, align 8
  %10 = alloca %struct.wmi_rate_set_arg*, align 8
  %11 = alloca %struct.cfg80211_chan_def, align 8
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca %struct.ieee80211_rate*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.wmi_peer_assoc_complete_arg* %3, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %22, %struct.ath10k_vif** %9, align 8
  %23 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %8, align 8
  %24 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %23, i32 0, i32 0
  store %struct.wmi_rate_set_arg* %24, %struct.wmi_rate_set_arg** %10, align 8
  %25 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 1
  %27 = call i32 @lockdep_assert_held(i32* %26)
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %29 = call i32 @ath10k_mac_vif_chan(%struct.ieee80211_vif* %28, %struct.cfg80211_chan_def* %11)
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %104

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %11, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %44, i64 %46
  %48 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %47, align 8
  store %struct.ieee80211_supported_band* %48, %struct.ieee80211_supported_band** %12, align 8
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load %struct.ath10k_vif*, %struct.ath10k_vif** %9, align 8
  %57 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %15, align 4
  %67 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %68 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %67, i32 0, i32 0
  %69 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %68, align 8
  store %struct.ieee80211_rate* %69, %struct.ieee80211_rate** %13, align 8
  %70 = load %struct.wmi_rate_set_arg*, %struct.wmi_rate_set_arg** %10, align 8
  %71 = getelementptr inbounds %struct.wmi_rate_set_arg, %struct.wmi_rate_set_arg* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  store i32 0, i32* %17, align 4
  br label %72

72:                                               ; preds = %97, %33
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %73, 32
  br i1 %74, label %75, label %104

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  br label %97

80:                                               ; preds = %75
  %81 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %13, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ath10k_mac_bitrate_to_rate(i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.wmi_rate_set_arg*, %struct.wmi_rate_set_arg** %10, align 8
  %87 = getelementptr inbounds %struct.wmi_rate_set_arg, %struct.wmi_rate_set_arg* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.wmi_rate_set_arg*, %struct.wmi_rate_set_arg** %10, align 8
  %90 = getelementptr inbounds %struct.wmi_rate_set_arg, %struct.wmi_rate_set_arg* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %85, i32* %92, align 4
  %93 = load %struct.wmi_rate_set_arg*, %struct.wmi_rate_set_arg** %10, align 8
  %94 = getelementptr inbounds %struct.wmi_rate_set_arg, %struct.wmi_rate_set_arg* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %80, %79
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %15, align 4
  %101 = ashr i32 %100, 1
  store i32 %101, i32* %15, align 4
  %102 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %13, align 8
  %103 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %102, i32 1
  store %struct.ieee80211_rate* %103, %struct.ieee80211_rate** %13, align 8
  br label %72

104:                                              ; preds = %32, %72
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_mac_vif_chan(%struct.ieee80211_vif*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ath10k_mac_bitrate_to_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
