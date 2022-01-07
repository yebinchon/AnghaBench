; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_bitrate_mask_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_set_bitrate_mask_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i64 }
%struct.ath10k_vif = type { %struct.ath10k* }
%struct.ath10k = type { i32, i32 }
%struct.ath10k_sta = type { i32, i32, %struct.ath10k_vif* }

@IEEE80211_RC_SUPP_RATES_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*)* @ath10k_mac_set_bitrate_mask_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_set_bitrate_mask_iter(i8* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.ath10k_vif*, align 8
  %6 = alloca %struct.ath10k_sta*, align 8
  %7 = alloca %struct.ath10k*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %9, %struct.ath10k_vif** %5, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ath10k_sta*
  store %struct.ath10k_sta* %13, %struct.ath10k_sta** %6, align 8
  %14 = load %struct.ath10k_vif*, %struct.ath10k_vif** %5, align 8
  %15 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %14, i32 0, i32 0
  %16 = load %struct.ath10k*, %struct.ath10k** %15, align 8
  store %struct.ath10k* %16, %struct.ath10k** %7, align 8
  %17 = load %struct.ath10k_sta*, %struct.ath10k_sta** %6, align 8
  %18 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %17, i32 0, i32 2
  %19 = load %struct.ath10k_vif*, %struct.ath10k_vif** %18, align 8
  %20 = load %struct.ath10k_vif*, %struct.ath10k_vif** %5, align 8
  %21 = icmp ne %struct.ath10k_vif* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %48

23:                                               ; preds = %2
  %24 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %25 = load %struct.ath10k_vif*, %struct.ath10k_vif** %5, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %27 = call i64 @ath10k_mac_set_vht_bitrate_mask_fixup(%struct.ath10k* %24, %struct.ath10k_vif* %25, %struct.ieee80211_sta* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %48

30:                                               ; preds = %23
  %31 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load i32, i32* @IEEE80211_RC_SUPP_RATES_CHANGED, align 4
  %35 = load %struct.ath10k_sta*, %struct.ath10k_sta** %6, align 8
  %36 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %43 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ath10k_sta*, %struct.ath10k_sta** %6, align 8
  %46 = getelementptr inbounds %struct.ath10k_sta, %struct.ath10k_sta* %45, i32 0, i32 0
  %47 = call i32 @ieee80211_queue_work(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %30, %29, %22
  ret void
}

declare dso_local i64 @ath10k_mac_set_vht_bitrate_mask_fixup(%struct.ath10k*, %struct.ath10k_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
