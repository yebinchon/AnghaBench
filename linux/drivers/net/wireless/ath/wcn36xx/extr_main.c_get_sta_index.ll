; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_get_sta_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_get_sta_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.wcn36xx_sta = type { i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_vif*, %struct.wcn36xx_sta*)* @get_sta_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sta_index(%struct.ieee80211_vif* %0, %struct.wcn36xx_sta* %1) #0 {
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca %struct.wcn36xx_sta*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %3, align 8
  store %struct.wcn36xx_sta* %1, %struct.wcn36xx_sta** %4, align 8
  %5 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %6 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %4, align 8
  %12 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %4, align 8
  %16 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %13, %10 ], [ %17, %14 ]
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
