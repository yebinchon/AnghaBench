; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath_cmn_process_ht20_fft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath_cmn_process_ht20_fft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rx_status = type { i32* }
%struct.ath_spec_scan_priv = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.fft_sample_ht20 = type { i64, i64, i64, i32*, i8*, i32, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.ath_common = type { i32 }
%struct.ath_ht20_mag_info = type { i32, i32 }
%struct.fft_sample_tlv = type { i32 }

@SPECTRAL_HT20_NUM_BINS = common dso_local global i32 0, align 4
@ATH_FFT_SAMPLE_HT20 = common dso_local global i32 0, align 4
@SPECTRAL_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"FFT HT20 frame: max mag 0x%X,max_mag_idx %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Magnitude mismatch !\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Calculated new lower max 0x%X at %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Got max: 0x%X at index %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Got bin %i greater than max: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_rx_status*, %struct.ath_spec_scan_priv*, i64*, i32, i64, i32)* @ath_cmn_process_ht20_fft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_cmn_process_ht20_fft(%struct.ath_rx_status* %0, %struct.ath_spec_scan_priv* %1, i64* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_rx_status*, align 8
  %9 = alloca %struct.ath_spec_scan_priv*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fft_sample_ht20, align 8
  %15 = alloca %struct.ath_common*, align 8
  %16 = alloca %struct.ath_hw*, align 8
  %17 = alloca %struct.ath_ht20_mag_info*, align 8
  %18 = alloca %struct.fft_sample_tlv*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.ath_rx_status* %0, %struct.ath_rx_status** %8, align 8
  store %struct.ath_spec_scan_priv* %1, %struct.ath_spec_scan_priv** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %9, align 8
  %29 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %28, i32 0, i32 0
  %30 = load %struct.ath_hw*, %struct.ath_hw** %29, align 8
  %31 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %30)
  store %struct.ath_common* %31, %struct.ath_common** %15, align 8
  %32 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %9, align 8
  %33 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %32, i32 0, i32 0
  %34 = load %struct.ath_hw*, %struct.ath_hw** %33, align 8
  store %struct.ath_hw* %34, %struct.ath_hw** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %35 = load i32, i32* @SPECTRAL_HT20_NUM_BINS, align 4
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %21, align 4
  store i64 76, i64* %24, align 8
  %37 = load i32, i32* @ATH_FFT_SAMPLE_HT20, align 4
  %38 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 9
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %24, align 8
  %41 = call i8* @__cpu_to_be16(i64 %40)
  %42 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i8* @__cpu_to_be16(i64 %44)
  %46 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 8
  store i8* %45, i8** %46, align 8
  %47 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %48 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @fix_rssi_inv_only(i32 %51)
  %53 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 7
  store i32 %52, i32* %53, align 8
  %54 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 6
  store i32 %56, i32* %57, align 4
  %58 = load i64*, i64** %10, align 8
  %59 = load i32, i32* @SPECTRAL_HT20_NUM_BINS, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = bitcast i64* %61 to %struct.ath_ht20_mag_info*
  store %struct.ath_ht20_mag_info* %62, %struct.ath_ht20_mag_info** %17, align 8
  %63 = load %struct.ath_ht20_mag_info*, %struct.ath_ht20_mag_info** %17, align 8
  %64 = getelementptr inbounds %struct.ath_ht20_mag_info, %struct.ath_ht20_mag_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @spectral_max_magnitude(i32 %65)
  store i64 %66, i64* %22, align 8
  %67 = load i64, i64* %22, align 8
  %68 = call i8* @__cpu_to_be16(i64 %67)
  %69 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 4
  store i8* %68, i8** %69, align 8
  %70 = load %struct.ath_ht20_mag_info*, %struct.ath_ht20_mag_info** %17, align 8
  %71 = getelementptr inbounds %struct.ath_ht20_mag_info, %struct.ath_ht20_mag_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @spectral_max_index_ht20(i32 %72)
  store i64 %73, i64* %25, align 8
  %74 = load i64, i64* %25, align 8
  %75 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 0
  store i64 %74, i64* %75, align 8
  %76 = load %struct.ath_ht20_mag_info*, %struct.ath_ht20_mag_info** %17, align 8
  %77 = getelementptr inbounds %struct.ath_ht20_mag_info, %struct.ath_ht20_mag_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @spectral_bitmap_weight(i32 %78)
  store i64 %79, i64* %26, align 8
  %80 = load i64, i64* %26, align 8
  %81 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 1
  store i64 %80, i64* %81, align 8
  %82 = load %struct.ath_ht20_mag_info*, %struct.ath_ht20_mag_info** %17, align 8
  %83 = getelementptr inbounds %struct.ath_ht20_mag_info, %struct.ath_ht20_mag_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 15
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %27, align 8
  %87 = load i64, i64* %27, align 8
  %88 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @__cpu_to_be64(i32 %89)
  %91 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 5
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load i64*, i64** %10, align 8
  %95 = load i32, i32* @SPECTRAL_HT20_NUM_BINS, align 4
  %96 = call i32 @memcpy(i32* %93, i64* %94, i32 %95)
  %97 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %98 = load i32, i32* @SPECTRAL_SCAN, align 4
  %99 = load i64, i64* %22, align 8
  %100 = load i64, i64* %27, align 8
  %101 = lshr i64 %99, %100
  %102 = load i64, i64* %25, align 8
  %103 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %97, i32 %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %101, i64 %102)
  %104 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %25, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 248
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %22, align 8
  %112 = load i64, i64* %27, align 8
  %113 = lshr i64 %111, %112
  %114 = and i64 %113, 248
  %115 = icmp ne i64 %110, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %6
  %117 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %118 = load i32, i32* @SPECTRAL_SCAN, align 4
  %119 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %117, i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %20, align 4
  br label %120

120:                                              ; preds = %116, %6
  %121 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %127, %134
  %136 = sdiv i32 %135, 2
  %137 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %21, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %136, i32* %141, align 4
  %142 = load i64, i64* %25, align 8
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp eq i64 %142, %144
  br i1 %145, label %146, label %189

146:                                              ; preds = %120
  store i64 0, i64* %23, align 8
  store i32 0, i32* %19, align 4
  br label %147

147:                                              ; preds = %173, %146
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %21, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %23, align 8
  %160 = icmp ugt i64 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %23, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 0
  store i64 %170, i64* %171, align 8
  br label %172

172:                                              ; preds = %161, %151
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %19, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %19, align 4
  br label %147

176:                                              ; preds = %147
  %177 = load i64, i64* %23, align 8
  %178 = load i64, i64* %27, align 8
  %179 = shl i64 %177, %178
  store i64 %179, i64* %22, align 8
  %180 = load i64, i64* %22, align 8
  %181 = call i8* @__cpu_to_be16(i64 %180)
  %182 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 4
  store i8* %181, i8** %182, align 8
  %183 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %184 = load i32, i32* @SPECTRAL_SCAN, align 4
  %185 = load i64, i64* %23, align 8
  %186 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %183, i32 %184, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %185, i64 %187)
  br label %245

189:                                              ; preds = %120
  store i32 0, i32* %19, align 4
  br label %190

190:                                              ; preds = %241, %189
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* @SPECTRAL_HT20_NUM_BINS, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %244

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %22, align 8
  %203 = load i64, i64* %27, align 8
  %204 = lshr i64 %202, %203
  %205 = icmp eq i64 %201, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %194
  %207 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %208 = load i32, i32* @SPECTRAL_SCAN, align 4
  %209 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %19, align 4
  %216 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %207, i32 %208, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %206, %194
  %218 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %19, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* %22, align 8
  %226 = load i64, i64* %27, align 8
  %227 = lshr i64 %225, %226
  %228 = icmp ugt i64 %224, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %217
  %230 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %231 = load i32, i32* @SPECTRAL_SCAN, align 4
  %232 = load i32, i32* %19, align 4
  %233 = getelementptr inbounds %struct.fft_sample_ht20, %struct.fft_sample_ht20* %14, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %19, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %230, i32 %231, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %232, i32 %238)
  store i32 -1, i32* %20, align 4
  br label %240

240:                                              ; preds = %229, %217
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %19, align 4
  br label %190

244:                                              ; preds = %190
  br label %245

245:                                              ; preds = %244, %176
  %246 = load i32, i32* %20, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = load i32, i32* %20, align 4
  store i32 %249, i32* %7, align 4
  br label %255

250:                                              ; preds = %245
  %251 = bitcast %struct.fft_sample_ht20* %14 to %struct.fft_sample_tlv*
  store %struct.fft_sample_tlv* %251, %struct.fft_sample_tlv** %18, align 8
  %252 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %9, align 8
  %253 = load %struct.fft_sample_tlv*, %struct.fft_sample_tlv** %18, align 8
  %254 = call i32 @ath_debug_send_fft_sample(%struct.ath_spec_scan_priv* %252, %struct.fft_sample_tlv* %253)
  store i32 0, i32* %7, align 4
  br label %255

255:                                              ; preds = %250, %248
  %256 = load i32, i32* %7, align 4
  ret i32 %256
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i8* @__cpu_to_be16(i64) #1

declare dso_local i32 @fix_rssi_inv_only(i32) #1

declare dso_local i64 @spectral_max_magnitude(i32) #1

declare dso_local i64 @spectral_max_index_ht20(i32) #1

declare dso_local i64 @spectral_bitmap_weight(i32) #1

declare dso_local i32 @__cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ath_debug_send_fft_sample(%struct.ath_spec_scan_priv*, %struct.fft_sample_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
