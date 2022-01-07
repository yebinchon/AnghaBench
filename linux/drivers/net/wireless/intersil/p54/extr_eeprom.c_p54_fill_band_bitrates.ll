; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_fill_band_bitrates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_fill_band_bitrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_supported_band = type { i8*, i8* }

@p54_bgrates = common dso_local global i8* null, align 8
@p54_arates = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_supported_band*, i32)* @p54_fill_band_bitrates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_fill_band_bitrates(%struct.ieee80211_hw* %0, %struct.ieee80211_supported_band* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 128, label %17
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** @p54_bgrates, align 8
  %11 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @p54_bgrates, align 8
  %14 = call i8* @ARRAY_SIZE(i8* %13)
  %15 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %28

17:                                               ; preds = %3
  %18 = load i8*, i8** @p54_arates, align 8
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @p54_arates, align 8
  %22 = call i8* @ARRAY_SIZE(i8* %21)
  %23 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %17, %9
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
