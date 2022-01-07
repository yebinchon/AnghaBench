; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_chan_has_spur_noise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_chan_has_spur_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32 }
%struct.ieee80211_channel = type { i32 }

@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_RF5413 = common dso_local global i64 0, align 8
@AR5K_RF2413 = common dso_local global i64 0, align 8
@AR5K_SREV_AR2417 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_chan_has_spur_noise(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AR5K_RF5112, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AR5K_RF5413, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AR5K_RF2413, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %26 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AR5K_SREV_AR2417, align 4
  %29 = ashr i32 %28, 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %18, %12, %2
  store i32 40, i32* %6, align 4
  br label %33

32:                                               ; preds = %24
  store i32 32, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = srem i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = srem i32 %43, %44
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = srem i32 %50, %51
  %53 = icmp sgt i32 %52, 22
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %40
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %47, %33
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
