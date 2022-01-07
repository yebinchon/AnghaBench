; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_bitrate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_set_bitrate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32* }
%struct.mwifiex_private = type { %struct.TYPE_3__, i32, %struct.mwifiex_adapter* }
%struct.TYPE_3__ = type { i32 }
%struct.mwifiex_adapter = type { i64, i64 }

@MAX_BITMAP_RATES_SIZE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Can not set Tx data rate in disconnected state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@HT_STREAM_2X2 = common dso_local global i64 0, align 8
@MWIFIEX_FW_V15 = common dso_local global i64 0, align 8
@HostCmd_CMD_TX_RATE_CFG = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.cfg80211_bitrate_mask*)* @mwifiex_cfg80211_set_bitrate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_set_bitrate_mask(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.cfg80211_bitrate_mask* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %10 = alloca %struct.mwifiex_private*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mwifiex_adapter*, align 8
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.cfg80211_bitrate_mask* %3, %struct.cfg80211_bitrate_mask** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %16)
  store %struct.mwifiex_private* %17, %struct.mwifiex_private** %10, align 8
  %18 = load i32, i32* @MAX_BITMAP_RATES_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 2
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %23, align 8
  store %struct.mwifiex_adapter* %24, %struct.mwifiex_adapter** %14, align 8
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %30, i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %157

35:                                               ; preds = %4
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mwifiex_band_to_radio_type(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = mul nuw i64 4, %19
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32* %21, i32 0, i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %9, align 8
  %49 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 15
  %57 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %56, i32* %57, align 16
  br label %58

58:                                               ; preds = %47, %35
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %9, align 8
  %64 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 4080
  %72 = ashr i32 %71, 4
  %73 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %72, i32* %73, align 4
  br label %84

74:                                               ; preds = %58
  %75 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %9, align 8
  %76 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %74, %62
  %85 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %9, align 8
  %86 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %94, i32* %95, align 8
  %96 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  %97 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HT_STREAM_2X2, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %84
  %102 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %9, align 8
  %103 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = getelementptr inbounds i32, i32* %21, i64 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %101, %84
  %117 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  %118 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MWIFIEX_FW_V15, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %152

122:                                              ; preds = %116
  %123 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %9, align 8
  %124 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds i32, i32* %21, i64 10
  store i32 %132, i32* %133, align 8
  %134 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  %135 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @HT_STREAM_2X2, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %122
  %140 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %9, align 8
  %141 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds i32, i32* %21, i64 11
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %139, %122
  br label %152

152:                                              ; preds = %151, %116
  %153 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %154 = load i32, i32* @HostCmd_CMD_TX_RATE_CFG, align 4
  %155 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %156 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %153, i32 %154, i32 %155, i32 0, i32* %21, i32 1)
  store i32 %156, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %157

157:                                              ; preds = %152, %29
  %158 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_band_to_radio_type(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
