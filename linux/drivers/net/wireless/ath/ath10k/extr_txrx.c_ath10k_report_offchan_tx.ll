; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_txrx.c_ath10k_report_offchan_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_txrx.c_ath10k_report_offchan_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"completed old offchannel frame\0A\00", align 1
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"completed offchannel skb %pK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*)* @ath10k_report_offchan_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_report_offchan_tx(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %6)
  store %struct.ieee80211_tx_info* %7, %struct.ieee80211_tx_info** %5, align 8
  %8 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = call i64 @ath10k_mac_tx_frm_has_freq(%struct.ath10k* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %50

24:                                               ; preds = %19
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = icmp ne %struct.sk_buff* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = call i32 @ath10k_warn(%struct.ath10k* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %46

36:                                               ; preds = %24
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 2
  %39 = call i32 @complete(i32* %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %41, align 8
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @ath10k_dbg(%struct.ath10k* %42, i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %44)
  br label %46

46:                                               ; preds = %36, %33
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  br label %50

50:                                               ; preds = %46, %23, %18
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @ath10k_mac_tx_frm_has_freq(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
