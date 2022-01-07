; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_ibss_join_existing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_ibss_join_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.lbs_private = type { i32 }
%struct.cfg80211_ibss_params = type { i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.cfg80211_bss = type { i32, i32 }
%struct.cmd_ds_802_11_ad_hoc_join = type { i8*, i8*, %struct.TYPE_18__, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i32*, i8*, %struct.TYPE_17__, %struct.TYPE_13__, i8*, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8* }

@RADIO_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_BSS_TYPE_IBSS = common dso_local global i32 0, align 4
@WLAN_EID_DS_PARAMS = common dso_local global i32 0, align 4
@WLAN_EID_IBSS_PARAMS = common dso_local global i32 0, align 4
@CAPINFO_MASK = common dso_local global i32 0, align 4
@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@lbs_rates = common dso_local global %struct.TYPE_19__* null, align 8
@MRVDRV_ASSOCIATION_TIME_OUT = common dso_local global i32 0, align 4
@CMD_SCAN_PROBE_DELAY_TIME = common dso_local global i32 0, align 4
@CMD_802_11_AD_HOC_JOIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cfg80211_ibss_params*, %struct.cfg80211_bss*)* @lbs_ibss_join_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_ibss_join_existing(%struct.lbs_private* %0, %struct.cfg80211_ibss_params* %1, %struct.cfg80211_bss* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca %struct.cfg80211_ibss_params*, align 8
  %6 = alloca %struct.cfg80211_bss*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cmd_ds_802_11_ad_hoc_join, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store %struct.cfg80211_ibss_params* %1, %struct.cfg80211_ibss_params** %5, align 8
  store %struct.cfg80211_bss* %2, %struct.cfg80211_bss** %6, align 8
  %17 = load i32, i32* @RADIO_PREAMBLE_SHORT, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @lbs_set_radio(%struct.lbs_private* %18, i32 %19, i32 1)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %204

24:                                               ; preds = %3
  %25 = call i32 @memset(%struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 96)
  %26 = call i8* @cpu_to_le16(i32 96)
  %27 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32 %31, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %5, align 8
  %41 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %5, align 8
  %44 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @memcpy(i32 %39, i32 %42, i32 %45)
  %47 = load i32, i32* @CMD_BSS_TYPE_IBSS, align 4
  %48 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %5, align 8
  %51 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @WLAN_EID_DS_PARAMS, align 4
  %57 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %5, align 8
  %66 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @WLAN_EID_IBSS_PARAMS, align 4
  %75 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  store i32 2, i32* %82, align 8
  %83 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %87 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CAPINFO_MASK, align 4
  %90 = and i32 %88, %89
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = call i32 (...) @rcu_read_lock()
  %95 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %96 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %97 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %95, i32 %96)
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %24
  %101 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @lbs_add_rates(i32* %103)
  br label %173

105:                                              ; preds = %24
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %13, align 4
  %109 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %169, %105
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lbs_rates, align 8
  %115 = call i32 @ARRAY_SIZE(%struct.TYPE_19__* %114)
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %172

117:                                              ; preds = %112
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** @lbs_rates, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 5
  store i32 %124, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %165, %117
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %168

129:                                              ; preds = %125
  %130 = load i32, i32* %15, align 4
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 127
  %138 = icmp eq i32 %130, %137
  br i1 %138, label %139, label %164

139:                                              ; preds = %129
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %157, label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %16, align 4
  %150 = icmp eq i32 %149, 4
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %16, align 4
  %153 = icmp eq i32 %152, 11
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %16, align 4
  %156 = icmp eq i32 %155, 22
  br i1 %156, label %157, label %160

157:                                              ; preds = %154, %151, %148, %139
  %158 = load i32, i32* %16, align 4
  %159 = or i32 %158, 128
  store i32 %159, i32* %16, align 4
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* %16, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %14, align 8
  store i32 %161, i32* %162, align 4
  br label %164

164:                                              ; preds = %160, %129
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %125

168:                                              ; preds = %125
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %112

172:                                              ; preds = %112
  br label %173

173:                                              ; preds = %172, %100
  %174 = call i32 (...) @rcu_read_unlock()
  %175 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %176 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @MRVL_FW_MAJOR_REV(i32 %177)
  %179 = icmp sle i32 %178, 8
  br i1 %179, label %180, label %187

180:                                              ; preds = %173
  %181 = load i32, i32* @MRVDRV_ASSOCIATION_TIME_OUT, align 4
  %182 = call i8* @cpu_to_le16(i32 %181)
  %183 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 1
  store i8* %182, i8** %183, align 8
  %184 = load i32, i32* @CMD_SCAN_PROBE_DELAY_TIME, align 4
  %185 = call i8* @cpu_to_le16(i32 %184)
  %186 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_join, %struct.cmd_ds_802_11_ad_hoc_join* %8, i32 0, i32 0
  store i8* %185, i8** %186, align 8
  br label %187

187:                                              ; preds = %180, %173
  %188 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %189 = load i32, i32* @CMD_802_11_AD_HOC_JOIN, align 4
  %190 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %188, i32 %189, %struct.cmd_ds_802_11_ad_hoc_join* %8)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %204

194:                                              ; preds = %187
  %195 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %196 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %5, align 8
  %197 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %198 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %6, align 8
  %201 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @lbs_join_post(%struct.lbs_private* %195, %struct.cfg80211_ibss_params* %196, i32 %199, i32 %202)
  br label %204

204:                                              ; preds = %194, %193, %23
  %205 = load i32, i32* %10, align 4
  ret i32 %205
}

declare dso_local i32 @lbs_set_radio(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_802_11_ad_hoc_join*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i32 @lbs_add_rates(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_19__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @MRVL_FW_MAJOR_REV(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_ad_hoc_join*) #1

declare dso_local i32 @lbs_join_post(%struct.lbs_private*, %struct.cfg80211_ibss_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
