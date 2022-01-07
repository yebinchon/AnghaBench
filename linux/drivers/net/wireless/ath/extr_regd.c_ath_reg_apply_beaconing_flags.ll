; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_beaconing_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_beaconing_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath_regulatory = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.ath_regulatory*, i32)* @ath_reg_apply_beaconing_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_reg_apply_beaconing_flags(%struct.wiphy* %0, %struct.ath_regulatory* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.ath_regulatory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.ath_regulatory* %1, %struct.ath_regulatory** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %55, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %17 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %18, i64 %20
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, align 8
  %23 = icmp ne %struct.ieee80211_supported_band* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %55

25:                                               ; preds = %15
  %26 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %27 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %28, i64 %30
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %31, align 8
  store %struct.ieee80211_supported_band* %32, %struct.ieee80211_supported_band** %8, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %51, %25
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 1
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %42, i64 %44
  store %struct.ieee80211_channel* %45, %struct.ieee80211_channel** %9, align 8
  %46 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %47 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %50 = call i32 @__ath_reg_apply_beaconing_flags(%struct.wiphy* %46, %struct.ath_regulatory* %47, i32 %48, %struct.ieee80211_channel* %49)
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %33

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %11

58:                                               ; preds = %11
  ret void
}

declare dso_local i32 @__ath_reg_apply_beaconing_flags(%struct.wiphy*, %struct.ath_regulatory*, i32, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
