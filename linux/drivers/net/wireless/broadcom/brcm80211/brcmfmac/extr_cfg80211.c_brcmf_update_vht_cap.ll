; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_update_vht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_update_vht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@WLC_BW_160MHZ_BIT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_9 = common dso_local global i32 0, align 4
@BRCMF_TXBF_SU_BFE_CAP = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@BRCMF_TXBF_MU_BFE_CAP = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@BRCMF_TXBF_SU_BFR_CAP = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@BRCMF_TXBF_MU_BFR_CAP = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_VHT_LINK_ADAPTATION_VHT_MRQ_MFB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_supported_band*, i32*, i32, i32, i32, i32)* @brcmf_update_vht_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_update_vht_cap(%struct.ieee80211_supported_band* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ieee80211_supported_band* %0, %struct.ieee80211_supported_band** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %145

20:                                               ; preds = %6
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WLC_BW_160MHZ_BIT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %20
  %40 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %41 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_160, align 4
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %39, %20
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %55 = call i8* @brcmf_get_mcs_map(i32 %53, i32 %54)
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i8* %56, i8** %60, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @BRCMF_TXBF_SU_BFE_CAP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %52
  %71 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %72 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %73 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %70, %52
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @BRCMF_TXBF_MU_BFE_CAP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMEE_CAPABLE, align 4
  %84 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @BRCMF_TXBF_SU_BFR_CAP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMER_CAPABLE, align 4
  %96 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @BRCMF_TXBF_MU_BFR_CAP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i32, i32* @IEEE80211_VHT_CAP_MU_BEAMFORMER_CAPABLE, align 4
  %108 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %109 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %101
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %10, align 4
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %122, label %145

122:                                              ; preds = %119
  %123 = load i32, i32* @IEEE80211_VHT_CAP_BEAMFORMEE_STS_SHIFT, align 4
  %124 = shl i32 2, %123
  %125 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* @IEEE80211_VHT_CAP_SOUNDING_DIMENSIONS_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* @IEEE80211_VHT_CAP_VHT_LINK_ADAPTATION_VHT_MRQ_MFB, align 4
  %140 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %141 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %19, %122, %119, %116
  ret void
}

declare dso_local i8* @brcmf_get_mcs_map(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
