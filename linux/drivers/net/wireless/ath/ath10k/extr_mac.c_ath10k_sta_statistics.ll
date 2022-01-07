; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_sta_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_sta_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.station_info = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i64 }
%struct.ath10k_sta = type { %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { %struct.ath10k* }
%struct.ath10k = type { i32 }

@NL80211_STA_INFO_RX_DURATION = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.station_info*)* @ath10k_sta_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_sta_statistics(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.station_info* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.station_info*, align 8
  %9 = alloca %struct.ath10k_sta*, align 8
  %10 = alloca %struct.ath10k*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.station_info* %3, %struct.station_info** %8, align 8
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %14, %struct.ath10k_sta** %9, align 8
  %15 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %16 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.ath10k*, %struct.ath10k** %18, align 8
  store %struct.ath10k* %19, %struct.ath10k** %10, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %21 = call i32 @ath10k_peer_stats_enabled(%struct.ath10k* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %98

24:                                               ; preds = %4
  %25 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %26 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.station_info*, %struct.station_info** %8, align 8
  %29 = getelementptr inbounds %struct.station_info, %struct.station_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @NL80211_STA_INFO_RX_DURATION, align 4
  %31 = call i32 @BIT_ULL(i32 %30)
  %32 = load %struct.station_info*, %struct.station_info** %8, align 8
  %33 = getelementptr inbounds %struct.station_info, %struct.station_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %37 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %24
  %42 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %43 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %98

48:                                               ; preds = %41, %24
  %49 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %50 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %56 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.station_info*, %struct.station_info** %8, align 8
  %60 = getelementptr inbounds %struct.station_info, %struct.station_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  store i64 %58, i64* %61, align 8
  br label %84

62:                                               ; preds = %48
  %63 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %64 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.station_info*, %struct.station_info** %8, align 8
  %68 = getelementptr inbounds %struct.station_info, %struct.station_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 8
  %70 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %71 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.station_info*, %struct.station_info** %8, align 8
  %75 = getelementptr inbounds %struct.station_info, %struct.station_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i64 %73, i64* %76, align 8
  %77 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %78 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.station_info*, %struct.station_info** %8, align 8
  %82 = getelementptr inbounds %struct.station_info, %struct.station_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %62, %54
  %85 = load %struct.ath10k_sta*, %struct.ath10k_sta** %9, align 8
  %86 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.station_info*, %struct.station_info** %8, align 8
  %90 = getelementptr inbounds %struct.station_info, %struct.station_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @NL80211_STA_INFO_TX_BITRATE, align 4
  %93 = call i32 @BIT_ULL(i32 %92)
  %94 = load %struct.station_info*, %struct.station_info** %8, align 8
  %95 = getelementptr inbounds %struct.station_info, %struct.station_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %84, %47, %23
  ret void
}

declare dso_local i32 @ath10k_peer_stats_enabled(%struct.ath10k*) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
