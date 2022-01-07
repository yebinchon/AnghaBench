; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_setup_channel_powertable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_setup_channel_powertable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64**, i64**, i32, i32, i32, i8*, i8* }
%struct.TYPE_3__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64**, i32* }
%struct.ieee80211_channel = type { i32 }
%struct.ath5k_pdgain_info = type { i32, i32, i32* }
%struct.ath5k_chan_pcal_info = type { i32, i32, i64, %struct.ath5k_pdgain_info* }

@AR5K_EEPROM_N_PD_GAINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR5K_EEPROM_POWER_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*, i64, i64)* @ath5k_setup_channel_powertable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_setup_channel_powertable(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_hw*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ath5k_pdgain_info*, align 8
  %11 = alloca %struct.ath5k_pdgain_info*, align 8
  %12 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %13 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %14 = alloca %struct.ath5k_eeprom_info*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %6, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %28, %struct.ath5k_eeprom_info** %14, align 8
  %29 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %14, align 8
  %30 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %29, i32 0, i32 0
  %31 = load i64**, i64*** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %15, align 8
  %35 = load i32, i32* @AR5K_EEPROM_N_PD_GAINS, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %16, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %17, align 8
  %39 = load i32, i32* @AR5K_EEPROM_N_PD_GAINS, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %18, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %21, align 4
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %47 = call i32 @ath5k_get_chan_pcal_surrounding_piers(%struct.ath5k_hw* %45, %struct.ieee80211_channel* %46, %struct.ath5k_chan_pcal_info** %12, %struct.ath5k_chan_pcal_info** %13)
  store i32 0, i32* %22, align 4
  br label %48

48:                                               ; preds = %317, %4
  %49 = load i32, i32* %22, align 4
  %50 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %14, align 8
  %51 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %320

57:                                               ; preds = %48
  %58 = load i64*, i64** %15, align 8
  %59 = load i32, i32* %22, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %24, align 8
  %63 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %12, align 8
  %64 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %63, i32 0, i32 3
  %65 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %64, align 8
  %66 = load i64, i64* %24, align 8
  %67 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %65, i64 %66
  store %struct.ath5k_pdgain_info* %67, %struct.ath5k_pdgain_info** %10, align 8
  %68 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %13, align 8
  %69 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %68, i32 0, i32 3
  %70 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %69, align 8
  %71 = load i64, i64* %24, align 8
  %72 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %70, i64 %71
  store %struct.ath5k_pdgain_info* %72, %struct.ath5k_pdgain_info** %11, align 8
  %73 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %74 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64**, i64*** %75, align 8
  %77 = load i32, i32* %22, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64*, i64** %76, i64 %78
  %80 = load i64*, i64** %79, align 8
  store i64* %80, i64** %19, align 8
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %82 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64**, i64*** %83, align 8
  %85 = load i32, i32* %22, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64*, i64** %84, i64 %86
  %88 = load i64*, i64** %87, align 8
  store i64* %88, i64** %20, align 8
  %89 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %90 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %95 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @min(i32 %93, i32 %98)
  %100 = sdiv i32 %99, 2
  %101 = load i32, i32* %22, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %38, i64 %102
  store i32 %100, i32* %103, align 4
  %104 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %105 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %108 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %115 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %118 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @max(i32 %113, i32 %123)
  %125 = sdiv i32 %124, 2
  %126 = load i32, i32* %22, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %41, i64 %127
  store i32 %125, i32* %128, align 4
  %129 = load i64, i64* %9, align 8
  switch i64 %129, label %263 [
    i64 130, label %130
    i64 129, label %217
    i64 128, label %217
  ]

130:                                              ; preds = %57
  %131 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %132 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %137 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @min(i32 %135, i32 %140)
  %142 = load i32, i32* %22, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %38, i64 %143
  store i32 %141, i32* %144, align 4
  %145 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %146 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %149 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %156 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %159 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @max(i32 %154, i32 %164)
  %166 = load i32, i32* %22, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %41, i64 %167
  store i32 %165, i32* %168, align 4
  %169 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %14, align 8
  %170 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %8, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %179

176:                                              ; preds = %130
  %177 = load i32, i32* %22, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %216, label %179

179:                                              ; preds = %176, %130
  %180 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %181 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %184 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %187 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %190 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @ath5k_get_linear_pcdac_min(i32 %182, i32 %185, i32* %188, i32* %191)
  %193 = load i32, i32* %22, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %38, i64 %194
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* %22, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %41, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %22, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %38, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %199, %203
  %205 = icmp sgt i32 %204, 126
  br i1 %205, label %206, label %215

206:                                              ; preds = %179
  %207 = load i32, i32* %22, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %41, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 126
  %212 = load i32, i32* %22, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %38, i64 %213
  store i32 %211, i32* %214, align 4
  br label %215

215:                                              ; preds = %206, %179
  br label %216

216:                                              ; preds = %215, %176
  br label %217

217:                                              ; preds = %57, %57, %216
  %218 = load i32, i32* %22, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %38, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %22, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %41, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %227 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %230 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %10, align 8
  %233 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i64*, i64** %19, align 8
  %236 = load i64, i64* %9, align 8
  %237 = call i32 @ath5k_create_power_curve(i32 %221, i32 %225, i32* %228, i32 %231, i32 %234, i64* %235, i64 %236)
  %238 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %12, align 8
  %239 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %13, align 8
  %240 = icmp eq %struct.ath5k_chan_pcal_info* %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %217
  br label %317

242:                                              ; preds = %217
  %243 = load i32, i32* %22, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %38, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %22, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %41, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %252 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %255 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %11, align 8
  %258 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i64*, i64** %20, align 8
  %261 = load i64, i64* %9, align 8
  %262 = call i32 @ath5k_create_power_curve(i32 %246, i32 %250, i32* %253, i32 %256, i32 %259, i64* %260, i64 %261)
  br label %266

263:                                              ; preds = %57
  %264 = load i32, i32* @EINVAL, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %406

266:                                              ; preds = %242
  store i32 0, i32* %23, align 4
  br label %267

267:                                              ; preds = %313, %266
  %268 = load i32, i32* %23, align 4
  %269 = load i32, i32* %22, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %41, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %22, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %38, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = sub nsw i32 %272, %276
  %278 = icmp slt i32 %268, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %267
  %280 = load i32, i32* %23, align 4
  %281 = load i32, i32* @AR5K_EEPROM_POWER_TABLE_SIZE, align 4
  %282 = icmp slt i32 %280, %281
  br label %283

283:                                              ; preds = %279, %267
  %284 = phi i1 [ false, %267 ], [ %282, %279 ]
  br i1 %284, label %285, label %316

285:                                              ; preds = %283
  %286 = load i32, i32* %21, align 4
  %287 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %12, align 8
  %288 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %13, align 8
  %292 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = trunc i64 %293 to i32
  %295 = load i64*, i64** %19, align 8
  %296 = load i32, i32* %23, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = load i64*, i64** %20, align 8
  %302 = load i32, i32* %23, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = trunc i64 %305 to i32
  %307 = call i8* @ath5k_get_interpolated_value(i32 %286, i32 %290, i32 %294, i32 %300, i32 %306)
  %308 = ptrtoint i8* %307 to i64
  %309 = load i64*, i64** %19, align 8
  %310 = load i32, i32* %23, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  store i64 %308, i64* %312, align 8
  br label %313

313:                                              ; preds = %285
  %314 = load i32, i32* %23, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %23, align 4
  br label %267

316:                                              ; preds = %283
  br label %317

317:                                              ; preds = %316, %241
  %318 = load i32, i32* %22, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %22, align 4
  br label %48

320:                                              ; preds = %48
  %321 = load i32, i32* %21, align 4
  %322 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %12, align 8
  %323 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = trunc i64 %324 to i32
  %326 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %13, align 8
  %327 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = trunc i64 %328 to i32
  %330 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %12, align 8
  %331 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %13, align 8
  %334 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = call i8* @ath5k_get_interpolated_value(i32 %321, i32 %325, i32 %329, i32 %332, i32 %335)
  %337 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %338 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 6
  store i8* %336, i8** %339, align 8
  %340 = load i32, i32* %21, align 4
  %341 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %12, align 8
  %342 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = trunc i64 %343 to i32
  %345 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %13, align 8
  %346 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %12, align 8
  %350 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %13, align 8
  %353 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i8* @ath5k_get_interpolated_value(i32 %340, i32 %344, i32 %348, i32 %351, i32 %354)
  %356 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %357 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 5
  store i8* %355, i8** %358, align 8
  %359 = load i64, i64* %9, align 8
  switch i64 %359, label %399 [
    i64 130, label %360
    i64 129, label %376
    i64 128, label %385
  ]

360:                                              ; preds = %320
  %361 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %362 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %14, align 8
  %363 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = load i64, i64* %8, align 8
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @ath5k_combine_linear_pcdac_curves(%struct.ath5k_hw* %361, i32* %38, i32* %41, i32 %367)
  %369 = getelementptr inbounds i32, i32* %41, i64 0
  %370 = load i32, i32* %369, align 16
  %371 = sdiv i32 %370, 2
  %372 = sub nsw i32 64, %371
  %373 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %374 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 2
  store i32 %372, i32* %375, align 8
  br label %402

376:                                              ; preds = %320
  %377 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %378 = call i32 @ath5k_fill_pwr_to_pcdac_table(%struct.ath5k_hw* %377, i32* %38, i32* %41)
  %379 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %380 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 4
  store i32 0, i32* %381, align 8
  %382 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %383 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 2
  store i32 0, i32* %384, align 8
  br label %402

385:                                              ; preds = %320
  %386 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %387 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %14, align 8
  %388 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %387, i32 0, i32 1
  %389 = load i32*, i32** %388, align 8
  %390 = load i64, i64* %8, align 8
  %391 = getelementptr inbounds i32, i32* %389, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @ath5k_combine_pwr_to_pdadc_curves(%struct.ath5k_hw* %386, i32* %38, i32* %41, i32 %392)
  %394 = getelementptr inbounds i32, i32* %38, i64 0
  %395 = load i32, i32* %394, align 16
  %396 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %397 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 2
  store i32 %395, i32* %398, align 8
  br label %402

399:                                              ; preds = %320
  %400 = load i32, i32* @EINVAL, align 4
  %401 = sub nsw i32 0, %400
  store i32 %401, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %406

402:                                              ; preds = %385, %376, %360
  %403 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %404 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 3
  store i32 1, i32* %405, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %406

406:                                              ; preds = %402, %399, %263
  %407 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %407)
  %408 = load i32, i32* %5, align 4
  ret i32 %408
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ath5k_get_chan_pcal_surrounding_piers(%struct.ath5k_hw*, %struct.ieee80211_channel*, %struct.ath5k_chan_pcal_info**, %struct.ath5k_chan_pcal_info**) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @ath5k_get_linear_pcdac_min(i32, i32, i32*, i32*) #2

declare dso_local i32 @ath5k_create_power_curve(i32, i32, i32*, i32, i32, i64*, i64) #2

declare dso_local i8* @ath5k_get_interpolated_value(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ath5k_combine_linear_pcdac_curves(%struct.ath5k_hw*, i32*, i32*, i32) #2

declare dso_local i32 @ath5k_fill_pwr_to_pcdac_table(%struct.ath5k_hw*, i32*, i32*) #2

declare dso_local i32 @ath5k_combine_pwr_to_pdadc_curves(%struct.ath5k_hw*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
