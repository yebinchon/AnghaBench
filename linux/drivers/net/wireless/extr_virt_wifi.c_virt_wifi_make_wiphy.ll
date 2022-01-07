; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_make_wiphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_make_wiphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32, i32, i32**, i32 }
%struct.virt_wifi_wiphy_priv = type { i32, i32, i32* }

@virt_wifi_cfg80211_ops = common dso_local global i32 0, align 4
@CFG80211_SIGNAL_TYPE_MBM = common dso_local global i32 0, align 4
@band_2ghz = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@band_5ghz = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_60GHZ = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@virt_wifi_scan_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wiphy* ()* @virt_wifi_make_wiphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wiphy* @virt_wifi_make_wiphy() #0 {
  %1 = alloca %struct.wiphy*, align 8
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.virt_wifi_wiphy_priv*, align 8
  %4 = alloca i32, align 4
  %5 = call %struct.wiphy* @wiphy_new(i32* @virt_wifi_cfg80211_ops, i32 16)
  store %struct.wiphy* %5, %struct.wiphy** %2, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %7 = icmp ne %struct.wiphy* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.wiphy* null, %struct.wiphy** %1, align 8
  br label %55

9:                                                ; preds = %0
  %10 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %11 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %10, i32 0, i32 0
  store i32 4, i32* %11, align 8
  %12 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %13 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %12, i32 0, i32 1
  store i32 1000, i32* %13, align 4
  %14 = load i32, i32* @CFG80211_SIGNAL_TYPE_MBM, align 4
  %15 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %16 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %18 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %17, i32 0, i32 3
  %19 = load i32**, i32*** %18, align 8
  %20 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  store i32* @band_2ghz, i32** %21, align 8
  %22 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %23 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %22, i32 0, i32 3
  %24 = load i32**, i32*** %23, align 8
  %25 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  store i32* @band_5ghz, i32** %26, align 8
  %27 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %28 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %27, i32 0, i32 3
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* @NL80211_BAND_60GHZ, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %35 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %37 = call %struct.virt_wifi_wiphy_priv* @wiphy_priv(%struct.wiphy* %36)
  store %struct.virt_wifi_wiphy_priv* %37, %struct.virt_wifi_wiphy_priv** %3, align 8
  %38 = load %struct.virt_wifi_wiphy_priv*, %struct.virt_wifi_wiphy_priv** %3, align 8
  %39 = getelementptr inbounds %struct.virt_wifi_wiphy_priv, %struct.virt_wifi_wiphy_priv* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.virt_wifi_wiphy_priv*, %struct.virt_wifi_wiphy_priv** %3, align 8
  %41 = getelementptr inbounds %struct.virt_wifi_wiphy_priv, %struct.virt_wifi_wiphy_priv* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.virt_wifi_wiphy_priv*, %struct.virt_wifi_wiphy_priv** %3, align 8
  %43 = getelementptr inbounds %struct.virt_wifi_wiphy_priv, %struct.virt_wifi_wiphy_priv* %42, i32 0, i32 1
  %44 = load i32, i32* @virt_wifi_scan_result, align 4
  %45 = call i32 @INIT_DELAYED_WORK(i32* %43, i32 %44)
  %46 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %47 = call i32 @wiphy_register(%struct.wiphy* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %9
  %51 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %52 = call i32 @wiphy_free(%struct.wiphy* %51)
  store %struct.wiphy* null, %struct.wiphy** %1, align 8
  br label %55

53:                                               ; preds = %9
  %54 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  store %struct.wiphy* %54, %struct.wiphy** %1, align 8
  br label %55

55:                                               ; preds = %53, %50, %8
  %56 = load %struct.wiphy*, %struct.wiphy** %1, align 8
  ret %struct.wiphy* %56
}

declare dso_local %struct.wiphy* @wiphy_new(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.virt_wifi_wiphy_priv* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @wiphy_register(%struct.wiphy*) #1

declare dso_local i32 @wiphy_free(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
