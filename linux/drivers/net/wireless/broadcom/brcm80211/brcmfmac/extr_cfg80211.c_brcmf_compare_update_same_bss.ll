; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_compare_update_same_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_compare_update_same_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type { i64, i8* }
%struct.brcmf_bss_info_le = type { i64, i32, i32, i32*, i32, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@BRCMF_BSS_RSSI_ON_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*, %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le*)* @brcmf_compare_update_same_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_compare_update_same_bss(%struct.brcmf_cfg80211_info* %0, %struct.brcmf_bss_info_le* %1, %struct.brcmf_bss_info_le* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_cfg80211_info*, align 8
  %6 = alloca %struct.brcmf_bss_info_le*, align 8
  %7 = alloca %struct.brcmf_bss_info_le*, align 8
  %8 = alloca %struct.brcmu_chan, align 8
  %9 = alloca %struct.brcmu_chan, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %5, align 8
  store %struct.brcmf_bss_info_le* %1, %struct.brcmf_bss_info_le** %6, align 8
  store %struct.brcmf_bss_info_le* %2, %struct.brcmf_bss_info_le** %7, align 8
  %12 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %13 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le16_to_cpu(i32 %14)
  %16 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %8, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %19, align 8
  %21 = call i32 %20(%struct.brcmu_chan* %8)
  %22 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %23 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @le16_to_cpu(i32 %24)
  %26 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %9, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %28 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %29, align 8
  %31 = call i32 %30(%struct.brcmu_chan* %9)
  %32 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %33 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %32, i32 0, i32 4
  %34 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %35 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %34, i32 0, i32 4
  %36 = load i64, i64* @ETH_ALEN, align 8
  %37 = call i32 @memcmp(i32* %33, i32* %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %125, label %39

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.brcmu_chan, %struct.brcmu_chan* %9, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %125

45:                                               ; preds = %39
  %46 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %47 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %50 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %125

53:                                               ; preds = %45
  %54 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %55 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %58 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %61 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @memcmp(i32* %56, i32* %59, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %125, label %65

65:                                               ; preds = %53
  %66 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %67 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BRCMF_BSS_RSSI_ON_CHANNEL, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %72 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BRCMF_BSS_RSSI_ON_CHANNEL, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %70, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %65
  %78 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %79 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le16_to_cpu(i32 %80)
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %10, align 8
  %83 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %84 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le16_to_cpu(i32 %85)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %77
  %92 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %93 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %96 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %77
  br label %124

98:                                               ; preds = %65
  %99 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %100 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BRCMF_BSS_RSSI_ON_CHANNEL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %107 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BRCMF_BSS_RSSI_ON_CHANNEL, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %7, align 8
  %114 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %117 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @BRCMF_BSS_RSSI_ON_CHANNEL, align 4
  %119 = load %struct.brcmf_bss_info_le*, %struct.brcmf_bss_info_le** %6, align 8
  %120 = getelementptr inbounds %struct.brcmf_bss_info_le, %struct.brcmf_bss_info_le* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %112, %105, %98
  br label %124

124:                                              ; preds = %123, %97
  store i32 1, i32* %4, align 4
  br label %126

125:                                              ; preds = %53, %45, %39, %3
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %124
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
