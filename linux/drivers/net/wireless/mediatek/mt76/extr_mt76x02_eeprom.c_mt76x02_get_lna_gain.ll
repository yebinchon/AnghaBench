; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_eeprom.c_mt76x02_get_lna_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_eeprom.c_mt76x02_get_lna_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.ieee80211_channel = type { i64, i32 }

@MT_EE_NIC_CONF_1 = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_1_LNA_EXT_2G = common dso_local global i32 0, align 4
@MT_EE_NIC_CONF_1_LNA_EXT_5G = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_get_lna_gain(%struct.mt76x02_dev* %0, i32* %1, i32* %2, %struct.ieee80211_channel* %3) #0 {
  %5 = alloca %struct.mt76x02_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ieee80211_channel* %3, %struct.ieee80211_channel** %8, align 8
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %12 = load i32, i32* @MT_EE_NIC_CONF_1, align 4
  %13 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MT_EE_NIC_CONF_1_LNA_EXT_2G, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @MT_EE_NIC_CONF_1_LNA_EXT_5G, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @memset(i32* %26, i32 0, i32 12)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  br label %61

37:                                               ; preds = %28
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %40, 64
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %60

46:                                               ; preds = %37
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sle i32 %49, 128
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  br label %59

55:                                               ; preds = %46
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 255
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  br label %67

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  ret i32 %68
}

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
