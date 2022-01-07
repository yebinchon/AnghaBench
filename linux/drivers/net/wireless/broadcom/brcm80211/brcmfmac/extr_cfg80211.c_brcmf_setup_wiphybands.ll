; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_setup_wiphybands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_setup_wiphybands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_if = type { i32 }
%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }

@WLC_BW_20MHZ_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vhtmode\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"nmode\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"nmode error (%d)\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"nmode=%d, vhtmode=%d, bw_cap=(%d, %d)\0A\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"rxchain\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"rxchain error (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"nchain=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"brcmf_construct_chaninfo failed (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"txstreams\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"txbf_bfe_cap\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"txbf_bfr_cap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*)* @brcmf_setup_wiphybands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_setup_wiphybands(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ieee80211_supported_band*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %3, align 8
  %18 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %18, i32 0, i32 0
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %19, align 8
  store %struct.brcmf_pub* %20, %struct.brcmf_pub** %4, align 8
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %22 = call %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %21, i32 0)
  store %struct.brcmf_if* %22, %struct.brcmf_if** %5, align 8
  %23 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %24 = call %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info* %23)
  store %struct.wiphy* %24, %struct.wiphy** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %26 = load i32, i32* @WLC_BW_20MHZ_BIT, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @WLC_BW_20MHZ_BIT, align 4
  store i32 %28, i32* %27, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %29 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %30 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %8)
  %31 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %32 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @bphy_err(%struct.brcmf_pub* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %43

39:                                               ; preds = %1
  %40 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %42 = call i32 @brcmf_get_bwcap(%struct.brcmf_if* %40, i32* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @INFO, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %55 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @bphy_err(%struct.brcmf_pub* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  store i32 1, i32* %11, align 4
  br label %75

62:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %71, %62
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %67, %69
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %63

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32, i32* @INFO, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %81 = call i32 @brcmf_construct_chaninfo(%struct.brcmf_cfg80211_info* %79, i32* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @bphy_err(%struct.brcmf_pub* %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %2, align 4
  br label %141

89:                                               ; preds = %75
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %94 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %15)
  %95 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %96 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %16)
  %97 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %98 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32* %17)
  br label %99

99:                                               ; preds = %92, %89
  store i64 0, i64* %13, align 8
  br label %100

100:                                              ; preds = %137, %99
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %103 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %102, i32 0, i32 0
  %104 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %103, align 8
  %105 = call i64 @ARRAY_SIZE(%struct.ieee80211_supported_band** %104)
  %106 = icmp ult i64 %101, %105
  br i1 %106, label %107, label %140

107:                                              ; preds = %100
  %108 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %109 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %108, i32 0, i32 0
  %110 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %110, i64 %111
  %113 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %112, align 8
  store %struct.ieee80211_supported_band* %113, %struct.ieee80211_supported_band** %14, align 8
  %114 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %115 = icmp eq %struct.ieee80211_supported_band* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %137

117:                                              ; preds = %107
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @brcmf_update_ht_cap(%struct.ieee80211_supported_band* %121, i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @brcmf_update_vht_cap(%struct.ieee80211_supported_band* %129, i32* %130, i32 %131, i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %128, %125
  br label %137

137:                                              ; preds = %136, %116
  %138 = load i64, i64* %13, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %13, align 8
  br label %100

140:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %84
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if*, i8*, i32*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @brcmf_get_bwcap(%struct.brcmf_if*, i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @brcmf_construct_chaninfo(%struct.brcmf_cfg80211_info*, i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.ieee80211_supported_band**) #1

declare dso_local i32 @brcmf_update_ht_cap(%struct.ieee80211_supported_band*, i32*, i32) #1

declare dso_local i32 @brcmf_update_vht_cap(%struct.ieee80211_supported_band*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
