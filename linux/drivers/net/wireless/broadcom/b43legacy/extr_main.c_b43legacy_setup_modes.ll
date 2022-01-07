; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_setup_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_setup_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy, %struct.TYPE_4__* }
%struct.b43legacy_phy = type { i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32** }

@b43legacy_band_2GHz_BPHY = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43legacy_PHYMODE_B = common dso_local global i32 0, align 4
@b43legacy_band_2GHz_GPHY = common dso_local global i32 0, align 4
@B43legacy_PHYMODE_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*, i32, i32)* @b43legacy_setup_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_setup_modes(%struct.b43legacy_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.b43legacy_phy*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  store %struct.ieee80211_hw* %13, %struct.ieee80211_hw** %7, align 8
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %14, i32 0, i32 0
  store %struct.b43legacy_phy* %15, %struct.b43legacy_phy** %8, align 8
  %16 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %8, align 8
  %17 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  store i32* @b43legacy_band_2GHz_BPHY, i32** %27, align 8
  %28 = load i32, i32* @B43legacy_PHYMODE_B, align 4
  %29 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %8, align 8
  %30 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %20, %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  store i32* @b43legacy_band_2GHz_GPHY, i32** %43, align 8
  %44 = load i32, i32* @B43legacy_PHYMODE_G, align 4
  %45 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %8, align 8
  %46 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %36, %33
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
