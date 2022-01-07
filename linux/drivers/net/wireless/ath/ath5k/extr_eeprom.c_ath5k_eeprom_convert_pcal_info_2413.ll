; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_convert_pcal_info_2413.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_convert_pcal_info_2413.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64**, i32*, i32* }
%struct.ath5k_chan_pcal_info = type { i32, i32, %struct.ath5k_pdgain_info*, %struct.ath5k_chan_pcal_info_rf2413 }
%struct.ath5k_pdgain_info = type { i32, i32*, i64* }
%struct.ath5k_chan_pcal_info_rf2413 = type { i32*, i32**, i64**, i64* }

@AR5K_EEPROM_N_PD_CURVES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AR5K_EEPROM_N_PD_POINTS = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32, %struct.ath5k_chan_pcal_info*)* @ath5k_eeprom_convert_pcal_info_2413 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_convert_pcal_info_2413(%struct.ath5k_hw* %0, i32 %1, %struct.ath5k_chan_pcal_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_chan_pcal_info*, align 8
  %8 = alloca %struct.ath5k_eeprom_info*, align 8
  %9 = alloca %struct.ath5k_chan_pcal_info_rf2413*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ath5k_pdgain_info*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath5k_chan_pcal_info* %2, %struct.ath5k_chan_pcal_info** %7, align 8
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %18, %struct.ath5k_eeprom_info** %8, align 8
  %19 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %20 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %19, i32 0, i32 0
  %21 = load i64**, i64*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64*, i64** %21, i64 %23
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %10, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %268, %3
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %29 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %27, %34
  br i1 %35, label %36, label %271

36:                                               ; preds = %26
  %37 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %37, i64 %39
  %41 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %40, i32 0, i32 3
  store %struct.ath5k_chan_pcal_info_rf2413* %41, %struct.ath5k_chan_pcal_info_rf2413** %9, align 8
  %42 = load i32, i32* @AR5K_EEPROM_N_PD_CURVES, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kcalloc(i32 %42, i32 24, i32 %43)
  %45 = bitcast i8* %44 to %struct.ath5k_pdgain_info*
  %46 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %46, i64 %48
  %50 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %49, i32 0, i32 2
  store %struct.ath5k_pdgain_info* %45, %struct.ath5k_pdgain_info** %50, align 8
  %51 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %51, i64 %53
  %55 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %54, i32 0, i32 2
  %56 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %55, align 8
  %57 = icmp ne %struct.ath5k_pdgain_info* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %36
  br label %272

59:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %264, %59
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %63 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ult i32 %61, %68
  br i1 %69, label %70, label %267

70:                                               ; preds = %60
  %71 = load i64*, i64** %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %14, align 8
  %76 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %76, i64 %78
  %80 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %79, i32 0, i32 2
  %81 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %81, i64 %82
  store %struct.ath5k_pdgain_info* %83, %struct.ath5k_pdgain_info** %15, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %86 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sub i32 %91, 1
  %93 = icmp eq i32 %84, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %70
  %95 = load i8*, i8** @AR5K_EEPROM_N_PD_POINTS, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %98 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %105

99:                                               ; preds = %70
  %100 = load i8*, i8** @AR5K_EEPROM_N_PD_POINTS, align 8
  %101 = getelementptr i8, i8* %100, i64 -1
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %104 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %107 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i8* @kcalloc(i32 %108, i32 8, i32 %109)
  %111 = bitcast i8* %110 to i64*
  %112 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %113 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %112, i32 0, i32 2
  store i64* %111, i64** %113, align 8
  %114 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %115 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = icmp ne i64* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %105
  br label %272

119:                                              ; preds = %105
  %120 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %121 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i8* @kcalloc(i32 %122, i32 4, i32 %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %127 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %126, i32 0, i32 1
  store i32* %125, i32** %127, align 8
  %128 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %129 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %119
  br label %272

133:                                              ; preds = %119
  %134 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %9, align 8
  %135 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %142 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  store i64 %140, i64* %144, align 8
  %145 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %9, align 8
  %146 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 4, %151
  %153 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %154 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %152, i32* %156, align 4
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %219, %133
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %160 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ult i32 %158, %161
  br i1 %162, label %163, label %222

163:                                              ; preds = %157
  %164 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %165 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sub i32 %167, 1
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %9, align 8
  %173 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %172, i32 0, i32 1
  %174 = load i32**, i32*** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sub i32 %179, 1
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 2, %183
  %185 = add nsw i32 %171, %184
  %186 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %187 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %185, i32* %191, align 4
  %192 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %193 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %192, i32 0, i32 2
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sub i32 %195, 1
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %194, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.ath5k_chan_pcal_info_rf2413*, %struct.ath5k_chan_pcal_info_rf2413** %9, align 8
  %201 = getelementptr inbounds %struct.ath5k_chan_pcal_info_rf2413, %struct.ath5k_chan_pcal_info_rf2413* %200, i32 0, i32 2
  %202 = load i64**, i64*** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i64*, i64** %202, i64 %204
  %206 = load i64*, i64** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sub i32 %207, 1
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %206, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %199, %211
  %213 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %214 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %213, i32 0, i32 2
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  store i64 %212, i64* %218, align 8
  br label %219

219:                                              ; preds = %163
  %220 = load i32, i32* %13, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %157

222:                                              ; preds = %157
  %223 = load i32, i32* %12, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %227 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %232 = load i32, i32* %11, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %231, i64 %233
  %235 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %234, i32 0, i32 0
  store i32 %230, i32* %235, align 8
  br label %236

236:                                              ; preds = %225, %222
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %8, align 8
  %239 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sub i32 %244, 1
  %246 = icmp eq i32 %237, %245
  br i1 %246, label %247, label %263

247:                                              ; preds = %236
  %248 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %249 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.ath5k_pdgain_info*, %struct.ath5k_pdgain_info** %15, align 8
  %252 = getelementptr inbounds %struct.ath5k_pdgain_info, %struct.ath5k_pdgain_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sub i32 %253, 1
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %250, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.ath5k_chan_pcal_info*, %struct.ath5k_chan_pcal_info** %7, align 8
  %259 = load i32, i32* %11, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %258, i64 %260
  %262 = getelementptr inbounds %struct.ath5k_chan_pcal_info, %struct.ath5k_chan_pcal_info* %261, i32 0, i32 1
  store i32 %257, i32* %262, align 4
  br label %263

263:                                              ; preds = %247, %236
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %12, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %12, align 4
  br label %60

267:                                              ; preds = %60
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %11, align 4
  %270 = add i32 %269, 1
  store i32 %270, i32* %11, align 4
  br label %26

271:                                              ; preds = %26
  store i32 0, i32* %4, align 4
  br label %278

272:                                              ; preds = %132, %118, %58
  %273 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %274 = load i32, i32* %6, align 4
  %275 = call i32 @ath5k_eeprom_free_pcal_info(%struct.ath5k_hw* %273, i32 %274)
  %276 = load i32, i32* @ENOMEM, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %4, align 4
  br label %278

278:                                              ; preds = %272, %271
  %279 = load i32, i32* %4, align 4
  ret i32 %279
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ath5k_eeprom_free_pcal_info(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
