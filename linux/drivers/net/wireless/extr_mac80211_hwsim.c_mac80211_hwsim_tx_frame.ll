; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SUPPORTS_RC_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_channel*)* @mac80211_hwsim_tx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_tx_frame(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.mac80211_hwsim_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %11, align 8
  store %struct.mac80211_hwsim_data* %12, %struct.mac80211_hwsim_data** %7, align 8
  %13 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %14 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @READ_ONCE(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = load i32, i32* @SUPPORTS_RC_TABLE, align 4
  %19 = call i64 @ieee80211_hw_check(%struct.ieee80211_hw* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %9, align 8
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @ieee80211_get_tx_rates(i32 %27, i32* null, %struct.sk_buff* %28, i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %21, %3
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %43 = call i32 @mac80211_hwsim_monitor_rx(%struct.ieee80211_hw* %40, %struct.sk_buff* %41, %struct.ieee80211_channel* %42)
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i64, i64* %8, align 8
  call void @mac80211_hwsim_tx_frame_nl(%struct.ieee80211_hw* %47, %struct.sk_buff* %48, i64 %49)
  br label %57

50:                                               ; preds = %39
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %54 = call i32 @mac80211_hwsim_tx_frame_no_nl(%struct.ieee80211_hw* %51, %struct.sk_buff* %52, %struct.ieee80211_channel* %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @dev_kfree_skb(%struct.sk_buff* %55)
  br label %57

57:                                               ; preds = %50, %46
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @ieee80211_hw_check(%struct.ieee80211_hw*, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_get_tx_rates(i32, i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mac80211_hwsim_monitor_rx(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_channel*) #1

declare dso_local void @mac80211_hwsim_tx_frame_nl(%struct.ieee80211_hw*, %struct.sk_buff*, i64) #1

declare dso_local i32 @mac80211_hwsim_tx_frame_no_nl(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_channel*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
