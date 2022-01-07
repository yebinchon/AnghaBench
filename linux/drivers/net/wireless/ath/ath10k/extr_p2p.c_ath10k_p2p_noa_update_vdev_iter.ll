; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_p2p.c_ath10k_p2p_noa_update_vdev_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_p2p.c_ath10k_p2p_noa_update_vdev_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.ath10k_vif = type { i64 }
%struct.ath10k_p2p_noa_arg = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @ath10k_p2p_noa_update_vdev_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_p2p_noa_update_vdev_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath10k_vif*, align 8
  %8 = alloca %struct.ath10k_p2p_noa_arg*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %13, %struct.ath10k_vif** %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.ath10k_p2p_noa_arg*
  store %struct.ath10k_p2p_noa_arg* %15, %struct.ath10k_p2p_noa_arg** %8, align 8
  %16 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %17 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ath10k_p2p_noa_arg*, %struct.ath10k_p2p_noa_arg** %8, align 8
  %20 = getelementptr inbounds %struct.ath10k_p2p_noa_arg, %struct.ath10k_p2p_noa_arg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.ath10k_vif*, %struct.ath10k_vif** %7, align 8
  %26 = load %struct.ath10k_p2p_noa_arg*, %struct.ath10k_p2p_noa_arg** %8, align 8
  %27 = getelementptr inbounds %struct.ath10k_p2p_noa_arg, %struct.ath10k_p2p_noa_arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ath10k_p2p_noa_update(%struct.ath10k_vif* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @ath10k_p2p_noa_update(%struct.ath10k_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
