; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_10__, i32, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_NTAB_FRAMESTRUCT_R3 = common dso_local global i32 0, align 4
@b43_ntab_framestruct_r3 = common dso_local global i32 0, align 4
@B43_NTAB_PILOT_R3 = common dso_local global i32 0, align 4
@b43_ntab_pilot_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TMAP_R3 = common dso_local global i32 0, align 4
@b43_ntab_tmap_r3 = common dso_local global i32 0, align 4
@B43_NTAB_INTLEVEL_R3 = common dso_local global i32 0, align 4
@b43_ntab_intlevel_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDTRN_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdtrn_r3 = common dso_local global i32 0, align 4
@B43_NTAB_NOISEVAR_R3 = common dso_local global i32 0, align 4
@b43_ntab_noisevar_r3 = common dso_local global i32 0, align 4
@B43_NTAB_MCS_R3 = common dso_local global i32 0, align 4
@b43_ntab_mcs_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI20A0_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi20a0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI20A1_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi20a1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI40A0_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi40a0_r3 = common dso_local global i32 0, align 4
@B43_NTAB_TDI40A1_R3 = common dso_local global i32 0, align 4
@b43_ntab_tdi40a1_r3 = common dso_local global i32 0, align 4
@B43_NTAB_PILOTLT_R3 = common dso_local global i32 0, align 4
@b43_ntab_pilotlt_r3 = common dso_local global i32 0, align 4
@B43_NTAB_CHANEST_R3 = common dso_local global i32 0, align 4
@b43_ntab_channelest_r3 = common dso_local global i32 0, align 4
@B43_NTAB_FRAMELT_R3 = common dso_local global i32 0, align 4
@b43_ntab_framelookup_r3 = common dso_local global i32 0, align 4
@b43_ntab_antswctl_r3 = common dso_local global i32* null, align 8
@B43_NTAB_ANT_SW_CTL_R3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tables_init_rev3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tables_init_rev3(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.ssb_sprom*, %struct.ssb_sprom** %8, align 8
  store %struct.ssb_sprom* %9, %struct.ssb_sprom** %3, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @b43_current_band(i32 %12)
  %14 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %18 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %24 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %93

34:                                               ; preds = %28
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = load i32, i32* @B43_NTAB_FRAMESTRUCT_R3, align 4
  %37 = load i32, i32* @b43_ntab_framestruct_r3, align 4
  %38 = call i32 @ntab_upload(%struct.b43_wldev* %35, i32 %36, i32 %37)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_NTAB_PILOT_R3, align 4
  %41 = load i32, i32* @b43_ntab_pilot_r3, align 4
  %42 = call i32 @ntab_upload(%struct.b43_wldev* %39, i32 %40, i32 %41)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @B43_NTAB_TMAP_R3, align 4
  %45 = load i32, i32* @b43_ntab_tmap_r3, align 4
  %46 = call i32 @ntab_upload(%struct.b43_wldev* %43, i32 %44, i32 %45)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @B43_NTAB_INTLEVEL_R3, align 4
  %49 = load i32, i32* @b43_ntab_intlevel_r3, align 4
  %50 = call i32 @ntab_upload(%struct.b43_wldev* %47, i32 %48, i32 %49)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = load i32, i32* @B43_NTAB_TDTRN_R3, align 4
  %53 = load i32, i32* @b43_ntab_tdtrn_r3, align 4
  %54 = call i32 @ntab_upload(%struct.b43_wldev* %51, i32 %52, i32 %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B43_NTAB_NOISEVAR_R3, align 4
  %57 = load i32, i32* @b43_ntab_noisevar_r3, align 4
  %58 = call i32 @ntab_upload(%struct.b43_wldev* %55, i32 %56, i32 %57)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = load i32, i32* @B43_NTAB_MCS_R3, align 4
  %61 = load i32, i32* @b43_ntab_mcs_r3, align 4
  %62 = call i32 @ntab_upload(%struct.b43_wldev* %59, i32 %60, i32 %61)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = load i32, i32* @B43_NTAB_TDI20A0_R3, align 4
  %65 = load i32, i32* @b43_ntab_tdi20a0_r3, align 4
  %66 = call i32 @ntab_upload(%struct.b43_wldev* %63, i32 %64, i32 %65)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = load i32, i32* @B43_NTAB_TDI20A1_R3, align 4
  %69 = load i32, i32* @b43_ntab_tdi20a1_r3, align 4
  %70 = call i32 @ntab_upload(%struct.b43_wldev* %67, i32 %68, i32 %69)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = load i32, i32* @B43_NTAB_TDI40A0_R3, align 4
  %73 = load i32, i32* @b43_ntab_tdi40a0_r3, align 4
  %74 = call i32 @ntab_upload(%struct.b43_wldev* %71, i32 %72, i32 %73)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_NTAB_TDI40A1_R3, align 4
  %77 = load i32, i32* @b43_ntab_tdi40a1_r3, align 4
  %78 = call i32 @ntab_upload(%struct.b43_wldev* %75, i32 %76, i32 %77)
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = load i32, i32* @B43_NTAB_PILOTLT_R3, align 4
  %81 = load i32, i32* @b43_ntab_pilotlt_r3, align 4
  %82 = call i32 @ntab_upload(%struct.b43_wldev* %79, i32 %80, i32 %81)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = load i32, i32* @B43_NTAB_CHANEST_R3, align 4
  %85 = load i32, i32* @b43_ntab_channelest_r3, align 4
  %86 = call i32 @ntab_upload(%struct.b43_wldev* %83, i32 %84, i32 %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B43_NTAB_FRAMELT_R3, align 4
  %89 = load i32, i32* @b43_ntab_framelookup_r3, align 4
  %90 = call i32 @ntab_upload(%struct.b43_wldev* %87, i32 %88, i32 %89)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = call i32 @b43_nphy_tables_init_shared_lut(%struct.b43_wldev* %91)
  br label %93

93:                                               ; preds = %34, %28
  %94 = load i64, i64* %4, align 8
  %95 = load i32*, i32** @b43_ntab_antswctl_r3, align 8
  %96 = call i64 @ARRAY_SIZE(i32* %95)
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = load i32, i32* @B43_NTAB_ANT_SW_CTL_R3, align 4
  %101 = load i32*, i32** @b43_ntab_antswctl_r3, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ntab_upload(%struct.b43_wldev* %99, i32 %100, i32 %104)
  br label %108

106:                                              ; preds = %93
  %107 = call i32 @B43_WARN_ON(i32 1)
  br label %108

108:                                              ; preds = %106, %98
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @ntab_upload(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_tables_init_shared_lut(%struct.b43_wldev*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
