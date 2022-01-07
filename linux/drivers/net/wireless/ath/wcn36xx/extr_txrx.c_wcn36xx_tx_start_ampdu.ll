; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_tx_start_ampdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_tx_start_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wcn36xx_sta = type { i64*, i32, i64 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IEEE80211_AC_VO = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i64 0, align 8
@WCN36XX_AMPDU_NONE = common dso_local global i64 0, align 8
@WCN36XX_AMPDU_START_THRESH = common dso_local global i64 0, align 8
@WCN36XX_AMPDU_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx*, %struct.wcn36xx_sta*, %struct.sk_buff*)* @wcn36xx_tx_start_ampdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_tx_start_ampdu(%struct.wcn36xx* %0, %struct.wcn36xx_sta* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.wcn36xx_sta*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.wcn36xx_sta* %1, %struct.wcn36xx_sta** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %14, %struct.ieee80211_hdr** %7, align 8
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @conf_is_ht(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %85

22:                                               ; preds = %3
  %23 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %5, align 8
  %24 = call %struct.ieee80211_sta* @wcn36xx_priv_to_sta(%struct.wcn36xx_sta* %23)
  store %struct.ieee80211_sta* %24, %struct.ieee80211_sta** %8, align 8
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ieee80211_is_data_qos(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %85

35:                                               ; preds = %22
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %36)
  %38 = load i64, i64* @IEEE80211_AC_VO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %85

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %43 = call i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %42)
  store i64* %43, i64** %9, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IEEE80211_QOS_CTL_TID_MASK, align 8
  %48 = and i64 %46, %47
  store i64 %48, i64* %10, align 8
  %49 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %5, align 8
  %50 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %49, i32 0, i32 1
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %5, align 8
  %53 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @WCN36XX_AMPDU_NONE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %41
  br label %81

61:                                               ; preds = %41
  %62 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %5, align 8
  %63 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* @WCN36XX_AMPDU_START_THRESH, align 8
  %67 = icmp sge i64 %64, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load i64, i64* @WCN36XX_AMPDU_START, align 8
  %70 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %5, align 8
  %71 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %69, i64* %74, align 8
  %75 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %5, align 8
  %76 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta* %77, i64 %78, i32 0)
  br label %80

80:                                               ; preds = %68, %61
  br label %81

81:                                               ; preds = %80, %60
  %82 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %5, align 8
  %83 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock(i32* %83)
  br label %85

85:                                               ; preds = %81, %40, %34, %21
  ret void
}

declare dso_local i32 @conf_is_ht(i32*) #1

declare dso_local %struct.ieee80211_sta* @wcn36xx_priv_to_sta(%struct.wcn36xx_sta*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
