; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_get_tx_gain_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_get_tx_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy, %struct.TYPE_6__* }
%struct.b43_phy = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@b43_ntab_tx_gain_rev0_1_2 = common dso_local global i32* null, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@b43_ntab_tx_gain_epa_rev5_5g = common dso_local global i32* null, align 8
@b43_ntab_tx_gain_epa_rev4_5g = common dso_local global i32* null, align 8
@b43_ntab_tx_gain_epa_rev4_hi_pwr_5g = common dso_local global i32* null, align 8
@b43_ntab_tx_gain_epa_rev3_5g = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"No 5GHz EPA gain table available for this device\0A\00", align 1
@b43_ntab_tx_gain_epa_rev3_hi_pwr_2g = common dso_local global i32* null, align 8
@b43_ntab_tx_gain_epa_rev3_2g = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"No 2GHz EPA gain table available for this device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssb_sprom*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  store %struct.b43_phy* %8, %struct.b43_phy** %4, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @b43_current_band(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.ssb_sprom*, %struct.ssb_sprom** %16, align 8
  store %struct.ssb_sprom* %17, %struct.ssb_sprom** %6, align 8
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32*, i32** @b43_ntab_tx_gain_rev0_1_2, align 8
  store i32* %24, i32** %2, align 8
  br label %106

25:                                               ; preds = %1
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %33
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = call i32* @b43_nphy_get_ipa_gain_table(%struct.b43_wldev* %50)
  store i32* %51, i32** %2, align 8
  br label %106

52:                                               ; preds = %45, %37
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @b43_current_band(i32 %55)
  %57 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %52
  %60 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %61 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %80 [
    i32 6, label %63
    i32 5, label %63
    i32 4, label %65
    i32 3, label %78
  ]

63:                                               ; preds = %59, %59
  %64 = load i32*, i32** @b43_ntab_tx_gain_epa_rev5_5g, align 8
  store i32* %64, i32** %2, align 8
  br label %106

65:                                               ; preds = %59
  %66 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %67 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32*, i32** @b43_ntab_tx_gain_epa_rev4_5g, align 8
  br label %76

74:                                               ; preds = %65
  %75 = load i32*, i32** @b43_ntab_tx_gain_epa_rev4_hi_pwr_5g, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32* [ %73, %72 ], [ %75, %74 ]
  store i32* %77, i32** %2, align 8
  br label %106

78:                                               ; preds = %59
  %79 = load i32*, i32** @b43_ntab_tx_gain_epa_rev3_5g, align 8
  store i32* %79, i32** %2, align 8
  br label %106

80:                                               ; preds = %59
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %82 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @b43err(i32 %83, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %106

85:                                               ; preds = %52
  %86 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %87 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %101 [
    i32 6, label %89
    i32 5, label %89
    i32 4, label %99
    i32 3, label %99
  ]

89:                                               ; preds = %85, %85
  %90 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %91 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32*, i32** @b43_ntab_tx_gain_epa_rev3_hi_pwr_2g, align 8
  store i32* %97, i32** %2, align 8
  br label %106

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %85, %85, %98
  %100 = load i32*, i32** @b43_ntab_tx_gain_epa_rev3_2g, align 8
  store i32* %100, i32** %2, align 8
  br label %106

101:                                              ; preds = %85
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %103 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @b43err(i32 %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %106

106:                                              ; preds = %101, %99, %96, %80, %78, %76, %63, %49, %23
  %107 = load i32*, i32** %2, align 8
  ret i32* %107
}

declare dso_local i32 @b43_current_band(i32) #1

declare dso_local i32* @b43_nphy_get_ipa_gain_table(%struct.b43_wldev*) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
