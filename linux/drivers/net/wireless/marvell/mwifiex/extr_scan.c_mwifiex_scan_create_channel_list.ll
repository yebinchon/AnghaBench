; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_scan_create_channel_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_scan_create_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_5__, %struct.mwifiex_adapter* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64 }
%struct.mwifiex_adapter = type { i32, i32, i32 }
%struct.mwifiex_user_scan_cfg = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.mwifiex_chan_scan_param_set = type { i32, i32, i8*, i64 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@MWIFIEX_PASSIVE_SCAN = common dso_local global i32 0, align 4
@MWIFIEX_HIDDEN_SSID_REPORT = common dso_local global i32 0, align 4
@MWIFIEX_DISABLE_CHAN_FILT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_chan_scan_param_set*, i64)* @mwifiex_scan_create_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_scan_create_channel_list(%struct.mwifiex_private* %0, %struct.mwifiex_user_scan_cfg* %1, %struct.mwifiex_chan_scan_param_set* %2, i64 %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_user_scan_cfg*, align 8
  %7 = alloca %struct.mwifiex_chan_scan_param_set*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca %struct.mwifiex_adapter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_user_scan_cfg* %1, %struct.mwifiex_user_scan_cfg** %6, align 8
  store %struct.mwifiex_chan_scan_param_set* %2, %struct.mwifiex_chan_scan_param_set** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 1
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %16, align 8
  store %struct.mwifiex_adapter* %17, %struct.mwifiex_adapter** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %210, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %213

22:                                               ; preds = %18
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %28, i64 %30
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %31, align 8
  %33 = icmp ne %struct.ieee80211_supported_band* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %210

35:                                               ; preds = %22
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %41, i64 %43
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %44, align 8
  store %struct.ieee80211_supported_band* %45, %struct.ieee80211_supported_band** %10, align 8
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %206, %35
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %209

52:                                               ; preds = %46
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %54 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %53, i32 0, i32 1
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i64 %57
  store %struct.ieee80211_channel* %58, %struct.ieee80211_channel** %11, align 8
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %60 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %206

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %68, i64 %70
  %72 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 8
  %73 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %6, align 8
  %74 = icmp ne %struct.mwifiex_user_scan_cfg* %73, null
  br i1 %74, label %75, label %97

75:                                               ; preds = %66
  %76 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %6, align 8
  %77 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %75
  %84 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %6, align 8
  %85 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %92, i64 %94
  %96 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %95, i32 0, i32 2
  store i8* %91, i8** %96, align 8
  br label %132

97:                                               ; preds = %75, %66
  %98 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %99 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %106 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104, %97
  %112 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %113 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @cpu_to_le16(i32 %114)
  %116 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %7, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %116, i64 %118
  %120 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %119, i32 0, i32 2
  store i8* %115, i8** %120, align 8
  br label %131

121:                                              ; preds = %104
  %122 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %123 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @cpu_to_le16(i32 %124)
  %126 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %7, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %126, i64 %128
  %130 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %129, i32 0, i32 2
  store i8* %125, i8** %130, align 8
  br label %131

131:                                              ; preds = %121, %111
  br label %132

132:                                              ; preds = %131, %83
  %133 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %134 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %132
  %140 = load i32, i32* @MWIFIEX_PASSIVE_SCAN, align 4
  %141 = load i32, i32* @MWIFIEX_HIDDEN_SSID_REPORT, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %7, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %143, i64 %145
  %147 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %142
  store i32 %149, i32* %147, align 4
  br label %160

150:                                              ; preds = %132
  %151 = load i32, i32* @MWIFIEX_PASSIVE_SCAN, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %7, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %153, i64 %155
  %157 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %152
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %150, %139
  %161 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %162 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %7, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %164, i64 %166
  %168 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %167, i32 0, i32 3
  store i64 %163, i64* %168, align 8
  %169 = load i32, i32* @MWIFIEX_DISABLE_CHAN_FILT, align 4
  %170 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %7, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %170, i64 %172
  %174 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %169
  store i32 %176, i32* %174, align 4
  %177 = load i64, i64* %8, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %203

179:                                              ; preds = %160
  %180 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %181 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %203, label %186

186:                                              ; preds = %179
  %187 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %188 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %186
  %194 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %195 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @cpu_to_le16(i32 %196)
  %198 = load %struct.mwifiex_chan_scan_param_set*, %struct.mwifiex_chan_scan_param_set** %7, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %198, i64 %200
  %202 = getelementptr inbounds %struct.mwifiex_chan_scan_param_set, %struct.mwifiex_chan_scan_param_set* %201, i32 0, i32 2
  store i8* %197, i8** %202, align 8
  br label %203

203:                                              ; preds = %193, %186, %179, %160
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %206

206:                                              ; preds = %203, %65
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %46

209:                                              ; preds = %46
  br label %210

210:                                              ; preds = %209, %34
  %211 = load i32, i32* %9, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %9, align 4
  br label %18

213:                                              ; preds = %18
  %214 = load i32, i32* %13, align 4
  ret i32 %214
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
