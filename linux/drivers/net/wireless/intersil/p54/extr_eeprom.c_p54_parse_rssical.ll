; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_parse_rssical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_parse_rssical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.p54_common* }
%struct.p54_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i64 }
%struct.p54_rssi_db_entry = type { i8*, i8*, i64 }
%struct.pda_rssi_cal_ext_entry = type { i32, i32, i32 }
%struct.pda_rssi_cal_entry = type { i32, i32 }

@PDR_RSSI_LINEAR_APPROXIMATION_EXTENDED = common dso_local global i64 0, align 8
@PDR_RSSI_LINEAR_APPROXIMATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"rssical size mismatch.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid rssi database.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@p54_compare_rssichan = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"rssi calibration data packing type:(%x) len:%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rssical:\00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"please report this issue.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32*, i32, i64)* @p54_parse_rssical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_parse_rssical(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.p54_common*, align 8
  %11 = alloca %struct.p54_rssi_db_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pda_rssi_cal_ext_entry*, align 8
  %17 = alloca %struct.pda_rssi_cal_entry*, align 8
  %18 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 1
  %21 = load %struct.p54_common*, %struct.p54_common** %20, align 8
  store %struct.p54_common* %21, %struct.p54_common** %10, align 8
  store i32 0, i32* %14, align 4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @PDR_RSSI_LINEAR_APPROXIMATION_EXTENDED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @PDR_RSSI_LINEAR_APPROXIMATION, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 2
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %13, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %13, align 8
  %35 = mul i64 8, %34
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @wiphy_err(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %244

42:                                               ; preds = %25
  br label %80

43:                                               ; preds = %4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @cpu_to_le16(i32 0)
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 2
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %52, %43
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %14, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 12
  store i64 %60, i64* %13, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = urem i64 %68, 12
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i64, i64* %13, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71, %64, %55
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @wiphy_err(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %244

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %42
  %81 = load i64, i64* %13, align 8
  %82 = mul i64 24, %81
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = add i64 %83, 40
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.TYPE_2__* @kzalloc(i64 %84, i32 %85)
  %87 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %88 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %87, i32 0, i32 0
  store %struct.TYPE_2__* %86, %struct.TYPE_2__** %88, align 8
  %89 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %90 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = icmp ne %struct.TYPE_2__* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %261

96:                                               ; preds = %80
  %97 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %98 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %103 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i64 %101, i64* %105, align 8
  %106 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %107 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i32 24, i32* %109, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %112 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  store i64 %110, i64* %114, align 8
  %115 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %116 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.p54_common*, %struct.p54_common** %10, align 8
  %121 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %119, %124
  %126 = inttoptr i64 %125 to i8*
  %127 = bitcast i8* %126 to %struct.p54_rssi_db_entry*
  store %struct.p54_rssi_db_entry* %127, %struct.p54_rssi_db_entry** %11, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* @PDR_RSSI_LINEAR_APPROXIMATION_EXTENDED, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %186

131:                                              ; preds = %96
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = bitcast i32* %135 to i8*
  %137 = bitcast i8* %136 to %struct.pda_rssi_cal_ext_entry*
  store %struct.pda_rssi_cal_ext_entry* %137, %struct.pda_rssi_cal_ext_entry** %16, align 8
  store i32 0, i32* %15, align 4
  br label %138

138:                                              ; preds = %182, %131
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %13, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %138
  %144 = load %struct.pda_rssi_cal_ext_entry*, %struct.pda_rssi_cal_ext_entry** %16, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.pda_rssi_cal_ext_entry, %struct.pda_rssi_cal_ext_entry* %144, i64 %146
  %148 = getelementptr inbounds %struct.pda_rssi_cal_ext_entry, %struct.pda_rssi_cal_ext_entry* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @le16_to_cpu(i32 %149)
  %151 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %11, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %151, i64 %153
  %155 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %154, i32 0, i32 2
  store i64 %150, i64* %155, align 8
  %156 = load %struct.pda_rssi_cal_ext_entry*, %struct.pda_rssi_cal_ext_entry** %16, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.pda_rssi_cal_ext_entry, %struct.pda_rssi_cal_ext_entry* %156, i64 %158
  %160 = getelementptr inbounds %struct.pda_rssi_cal_ext_entry, %struct.pda_rssi_cal_ext_entry* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @le16_to_cpu(i32 %161)
  %163 = inttoptr i64 %162 to i8*
  %164 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %11, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %164, i64 %166
  %168 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %167, i32 0, i32 1
  store i8* %163, i8** %168, align 8
  %169 = load %struct.pda_rssi_cal_ext_entry*, %struct.pda_rssi_cal_ext_entry** %16, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.pda_rssi_cal_ext_entry, %struct.pda_rssi_cal_ext_entry* %169, i64 %171
  %173 = getelementptr inbounds %struct.pda_rssi_cal_ext_entry, %struct.pda_rssi_cal_ext_entry* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @le16_to_cpu(i32 %174)
  %176 = inttoptr i64 %175 to i8*
  %177 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %11, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %177, i64 %179
  %181 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %180, i32 0, i32 0
  store i8* %176, i8** %181, align 8
  br label %182

182:                                              ; preds = %143
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %138

185:                                              ; preds = %138
  br label %239

186:                                              ; preds = %96
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = bitcast i32* %190 to i8*
  %192 = bitcast i8* %191 to %struct.pda_rssi_cal_entry*
  store %struct.pda_rssi_cal_entry* %192, %struct.pda_rssi_cal_entry** %17, align 8
  store i32 0, i32* %15, align 4
  br label %193

193:                                              ; preds = %235, %186
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %13, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %238

198:                                              ; preds = %193
  store i64 0, i64* %18, align 8
  %199 = load i32, i32* %15, align 4
  switch i32 %199, label %202 [
    i32 129, label %200
    i32 128, label %201
  ]

200:                                              ; preds = %198
  store i64 2437, i64* %18, align 8
  br label %202

201:                                              ; preds = %198
  store i64 5240, i64* %18, align 8
  br label %202

202:                                              ; preds = %198, %201, %200
  %203 = load i64, i64* %18, align 8
  %204 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %11, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %204, i64 %206
  %208 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %207, i32 0, i32 2
  store i64 %203, i64* %208, align 8
  %209 = load %struct.pda_rssi_cal_entry*, %struct.pda_rssi_cal_entry** %17, align 8
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.pda_rssi_cal_entry, %struct.pda_rssi_cal_entry* %209, i64 %211
  %213 = getelementptr inbounds %struct.pda_rssi_cal_entry, %struct.pda_rssi_cal_entry* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @le16_to_cpu(i32 %214)
  %216 = inttoptr i64 %215 to i8*
  %217 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %11, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %217, i64 %219
  %221 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %220, i32 0, i32 1
  store i8* %216, i8** %221, align 8
  %222 = load %struct.pda_rssi_cal_entry*, %struct.pda_rssi_cal_entry** %17, align 8
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.pda_rssi_cal_entry, %struct.pda_rssi_cal_entry* %222, i64 %224
  %226 = getelementptr inbounds %struct.pda_rssi_cal_entry, %struct.pda_rssi_cal_entry* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @le16_to_cpu(i32 %227)
  %229 = inttoptr i64 %228 to i8*
  %230 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %11, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %230, i64 %232
  %234 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %233, i32 0, i32 0
  store i8* %229, i8** %234, align 8
  br label %235

235:                                              ; preds = %202
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %15, align 4
  br label %193

238:                                              ; preds = %193
  br label %239

239:                                              ; preds = %238, %185
  %240 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %11, align 8
  %241 = load i64, i64* %13, align 8
  %242 = load i32, i32* @p54_compare_rssichan, align 4
  %243 = call i32 @sort(%struct.p54_rssi_db_entry* %240, i64 %241, i32 24, i32 %242, i32* null)
  store i32 0, i32* %5, align 4
  br label %261

244:                                              ; preds = %74, %37
  %245 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %246 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i64, i64* %9, align 8
  %249 = load i32, i32* %8, align 4
  %250 = call i32 (i32, i8*, ...) @wiphy_err(i32 %247, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %248, i32 %249)
  %251 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %8, align 4
  %254 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %251, i32* %252, i32 %253)
  %255 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %256 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (i32, i8*, ...) @wiphy_err(i32 %257, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %244, %239, %93
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local i32 @wiphy_err(i32, i8*, ...) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_2__* @kzalloc(i64, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @sort(%struct.p54_rssi_db_entry*, i64, i32, i32, i32*) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
