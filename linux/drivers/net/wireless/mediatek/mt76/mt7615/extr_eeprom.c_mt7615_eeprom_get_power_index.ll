; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.c_mt7615_eeprom_get_power_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.c_mt7615_eeprom_get_power_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }
%struct.ieee80211_channel = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@MT_EE_EXT_PA_2G_TARGET_POWER = common dso_local global i32 0, align 4
@MT_EE_EXT_PA_5G_TARGET_POWER = common dso_local global i32 0, align 4
@MT_EE_TX0_2G_TARGET_POWER = common dso_local global i32 0, align 4
@MT_EE_TX1_5G_G0_TARGET_POWER = common dso_local global i32 0, align 4
@MT_EE_TX2_5G_G0_TARGET_POWER = common dso_local global i32 0, align 4
@MT_EE_TX3_5G_G0_TARGET_POWER = common dso_local global i32 0, align 4
@MT_EE_TX0_5G_G0_TARGET_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_eeprom_get_power_index(%struct.mt7615_dev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7615_dev*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @mt7615_ext_pa_enabled(%struct.mt7615_dev* %16, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @MT_EE_EXT_PA_2G_TARGET_POWER, align 4
  store i32 %29, i32* %4, align 4
  br label %65

30:                                               ; preds = %22
  %31 = load i32, i32* @MT_EE_EXT_PA_5G_TARGET_POWER, align 4
  store i32 %31, i32* %4, align 4
  br label %65

32:                                               ; preds = %15
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @MT_EE_TX0_2G_TARGET_POWER, align 4
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 6
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %8, align 4
  br label %63

43:                                               ; preds = %32
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mt7615_get_channel_group(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %56 [
    i32 1, label %49
    i32 2, label %51
    i32 3, label %53
    i32 0, label %55
  ]

49:                                               ; preds = %43
  %50 = load i32, i32* @MT_EE_TX1_5G_G0_TARGET_POWER, align 4
  store i32 %50, i32* %8, align 4
  br label %58

51:                                               ; preds = %43
  %52 = load i32, i32* @MT_EE_TX2_5G_G0_TARGET_POWER, align 4
  store i32 %52, i32* %8, align 4
  br label %58

53:                                               ; preds = %43
  %54 = load i32, i32* @MT_EE_TX3_5G_G0_TARGET_POWER, align 4
  store i32 %54, i32* %8, align 4
  br label %58

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %43, %55
  %57 = load i32, i32* @MT_EE_TX0_5G_G0_TARGET_POWER, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %53, %51, %49
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 5, %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %38
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %30, %28, %12
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @mt7615_ext_pa_enabled(%struct.mt7615_dev*, i64) #1

declare dso_local i32 @mt7615_get_channel_group(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
