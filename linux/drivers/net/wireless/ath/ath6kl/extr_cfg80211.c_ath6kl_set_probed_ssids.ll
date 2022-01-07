; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_probed_ssids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_set_probed_ssids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ath6kl_vif = type { i32 }
%struct.cfg80211_ssid = type { i64, i32 }
%struct.cfg80211_match_set = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ath6kl_cfg80211_match_probe_ssid = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32* }

@MAX_PROBED_SSIDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPECIFIC_SSID_FLAG = common dso_local global i32 0, align 4
@ANY_SSID_FLAG = common dso_local global i32 0, align 4
@MATCH_SSID_FLAG = common dso_local global i32 0, align 4
@DISABLE_SSID_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.ath6kl_vif*, %struct.cfg80211_ssid*, i32, %struct.cfg80211_match_set*, i32)* @ath6kl_set_probed_ssids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_probed_ssids(%struct.ath6kl* %0, %struct.ath6kl_vif* %1, %struct.cfg80211_ssid* %2, i32 %3, %struct.cfg80211_match_set* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca %struct.ath6kl_vif*, align 8
  %10 = alloca %struct.cfg80211_ssid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_match_set*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %8, align 8
  store %struct.ath6kl_vif* %1, %struct.ath6kl_vif** %9, align 8
  store %struct.cfg80211_ssid* %2, %struct.cfg80211_ssid** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.cfg80211_match_set* %4, %struct.cfg80211_match_set** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* @MAX_PROBED_SSIDS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %18, align 8
  %24 = alloca %struct.ath6kl_cfg80211_match_probe_ssid, i64 %22, align 16
  store i64 %22, i64* %19, align 8
  %25 = mul nuw i64 24, %22
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(%struct.ath6kl_cfg80211_match_probe_ssid* %24, i32 0, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @MAX_PROBED_SSIDS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @MAX_PROBED_SSIDS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %6
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %285

38:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %112, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %115

43:                                               ; preds = %39
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %45
  %47 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %50, i64 %52
  %54 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %56, i64 %58
  %60 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @memcpy(i32* %49, i32 %55, i64 %61)
  %63 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %63, i64 %65
  %67 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %70
  %72 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %68, i64* %73, align 8
  %74 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %74, i64 %76
  %78 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %43
  %82 = load i32, i32* @SPECIFIC_SSID_FLAG, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %84
  %86 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 8
  br label %93

87:                                               ; preds = %43
  %88 = load i32, i32* @ANY_SSID_FLAG, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %90
  %92 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 8
  br label %93

93:                                               ; preds = %87, %81
  %94 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %95 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* @MATCH_SSID_FLAG, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %106
  %108 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %104
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %103, %100, %93
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %39

115:                                              ; preds = %39
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %228, %115
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %231

121:                                              ; preds = %117
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %122

122:                                              ; preds = %173, %121
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %176

126:                                              ; preds = %122
  %127 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %12, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %127, i64 %129
  %131 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %135
  %137 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %133, %139
  br i1 %140, label %141, label %172

141:                                              ; preds = %126
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %143
  %145 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %12, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %148, i64 %150
  %152 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %12, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %155, i64 %157
  %159 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @memcmp(i32* %147, i32 %154, i64 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %172, label %164

164:                                              ; preds = %141
  %165 = load i32, i32* @MATCH_SSID_FLAG, align 4
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %167
  %169 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 8
  store i32 1, i32* %17, align 4
  br label %176

172:                                              ; preds = %141, %126
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %122

176:                                              ; preds = %164, %122
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  br label %228

180:                                              ; preds = %176
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* @MAX_PROBED_SSIDS, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  br label %228

185:                                              ; preds = %180
  %186 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %12, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %186, i64 %188
  %190 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %194
  %196 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  store i64 %192, i64* %197, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %199
  %201 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %12, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %204, i64 %206
  %208 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %12, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %211, i64 %213
  %215 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @memcpy(i32* %203, i32 %210, i64 %217)
  %219 = load i32, i32* @MATCH_SSID_FLAG, align 4
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %221
  %223 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %219
  store i32 %225, i32* %223, align 8
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %16, align 4
  br label %228

228:                                              ; preds = %185, %184, %179
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %14, align 4
  br label %117

231:                                              ; preds = %117
  store i32 0, i32* %14, align 4
  br label %232

232:                                              ; preds = %262, %231
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %16, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %265

236:                                              ; preds = %232
  %237 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %238 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %241 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %245
  %247 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %250
  %252 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* %14, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %24, i64 %256
  %258 = getelementptr inbounds %struct.ath6kl_cfg80211_match_probe_ssid, %struct.ath6kl_cfg80211_match_probe_ssid* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @ath6kl_wmi_probedssid_cmd(i32 %239, i32 %242, i32 %243, i32 %248, i64 %254, i32* %260)
  br label %262

262:                                              ; preds = %236
  %263 = load i32, i32* %14, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %14, align 4
  br label %232

265:                                              ; preds = %232
  %266 = load i32, i32* %16, align 4
  store i32 %266, i32* %14, align 4
  br label %267

267:                                              ; preds = %281, %265
  %268 = load i32, i32* %14, align 4
  %269 = load i32, i32* @MAX_PROBED_SSIDS, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %284

271:                                              ; preds = %267
  %272 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %273 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %276 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* @DISABLE_SSID_FLAG, align 4
  %280 = call i32 @ath6kl_wmi_probedssid_cmd(i32 %274, i32 %277, i32 %278, i32 %279, i64 0, i32* null)
  br label %281

281:                                              ; preds = %271
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %14, align 4
  br label %267

284:                                              ; preds = %267
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %285

285:                                              ; preds = %284, %35
  %286 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %286)
  %287 = load i32, i32* %7, align 4
  ret i32 %287
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.ath6kl_cfg80211_match_probe_ssid*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i64) #2

declare dso_local i32 @memcmp(i32*, i32, i64) #2

declare dso_local i32 @ath6kl_wmi_probedssid_cmd(i32, i32, i32, i32, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
