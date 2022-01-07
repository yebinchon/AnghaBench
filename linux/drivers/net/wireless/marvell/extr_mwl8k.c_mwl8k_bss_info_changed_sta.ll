; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_bss_info_changed_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_bss_info_changed_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_13__, %struct.mwl8k_priv* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.mwl8k_priv = type { i32, i32*, i32 }
%struct.ieee80211_vif = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64, i32, i32, i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@mwl8k_rates_24 = common dso_local global %struct.TYPE_16__* null, align 8
@mwl8k_rates_50 = common dso_local global %struct.TYPE_15__* null, align 8
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @mwl8k_bss_info_changed_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_bss_info_changed_sta(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwl8k_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_sta*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 1
  %18 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %17, align 8
  store %struct.mwl8k_priv* %18, %struct.mwl8k_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = call i64 @mwl8k_fw_lock(%struct.ieee80211_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %251

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %36 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %28, %23
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %156

43:                                               ; preds = %37
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %45, i32 %49)
  store %struct.ieee80211_sta* %50, %struct.ieee80211_sta** %13, align 8
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %52 = icmp eq %struct.ieee80211_sta* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = call i32 (...) @rcu_read_unlock()
  br label %248

55:                                               ; preds = %43
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  br label %80

72:                                               ; preds = %55
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 5
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %72, %65
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %82 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @memcpy(i32* %81, i32 %86, i32 16)
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %155

93:                                               ; preds = %80
  %94 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %95 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %93
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %100 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %103 = call i32 @mwl8k_cmd_set_rate(%struct.ieee80211_hw* %99, %struct.ieee80211_vif* %100, i32 %101, i32* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %248

107:                                              ; preds = %98
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %109 = call i32 @mwl8k_cmd_use_fixed_rate_sta(%struct.ieee80211_hw* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %248

113:                                              ; preds = %107
  br label %154

114:                                              ; preds = %93
  %115 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %116 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ffs(i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %122, %114
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %125
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** @mwl8k_rates_24, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %15, align 4
  br label %149

142:                                              ; preds = %125
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mwl8k_rates_50, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %142, %135
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @mwl8k_cmd_use_fixed_rate_ap(%struct.ieee80211_hw* %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %149, %113
  br label %155

155:                                              ; preds = %154, %80
  br label %156

156:                                              ; preds = %155, %37
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %163 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %164 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @mwl8k_set_radio_preamble(%struct.ieee80211_hw* %162, i32 %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %248

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %156
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %172
  %178 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %179 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %177
  %183 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %184 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %185 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @mwl8k_cmd_set_slot(%struct.ieee80211_hw* %183, i32 %187)
  store i32 %188, i32* %12, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %182
  br label %248

192:                                              ; preds = %182
  br label %193

193:                                              ; preds = %192, %177, %172
  %194 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %195 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %222

199:                                              ; preds = %193
  %200 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %201 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %207 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @BSS_CHANGED_HT, align 4
  %210 = or i32 %208, %209
  %211 = and i32 %205, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %204
  %214 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %215 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @mwl8k_cmd_set_aid(%struct.ieee80211_hw* %214, %struct.ieee80211_vif* %215, i32 %216)
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %12, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  br label %248

221:                                              ; preds = %213
  br label %222

222:                                              ; preds = %221, %204, %199, %193
  %223 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %224 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %222
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %231 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %232 = or i32 %230, %231
  %233 = and i32 %229, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %228
  %236 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %237 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %240 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @ETH_ALEN, align 4
  %244 = call i32 @memcpy(i32* %238, i32 %242, i32 %243)
  %245 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %246 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %245, i32 0, i32 0
  store i32 1, i32* %246, align 8
  br label %247

247:                                              ; preds = %235, %228, %222
  br label %248

248:                                              ; preds = %247, %220, %191, %170, %112, %106, %53
  %249 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %250 = call i32 @mwl8k_fw_unlock(%struct.ieee80211_hw* %249)
  br label %251

251:                                              ; preds = %248, %22
  ret void
}

declare dso_local i64 @mwl8k_fw_lock(%struct.ieee80211_hw*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mwl8k_cmd_set_rate(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32*) #1

declare dso_local i32 @mwl8k_cmd_use_fixed_rate_sta(%struct.ieee80211_hw*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @mwl8k_cmd_use_fixed_rate_ap(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mwl8k_set_radio_preamble(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_slot(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_aid(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mwl8k_fw_unlock(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
