; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_bss_roaming_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_bss_roaming_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.brcmf_event_msg = type { i32 }
%struct.brcmf_if = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.brcmf_cfg80211_profile }
%struct.brcmf_cfg80211_profile = type { i32 }
%struct.brcmf_cfg80211_connect_info = type { i32, i32, i32, i32 }
%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.brcmf_bss_info_le = type { i32 }
%struct.cfg80211_roam_info = type { i32, i32, i32, i32, i32, %struct.ieee80211_channel* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WL_BSS_INFO_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRCMF_C_GET_BSS_INFO = common dso_local global i32 0, align 4
@BRCMU_CHAN_BAND_2G = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Report roaming result\0A\00", align 1
@BRCMF_VIF_STATUS_CONNECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*, %struct.net_device*, %struct.brcmf_event_msg*)* @brcmf_bss_roaming_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_bss_roaming_done(%struct.brcmf_cfg80211_info* %0, %struct.net_device* %1, %struct.brcmf_event_msg* %2) #0 {
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.brcmf_event_msg*, align 8
  %7 = alloca %struct.brcmf_if*, align 8
  %8 = alloca %struct.brcmf_cfg80211_profile*, align 8
  %9 = alloca %struct.brcmf_cfg80211_connect_info*, align 8
  %10 = alloca %struct.wiphy*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca %struct.brcmf_bss_info_le*, align 8
  %14 = alloca %struct.brcmu_chan, align 8
  %15 = alloca %struct.cfg80211_roam_info, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.brcmf_event_msg* %2, %struct.brcmf_event_msg** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %19)
  store %struct.brcmf_if* %20, %struct.brcmf_if** %7, align 8
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %22 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store %struct.brcmf_cfg80211_profile* %24, %struct.brcmf_cfg80211_profile** %8, align 8
  %25 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %26 = call %struct.brcmf_cfg80211_connect_info* @cfg_to_conn(%struct.brcmf_cfg80211_info* %25)
  store %struct.brcmf_cfg80211_connect_info* %26, %struct.brcmf_cfg80211_connect_info** %9, align 8
  %27 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %28 = call %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info* %27)
  store %struct.wiphy* %28, %struct.wiphy** %10, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %11, align 8
  %29 = bitcast %struct.cfg80211_roam_info* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 32, i1 false)
  store i32 0, i32* %17, align 4
  %30 = load i32, i32* @TRACE, align 4
  %31 = call i32 @brcmf_dbg(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %33 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %34 = call i32 @brcmf_get_assoc_ies(%struct.brcmf_cfg80211_info* %32, %struct.brcmf_if* %33)
  %35 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %8, align 8
  %36 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %39 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %37, i32 %40, i32 %41)
  %43 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %44 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %45 = call i32 @brcmf_update_bss_info(%struct.brcmf_cfg80211_info* %43, %struct.brcmf_if* %44)
  %46 = load i32, i32* @WL_BSS_INFO_MAX, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @kzalloc(i32 %46, i32 %47)
  store i32* %48, i32** %18, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %17, align 4
  br label %108

54:                                               ; preds = %3
  %55 = load i32, i32* @WL_BSS_INFO_MAX, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load i32*, i32** %18, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %59 = load i32, i32* @BRCMF_C_GET_BSS_INFO, align 4
  %60 = load i32*, i32** %18, align 8
  %61 = load i32, i32* @WL_BSS_INFO_MAX, align 4
  %62 = call i32 @brcmf_fil_cmd_data_get(%struct.brcmf_if* %58, i32 %59, i32* %60, i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %108

66:                                               ; preds = %54
  %67 = load i32*, i32** %18, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = bitcast i32* %68 to %struct.brcmf_bss_info_le*
  store %struct.brcmf_bss_info_le* %69, %struct.brcmf_bss_info_le** %13, align 8
  %70 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %13, align 8
  %71 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %14, i32 0, i32 2
  store i32 %73, i32* %74, align 4
  %75 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %76 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %77, align 8
  %79 = call i32 %78(%struct.brcmu_chan* %14)
  %80 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %14, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @BRCMU_CHAN_BAND_2G, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %66
  %85 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %86 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %85, i32 0, i32 0
  %87 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %86, align 8
  %88 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %89 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %87, i64 %88
  %90 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %89, align 8
  store %struct.ieee80211_supported_band* %90, %struct.ieee80211_supported_band** %12, align 8
  br label %98

91:                                               ; preds = %66
  %92 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %93 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %92, i32 0, i32 0
  %94 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %93, align 8
  %95 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %96 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %94, i64 %95
  %97 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %96, align 8
  store %struct.ieee80211_supported_band* %97, %struct.ieee80211_supported_band** %12, align 8
  br label %98

98:                                               ; preds = %91, %84
  %99 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %14, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %102 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ieee80211_channel_to_frequency(i32 %100, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %105, i32 %106)
  store %struct.ieee80211_channel* %107, %struct.ieee80211_channel** %11, align 8
  br label %108

108:                                              ; preds = %98, %65, %51
  %109 = load i32*, i32** %18, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %112 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %15, i32 0, i32 5
  store %struct.ieee80211_channel* %111, %struct.ieee80211_channel** %112, align 8
  %113 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %8, align 8
  %114 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %15, i32 0, i32 4
  store i32 %115, i32* %116, align 8
  %117 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %9, align 8
  %118 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %15, i32 0, i32 3
  store i32 %119, i32* %120, align 4
  %121 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %9, align 8
  %122 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %15, i32 0, i32 2
  store i32 %123, i32* %124, align 8
  %125 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %9, align 8
  %126 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %15, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %9, align 8
  %130 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %15, i32 0, i32 0
  store i32 %131, i32* %132, align 8
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i32 @cfg80211_roamed(%struct.net_device* %133, %struct.cfg80211_roam_info* %15, i32 %134)
  %136 = load i32, i32* @CONN, align 4
  %137 = call i32 @brcmf_dbg(i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTED, align 4
  %139 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %140 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = call i32 @set_bit(i32 %138, i32* %142)
  %144 = load i32, i32* @TRACE, align 4
  %145 = call i32 @brcmf_dbg(i32 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %146 = load i32, i32* %17, align 4
  ret i32 %146
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.brcmf_cfg80211_connect_info* @cfg_to_conn(%struct.brcmf_cfg80211_info*) #1

declare dso_local %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_get_assoc_ies(%struct.brcmf_cfg80211_info*, %struct.brcmf_if*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @brcmf_update_bss_info(%struct.brcmf_cfg80211_info*, %struct.brcmf_if*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @brcmf_fil_cmd_data_get(%struct.brcmf_if*, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cfg80211_roamed(%struct.net_device*, %struct.cfg80211_roam_info*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
