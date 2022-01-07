; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_hw_rate_to_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_hw_rate_to_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i64, i32, i64, i32 }

@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ath10k_mac_hw_rate_to_idx(%struct.ieee80211_supported_band* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_rate*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %57, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %10
  %17 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %19, i64 %21
  store %struct.ieee80211_rate* %22, %struct.ieee80211_rate** %8, align 8
  %23 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ath10k_mac_bitrate_is_cck(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %57

30:                                               ; preds = %16
  %31 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %4, align 8
  br label %61

39:                                               ; preds = %30
  %40 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %4, align 8
  br label %61

55:                                               ; preds = %46, %39
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %10

60:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %61

61:                                               ; preds = %60, %52, %36
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @ath10k_mac_bitrate_is_cck(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
