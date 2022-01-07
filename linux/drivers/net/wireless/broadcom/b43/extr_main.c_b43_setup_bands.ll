; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_setup_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_setup_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, %struct.TYPE_3__* }
%struct.b43_phy = type { i32, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32** }

@b43_band_2ghz_limited = common dso_local global i32 0, align 4
@b43_band_2GHz = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_PHYTYPE_N = common dso_local global i64 0, align 8
@b43_band_5GHz_nphy_limited = common dso_local global i32 0, align 4
@b43_band_5GHz_nphy = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@b43_band_5GHz_aphy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32, i32)* @b43_setup_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_setup_bands(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.b43_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %7, align 8
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %17 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %16, i32 0, i32 0
  store %struct.b43_phy* %17, %struct.b43_phy** %8, align 8
  %18 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 8279
  br i1 %21, label %22, label %34

22:                                               ; preds = %3
  %23 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %24 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %29 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 14
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ true, %22 ], [ %31, %27 ]
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i1 [ false, %3 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %38 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 8279
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %43 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 9
  br label %46

46:                                               ; preds = %41, %34
  %47 = phi i1 [ false, %34 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32* @b43_band_2ghz_limited, i32* @b43_band_2GHz
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  store i32* %55, i32** %62, align 8
  br label %63

63:                                               ; preds = %51, %46
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %65 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @B43_PHYTYPE_N, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %63
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32* @b43_band_5GHz_nphy_limited, i32* @b43_band_5GHz_nphy
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  store i32* %77, i32** %84, align 8
  br label %85

85:                                               ; preds = %73, %70
  br label %98

86:                                               ; preds = %63
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %96 = getelementptr inbounds i32*, i32** %94, i64 %95
  store i32* @b43_band_5GHz_aphy, i32** %96, align 8
  br label %97

97:                                               ; preds = %89, %86
  br label %98

98:                                               ; preds = %97, %85
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %101 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %105 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %105, i32 0, i32 4
  store i32 %103, i32* %106, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
