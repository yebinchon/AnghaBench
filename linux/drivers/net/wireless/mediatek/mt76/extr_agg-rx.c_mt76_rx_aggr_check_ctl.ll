; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_check_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_check_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.sk_buff_head = type { i32 }
%struct.mt76_rx_status = type { i32, %struct.mt76_wcid* }
%struct.mt76_wcid = type { i32* }
%struct.ieee80211_bar = type { i32, i32, i32 }
%struct.mt76_rx_tid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sk_buff_head*)* @mt76_rx_aggr_check_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_rx_aggr_check_ctl(%struct.sk_buff* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.mt76_rx_status*, align 8
  %6 = alloca %struct.ieee80211_bar*, align 8
  %7 = alloca %struct.mt76_wcid*, align 8
  %8 = alloca %struct.mt76_rx_tid*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mt76_rx_status*
  store %struct.mt76_rx_status* %13, %struct.mt76_rx_status** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ieee80211_bar*
  store %struct.ieee80211_bar* %17, %struct.ieee80211_bar** %6, align 8
  %18 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %19 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %18, i32 0, i32 1
  %20 = load %struct.mt76_wcid*, %struct.mt76_wcid** %19, align 8
  store %struct.mt76_wcid* %20, %struct.mt76_wcid** %7, align 8
  %21 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ieee80211_is_ctl(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %74

27:                                               ; preds = %2
  %28 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ieee80211_is_back_req(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %74

34:                                               ; preds = %27
  %35 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = ashr i32 %38, 12
  %40 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %41 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = call i32 @IEEE80211_SEQ_TO_SN(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.mt76_wcid*, %struct.mt76_wcid** %7, align 8
  %48 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %51 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.mt76_rx_tid* @rcu_dereference(i32 %55)
  store %struct.mt76_rx_tid* %56, %struct.mt76_rx_tid** %8, align 8
  %57 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %8, align 8
  %58 = icmp ne %struct.mt76_rx_tid* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %34
  br label %74

60:                                               ; preds = %34
  %61 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %8, align 8
  %62 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %61, i32 0, i32 0
  %63 = call i32 @spin_lock_bh(i32* %62)
  %64 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %8, align 8
  %65 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @mt76_rx_aggr_release_frames(%struct.mt76_rx_tid* %64, %struct.sk_buff_head* %65, i32 %66)
  %68 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %8, align 8
  %69 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %70 = call i32 @mt76_rx_aggr_release_head(%struct.mt76_rx_tid* %68, %struct.sk_buff_head* %69)
  %71 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %8, align 8
  %72 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_bh(i32* %72)
  br label %74

74:                                               ; preds = %60, %59, %33, %26
  ret void
}

declare dso_local i32 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @ieee80211_is_back_req(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local %struct.mt76_rx_tid* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mt76_rx_aggr_release_frames(%struct.mt76_rx_tid*, %struct.sk_buff_head*, i32) #1

declare dso_local i32 @mt76_rx_aggr_release_head(%struct.mt76_rx_tid*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
