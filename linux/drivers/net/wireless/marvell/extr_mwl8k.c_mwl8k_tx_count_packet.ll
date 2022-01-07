; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_tx_count_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_tx_count_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.mwl8k_sta = type { %struct.tx_traffic_info* }
%struct.tx_traffic_info = type { i64, i64 }

@MWL8K_MAX_TID = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sta*, i64)* @mwl8k_tx_count_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_tx_count_packet(%struct.ieee80211_sta* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mwl8k_sta*, align 8
  %6 = alloca %struct.tx_traffic_info*, align 8
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %8 = call %struct.mwl8k_sta* @MWL8K_STA(%struct.ieee80211_sta* %7)
  store %struct.mwl8k_sta* %8, %struct.mwl8k_sta** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MWL8K_MAX_TID, align 8
  %11 = icmp uge i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.mwl8k_sta*, %struct.mwl8k_sta** %5, align 8
  %15 = getelementptr inbounds %struct.mwl8k_sta, %struct.mwl8k_sta* %14, i32 0, i32 0
  %16 = load %struct.tx_traffic_info*, %struct.tx_traffic_info** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.tx_traffic_info, %struct.tx_traffic_info* %16, i64 %17
  store %struct.tx_traffic_info* %18, %struct.tx_traffic_info** %6, align 8
  %19 = load %struct.tx_traffic_info*, %struct.tx_traffic_info** %6, align 8
  %20 = getelementptr inbounds %struct.tx_traffic_info, %struct.tx_traffic_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.tx_traffic_info*, %struct.tx_traffic_info** %6, align 8
  %26 = getelementptr inbounds %struct.tx_traffic_info, %struct.tx_traffic_info* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i64, i64* @jiffies, align 8
  %29 = load %struct.tx_traffic_info*, %struct.tx_traffic_info** %6, align 8
  %30 = getelementptr inbounds %struct.tx_traffic_info, %struct.tx_traffic_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = load i64, i64* @HZ, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.tx_traffic_info*, %struct.tx_traffic_info** %6, align 8
  %37 = getelementptr inbounds %struct.tx_traffic_info, %struct.tx_traffic_info* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.tx_traffic_info*, %struct.tx_traffic_info** %6, align 8
  %39 = getelementptr inbounds %struct.tx_traffic_info, %struct.tx_traffic_info* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %45

40:                                               ; preds = %27
  %41 = load %struct.tx_traffic_info*, %struct.tx_traffic_info** %6, align 8
  %42 = getelementptr inbounds %struct.tx_traffic_info, %struct.tx_traffic_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %40, %35
  ret void
}

declare dso_local %struct.mwl8k_sta* @MWL8K_STA(%struct.ieee80211_sta*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
