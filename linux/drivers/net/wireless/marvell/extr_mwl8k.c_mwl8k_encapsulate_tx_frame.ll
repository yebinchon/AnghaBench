; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_encapsulate_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_encapsulate_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl8k_priv*, %struct.sk_buff*)* @mwl8k_encapsulate_tx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_encapsulate_tx_frame(%struct.mwl8k_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwl8k_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %13, %struct.ieee80211_hdr** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %14)
  store %struct.ieee80211_tx_info* %15, %struct.ieee80211_tx_info** %6, align 8
  store %struct.ieee80211_key_conf* null, %struct.ieee80211_key_conf** %7, align 8
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ieee80211_is_data(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %24, align 8
  store %struct.ieee80211_key_conf* %25, %struct.ieee80211_key_conf** %7, align 8
  br label %26

26:                                               ; preds = %21, %2
  store i32 0, i32* %8, align 4
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %28 = icmp ne %struct.ieee80211_key_conf* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %39 [
    i32 128, label %36
    i32 129, label %36
    i32 130, label %37
    i32 131, label %38
  ]

36:                                               ; preds = %29, %29
  store i32 4, i32* %8, align 4
  br label %39

37:                                               ; preds = %29
  store i32 12, i32* %8, align 4
  br label %39

38:                                               ; preds = %29
  store i32 8, i32* %8, align 4
  br label %39

39:                                               ; preds = %29, %38, %37, %36
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @mwl8k_add_dma_header(%struct.mwl8k_priv* %41, %struct.sk_buff* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @mwl8k_add_dma_header(%struct.mwl8k_priv*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
