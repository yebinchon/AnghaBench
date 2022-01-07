; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_bgscan_create_channel_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_bgscan_create_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_5__, %struct.mwifiex_adapter* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64 }
%struct.mwifiex_adapter = type { i32, i32 }
%struct.mwifiex_bg_scan_cfg = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.mwifiex_chan_scan_param_set = type { i32, i64, i32, i8* }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@MWIFIEX_PASSIVE_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_chan_scan_param_set*)* @mwifiex_bgscan_create_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_bgscan_create_channel_list(%struct.mwifiex_private* %0, %struct.mwifiex_bg_scan_cfg* %1, %struct.mwifiex_chan_scan_param_set* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_bg_scan_cfg*, align 8
  %6 = alloca %struct.mwifiex_chan_scan_param_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.mwifiex_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_bg_scan_cfg* %1, %struct.mwifiex_bg_scan_cfg** %5, align 8
  store %struct.mwifiex_chan_scan_param_set* %2, %struct.mwifiex_chan_scan_param_set** %6, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 1
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  store %struct.mwifiex_adapter* %15, %struct.mwifiex_adapter** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %161, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %164

20:                                               ; preds = %16
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %26, i64 %28
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %29, align 8
  %31 = icmp ne %struct.ieee80211_supported_band* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %161

33:                                               ; preds = %20
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %39, i64 %41
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %42, align 8
  store %struct.ieee80211_supported_band* %43, %struct.ieee80211_supported_band** %8, align 8
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %157, %33
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %160

50:                                               ; preds = %44
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %51, i32 0, i32 1
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i64 %55
  store %struct.ieee80211_channel* %56, %struct.ieee80211_channel** %9, align 8
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %157

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %66, i64 %68
  %70 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 8
  %71 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %5, align 8
  %72 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %64
  %79 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %5, align 8
  %80 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %87, i64 %89
  %91 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %90, i32 0, i32 3
  store i8* %86, i8** %91, align 8
  br label %120

92:                                               ; preds = %64
  %93 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %94 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %101 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @cpu_to_le16(i32 %102)
  %104 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %104, i64 %106
  %108 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %107, i32 0, i32 3
  store i8* %103, i8** %108, align 8
  br label %119

109:                                              ; preds = %92
  %110 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %111 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @cpu_to_le16(i32 %112)
  %114 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %114, i64 %116
  %118 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %117, i32 0, i32 3
  store i8* %113, i8** %118, align 8
  br label %119

119:                                              ; preds = %109, %99
  br label %120

120:                                              ; preds = %119, %78
  %121 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %122 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load i32, i32* @MWIFIEX_PASSIVE_SCAN, align 4
  %129 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %6, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %129, i64 %131
  %133 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %128
  store i32 %135, i32* %133, align 8
  br label %146

136:                                              ; preds = %120
  %137 = load i32, i32* @MWIFIEX_PASSIVE_SCAN, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %6, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %139, i64 %141
  %143 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %138
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %136, %127
  %147 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %148 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %6, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %150, i64 %152
  %154 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %153, i32 0, i32 1
  store i64 %149, i64* %154, align 8
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %146, %63
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %44

160:                                              ; preds = %44
  br label %161

161:                                              ; preds = %160, %32
  %162 = load i32, i32* %7, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %16

164:                                              ; preds = %16
  %165 = load i32, i32* %11, align 4
  ret i32 %165
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
