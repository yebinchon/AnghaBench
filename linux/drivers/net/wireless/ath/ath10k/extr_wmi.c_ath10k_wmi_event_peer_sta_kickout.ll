; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_peer_sta_kickout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_peer_sta_kickout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_peer_kick_ev_arg = type { i32 }
%struct.ieee80211_sta = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to parse peer kickout event: %d\0A\00", align 1
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"wmi event peer sta kickout %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Spurious quick kickout for STA %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_event_peer_sta_kickout(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_peer_kick_ev_arg, align 4
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = bitcast %struct.wmi_peer_kick_ev_arg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @ath10k_wmi_pull_peer_kick(%struct.ath10k* %9, %struct.sk_buff* %10, %struct.wmi_peer_kick_ev_arg* %5)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ath10k_warn(%struct.ath10k* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %21 = getelementptr inbounds %struct.wmi_peer_kick_ev_arg, %struct.wmi_peer_kick_ev_arg* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ath10k_dbg(%struct.ath10k* %19, i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.wmi_peer_kick_ev_arg, %struct.wmi_peer_kick_ev_arg* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %27, i32 %29, i32* null)
  store %struct.ieee80211_sta* %30, %struct.ieee80211_sta** %6, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %32 = icmp ne %struct.ieee80211_sta* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %18
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = getelementptr inbounds %struct.wmi_peer_kick_ev_arg, %struct.wmi_peer_kick_ev_arg* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ath10k_warn(%struct.ath10k* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %41

38:                                               ; preds = %18
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %40 = call i32 @ieee80211_report_low_ack(%struct.ieee80211_sta* %39, i32 10)
  br label %41

41:                                               ; preds = %38, %33
  %42 = call i32 (...) @rcu_read_unlock()
  br label %43

43:                                               ; preds = %41, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_wmi_pull_peer_kick(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32, i32*) #2

declare dso_local i32 @ieee80211_report_low_ack(%struct.ieee80211_sta*, i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
