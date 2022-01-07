; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_peer_sta_ps_state_chg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_peer_sta_ps_state_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_peer_sta_ps_state_chg_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ath10k_sta = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to find station entry %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_event_peer_sta_ps_state_chg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_event_peer_sta_ps_state_chg(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_peer_sta_ps_state_chg_event*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.ath10k_sta*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 1
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.wmi_peer_sta_ps_state_chg_event*
  store %struct.wmi_peer_sta_ps_state_chg_event* %20, %struct.wmi_peer_sta_ps_state_chg_event** %5, align 8
  %21 = load %struct.wmi_peer_sta_ps_state_chg_event*, %struct.wmi_peer_sta_ps_state_chg_event** %5, align 8
  %22 = getelementptr inbounds %struct.wmi_peer_sta_ps_state_chg_event, %struct.wmi_peer_sta_ps_state_chg_event* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ether_addr_copy(i32* %13, i32 %24)
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %29, i32* %13, i32* null)
  store %struct.ieee80211_sta* %30, %struct.ieee80211_sta** %6, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %32 = icmp ne %struct.ieee80211_sta* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = call i32 @ath10k_warn(%struct.ath10k* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %13)
  br label %47

36:                                               ; preds = %2
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %40, %struct.ath10k_sta** %7, align 8
  %41 = load %struct.wmi_peer_sta_ps_state_chg_event*, %struct.wmi_peer_sta_ps_state_chg_event** %5, align 8
  %42 = getelementptr inbounds %struct.wmi_peer_sta_ps_state_chg_event, %struct.wmi_peer_sta_ps_state_chg_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__le32_to_cpu(i32 %43)
  %45 = load %struct.ath10k_sta*, %struct.ath10k_sta** %7, align 8
  %46 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %36, %33
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @ether_addr_copy(i32*, i32) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32*, i32*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32*) #2

declare dso_local i32 @__le32_to_cpu(i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
