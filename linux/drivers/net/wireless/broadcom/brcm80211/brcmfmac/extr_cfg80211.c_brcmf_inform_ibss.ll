; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_inform_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_inform_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32, %struct.TYPE_2__, %struct.brcmf_pub* }
%struct.TYPE_2__ = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i32, i64, i32 }
%struct.brcmf_pub = type { i32 }
%struct.net_device = type { i32 }
%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.brcmf_bss_info_le = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bss = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@WL_BSS_INFO_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRCMF_C_GET_BSS_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"WLC_GET_BSS_INFO failed: %d\0A\00", align 1
@BRCMU_CHAN_BAND_2G = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"channel: %d(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"capability: %X\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"beacon interval: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"signal: %d\0A\00", align 1
@CFG80211_BSS_FTYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*, %struct.net_device*, i32*)* @brcmf_inform_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_inform_ibss(%struct.brcmf_cfg80211_info* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.brcmf_bss_info_le*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca %struct.cfg80211_bss*, align 8
  %13 = alloca %struct.brcmu_chan, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32* %2, i32** %6, align 8
  %22 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %23 = call %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info* %22)
  store %struct.wiphy* %23, %struct.wiphy** %7, align 8
  %24 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %25 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %24, i32 0, i32 2
  %26 = load %struct.brcmf_pub*, %struct.brcmf_pub** %25, align 8
  store %struct.brcmf_pub* %26, %struct.brcmf_pub** %8, align 8
  store %struct.brcmf_bss_info_le* null, %struct.brcmf_bss_info_le** %10, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %27 = load i32, i32* @TRACE, align 4
  %28 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @WL_BSS_INFO_MAX, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @kzalloc(i32 %29, i32 %30)
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  br label %157

37:                                               ; preds = %3
  %38 = load i32, i32* @WL_BSS_INFO_MAX, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = load i32*, i32** %14, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i32 @netdev_priv(%struct.net_device* %41)
  %43 = load i32, i32* @BRCMF_C_GET_BSS_INFO, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* @WL_BSS_INFO_MAX, align 4
  %46 = call i32 @brcmf_fil_cmd_data_get(i32 %42, i32 %43, i32* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @bphy_err(%struct.brcmf_pub* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %157

53:                                               ; preds = %37
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = bitcast i32* %55 to %struct.brcmf_bss_info_le*
  store %struct.brcmf_bss_info_le* %56, %struct.brcmf_bss_info_le** %10, align 8
  %57 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %10, align 8
  %58 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %63 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %64, align 8
  %66 = call i32 %65(%struct.brcmu_chan* %13)
  %67 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BRCMU_CHAN_BAND_2G, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %53
  %72 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %73 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %72, i32 0, i32 0
  %74 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %73, align 8
  %75 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %76 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %74, i64 %75
  %77 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %76, align 8
  store %struct.ieee80211_supported_band* %77, %struct.ieee80211_supported_band** %11, align 8
  br label %85

78:                                               ; preds = %53
  %79 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %80 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %79, i32 0, i32 0
  %81 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %80, align 8
  %82 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %83 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %81, i64 %82
  %84 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %83, align 8
  store %struct.ieee80211_supported_band* %84, %struct.ieee80211_supported_band** %11, align 8
  br label %85

85:                                               ; preds = %78, %71
  %86 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ieee80211_channel_to_frequency(i32 %87, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %94 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %95, i32 %96)
  store %struct.ieee80211_channel* %97, %struct.ieee80211_channel** %9, align 8
  %98 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %10, align 8
  %99 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %10, align 8
  %103 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le16_to_cpu(i32 %104)
  store i32 %105, i32* %18, align 4
  %106 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %10, align 8
  %107 = bitcast %struct.brcmf_bss_info_le* %106 to i32*
  %108 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %10, align 8
  %109 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le16_to_cpu(i32 %110)
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  store i32* %113, i32** %19, align 8
  %114 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %10, align 8
  %115 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @le32_to_cpu(i32 %116)
  store i64 %117, i64* %20, align 8
  %118 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %10, align 8
  %119 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le16_to_cpu(i32 %120)
  %122 = mul nsw i32 %121, 100
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* @CONN, align 4
  %124 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %13, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load i32, i32* @CONN, align 4
  %129 = load i32, i32* %17, align 4
  %130 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @CONN, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @CONN, align 4
  %135 = load i32, i32* %21, align 4
  %136 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  %137 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %138 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %139 = load i32, i32* @CFG80211_BSS_FTYPE_UNKNOWN, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32*, i32** %19, align 8
  %144 = load i64, i64* %20, align 8
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call %struct.cfg80211_bss* @cfg80211_inform_bss(%struct.wiphy* %137, %struct.ieee80211_channel* %138, i32 %139, i32* %140, i32 0, i32 %141, i32 %142, i32* %143, i64 %144, i32 %145, i32 %146)
  store %struct.cfg80211_bss* %147, %struct.cfg80211_bss** %12, align 8
  %148 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %12, align 8
  %149 = icmp ne %struct.cfg80211_bss* %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %85
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %15, align 4
  br label %157

153:                                              ; preds = %85
  %154 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %155 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %12, align 8
  %156 = call i32 @cfg80211_put_bss(%struct.wiphy* %154, %struct.cfg80211_bss* %155)
  br label %157

157:                                              ; preds = %153, %150, %49, %34
  %158 = load i32*, i32** %14, align 8
  %159 = call i32 @kfree(i32* %158)
  %160 = load i32, i32* @TRACE, align 4
  %161 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32, i32* %15, align 4
  ret i32 %162
}

declare dso_local %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @brcmf_fil_cmd_data_get(i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss(%struct.wiphy*, %struct.ieee80211_channel*, i32, i32*, i32, i32, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.cfg80211_bss*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
