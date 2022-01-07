; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_ap_tx_cb_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_ap_tx_cb_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ap_data = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.sta_info = type { i32 }

@WLAN_STA_PENDING_POLL = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: STA %pM did not ACK activity poll frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i8*)* @hostap_ap_tx_cb_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostap_ap_tx_cb_poll(%struct.sk_buff* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ap_data*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.sta_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ap_data*
  store %struct.ap_data* %11, %struct.ap_data** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 24
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %21, %struct.ieee80211_hdr** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = load %struct.ap_data*, %struct.ap_data** %7, align 8
  %26 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.ap_data*, %struct.ap_data** %7, align 8
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %28, i32 %31)
  store %struct.sta_info* %32, %struct.sta_info** %9, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %34 = icmp ne %struct.sta_info* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load i32, i32* @WLAN_STA_PENDING_POLL, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %35, %24
  %43 = load %struct.ap_data*, %struct.ap_data** %7, align 8
  %44 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  br label %59

46:                                               ; preds = %17
  %47 = load i32, i32* @DEBUG_AP, align 4
  %48 = load %struct.ap_data*, %struct.ap_data** %7, align 8
  %49 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PDEBUG(i32 %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %46, %42
  br label %60

60:                                               ; preds = %59, %16
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @dev_kfree_skb(%struct.sk_buff* %61)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
