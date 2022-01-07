; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_inform_single_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_inform_single_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.TYPE_2__, %struct.brcmf_pub* }
%struct.TYPE_2__ = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i32, i64 }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_bss_info_le = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.cfg80211_inform_bss = type { i32, i32, i32, i32 }

@WL_BSS_INFO_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Bss info is larger than buffer. Discarding\0A\00", align 1
@CH_MAX_2G_CHANNEL = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BSS_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"bssid: %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Channel: %d(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Capability: %X\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Beacon interval: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Signal: %d\0A\00", align 1
@CFG80211_BSS_FTYPE_UNKNOWN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*, %struct.brcmf_bss_info_le*)* @brcmf_inform_single_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_inform_single_bss(%struct.brcmf_cfg80211_info* %0, %struct.brcmf_bss_info_le* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_cfg80211_info*, align 8
  %5 = alloca %struct.brcmf_bss_info_le*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.brcmf_pub*, align 8
  %8 = alloca %struct.cfg80211_bss*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.brcmu_chan, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.cfg80211_inform_bss, align 4
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %4, align 8
  store %struct.brcmf_bss_info_le* %1, %struct.brcmf_bss_info_le** %5, align 8
  %18 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %19 = call %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info* %18)
  store %struct.wiphy* %19, %struct.wiphy** %6, align 8
  %20 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %21 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %20, i32 0, i32 1
  %22 = load %struct.brcmf_pub*, %struct.brcmf_pub** %21, align 8
  store %struct.brcmf_pub* %22, %struct.brcmf_pub** %7, align 8
  %23 = bitcast %struct.cfg80211_inform_bss* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 16, i1 false)
  %24 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %25 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @le32_to_cpu(i32 %26)
  %28 = load i64, i64* @WL_BSS_INFO_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.brcmf_pub*, %struct.brcmf_pub** %7, align 8
  %32 = call i32 @bphy_err(%struct.brcmf_pub* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %146

33:                                               ; preds = %2
  %34 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %35 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %40 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %4, align 8
  %45 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %46, align 8
  %48 = call i32 %47(%struct.brcmu_chan* %10)
  %49 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %10, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %52 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %38, %33
  %54 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %55 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %61, i32* %9, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ieee80211_channel_to_frequency(i64 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ieee80211_get_channel(%struct.wiphy* %68, i32 %69)
  %71 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %17, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @NL80211_BSS_CHAN_WIDTH_20, align 4
  %73 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %17, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = call i32 (...) @ktime_get_boottime()
  %75 = call i32 @ktime_to_ns(i32 %74)
  %76 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %17, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %78 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %13, align 8
  %82 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %83 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %14, align 8
  %87 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %88 = bitcast %struct.brcmf_bss_info_le* %87 to i32*
  %89 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %90 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  store i32* %94, i32** %15, align 8
  %95 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %96 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @le32_to_cpu(i32 %97)
  store i64 %98, i64* %16, align 8
  %99 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %100 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = mul nsw i32 %102, 100
  %104 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %17, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @CONN, align 4
  %106 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %107 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @CONN, align 4
  %111 = load i64, i64* %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %111, i32 %112)
  %114 = load i32, i32* @CONN, align 4
  %115 = load i64, i64* %13, align 8
  %116 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* @CONN, align 4
  %118 = load i64, i64* %14, align 8
  %119 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  %120 = load i32, i32* @CONN, align 4
  %121 = getelementptr inbounds %struct.cfg80211_inform_bss, %struct.cfg80211_inform_bss* %17, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %123)
  %125 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %126 = load i32, i32* @CFG80211_BSS_FTYPE_UNKNOWN, align 4
  %127 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %5, align 8
  %128 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = load i64, i64* %16, align 8
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call %struct.cfg80211_bss* @cfg80211_inform_bss_data(%struct.wiphy* %125, %struct.cfg80211_inform_bss* %17, i32 %126, i32* %130, i32 0, i64 %131, i64 %132, i32* %133, i64 %134, i32 %135)
  store %struct.cfg80211_bss* %136, %struct.cfg80211_bss** %8, align 8
  %137 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %138 = icmp ne %struct.cfg80211_bss* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %64
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %146

142:                                              ; preds = %64
  %143 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %144 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %145 = call i32 @cfg80211_put_bss(%struct.wiphy* %143, %struct.cfg80211_bss* %144)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %139, %30
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.wiphy* @cfg_to_wiphy(%struct.brcmf_cfg80211_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i64, i32) #1

declare dso_local i32 @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_boottime(...) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, ...) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_inform_bss_data(%struct.wiphy*, %struct.cfg80211_inform_bss*, i32, i32*, i32, i64, i64, i32*, i64, i32) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.cfg80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
