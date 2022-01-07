; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_capture_bssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_capture_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { i32, i64 }
%struct.ieee80211_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl8k_priv*, %struct.ieee80211_hdr*)* @mwl8k_capture_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_capture_bssid(%struct.mwl8k_priv* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca %struct.mwl8k_priv*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %3, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %4, align 8
  %5 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %6 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ieee80211_is_beacon(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @ether_addr_equal_64bits(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %15, %9, %2
  %25 = phi i1 [ false, %9 ], [ false, %2 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ether_addr_equal_64bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
