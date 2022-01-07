; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath_cmn_process_ht20_40_fft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-spectral.c_ath_cmn_process_ht20_40_fft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rx_status = type { i32*, i32* }
%struct.ath_spec_scan_priv = type { %struct.ath_hw* }
%struct.ath_hw = type { i8*, i32, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fft_sample_ht20_40 = type { i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.ath_common = type { i32 }
%struct.ath_ht20_40_mag_info = type { i32, i32, i32 }
%struct.fft_sample_tlv = type { i32 }

@SPECTRAL_HT20_40_NUM_BINS = common dso_local global i32 0, align 4
@ATH_DEFAULT_NOISE_FLOOR = common dso_local global i8* null, align 8
@ATH_FFT_SAMPLE_HT20_40 = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@SPECTRAL_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"FFT HT20/40 frame: lower mag 0x%X,lower_mag_idx %i, upper mag 0x%X,upper_mag_idx %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Magnitude mismatch !\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Calculated new lower max 0x%X at %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Got lower mag: 0x%X at index %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Got lower bin %i higher than max: 0x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Calculated new upper max 0x%X at %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Got upper mag: 0x%X at index %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Got upper bin %i higher than max: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_rx_status*, %struct.ath_spec_scan_priv*, i32*, i32, i32, i32)* @ath_cmn_process_ht20_40_fft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_cmn_process_ht20_40_fft(%struct.ath_rx_status* %0, %struct.ath_spec_scan_priv* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_rx_status*, align 8
  %9 = alloca %struct.ath_spec_scan_priv*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fft_sample_ht20_40, align 8
  %15 = alloca %struct.ath_common*, align 8
  %16 = alloca %struct.ath_hw*, align 8
  %17 = alloca %struct.ath9k_hw_cal_data*, align 8
  %18 = alloca %struct.ath_ht20_40_mag_info*, align 8
  %19 = alloca %struct.fft_sample_tlv*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.ath_rx_status* %0, %struct.ath_rx_status** %8, align 8
  store %struct.ath_spec_scan_priv* %1, %struct.ath_spec_scan_priv** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %35 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %9, align 8
  %36 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %35, i32 0, i32 0
  %37 = load %struct.ath_hw*, %struct.ath_hw** %36, align 8
  %38 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %37)
  store %struct.ath_common* %38, %struct.ath_common** %15, align 8
  %39 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %9, align 8
  %40 = getelementptr inbounds %struct.ath_spec_scan_priv, %struct.ath_spec_scan_priv* %39, i32 0, i32 0
  %41 = load %struct.ath_hw*, %struct.ath_hw** %40, align 8
  store %struct.ath_hw* %41, %struct.ath_hw** %16, align 8
  %42 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 2
  %44 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %43, align 8
  store %struct.ath9k_hw_cal_data* %44, %struct.ath9k_hw_cal_data** %17, align 8
  %45 = load i32, i32* @SPECTRAL_HT20_40_NUM_BINS, align 4
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %47 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %17, align 8
  %48 = icmp ne %struct.ath9k_hw_cal_data* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %6
  %50 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %51 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %52 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %17, align 8
  %55 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 3
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @ath9k_hw_getchan_noise(%struct.ath_hw* %50, i32 %53, i32 %59)
  store i8* %60, i8** %23, align 8
  br label %63

61:                                               ; preds = %6
  %62 = load i8*, i8** @ATH_DEFAULT_NOISE_FLOOR, align 8
  store i8* %62, i8** %23, align 8
  br label %63

63:                                               ; preds = %61, %49
  store i32 108, i32* %27, align 4
  %64 = load i32, i32* @ATH_FFT_SAMPLE_HT20_40, align 4
  %65 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 15
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %27, align 4
  %68 = call i8* @__cpu_to_be16(i32 %67)
  %69 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 15
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i8* @__cpu_to_be16(i32 %71)
  %73 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 14
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* %13, align 4
  %75 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %63
  %80 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %81 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @fix_rssi_inv_only(i32 %84)
  store i8* %85, i8** %28, align 8
  %86 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %87 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @fix_rssi_inv_only(i32 %90)
  store i8* %91, i8** %29, align 8
  %92 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %93 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 13
  store i8* %94, i8** %95, align 8
  %96 = load i8*, i8** %23, align 8
  %97 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 12
  store i8* %96, i8** %97, align 8
  br label %117

98:                                               ; preds = %63
  %99 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %100 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @fix_rssi_inv_only(i32 %103)
  store i8* %104, i8** %28, align 8
  %105 = load %struct.ath_rx_status*, %struct.ath_rx_status** %8, align 8
  %106 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @fix_rssi_inv_only(i32 %109)
  store i8* %110, i8** %29, align 8
  %111 = load i8*, i8** %23, align 8
  %112 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 13
  store i8* %111, i8** %112, align 8
  %113 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  %114 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 12
  store i8* %115, i8** %116, align 8
  br label %117

117:                                              ; preds = %98, %79
  %118 = load i8*, i8** %28, align 8
  %119 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 11
  store i8* %118, i8** %119, align 8
  %120 = load i8*, i8** %29, align 8
  %121 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 10
  store i8* %120, i8** %121, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* @SPECTRAL_HT20_40_NUM_BINS, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = bitcast i32* %125 to %struct.ath_ht20_40_mag_info*
  store %struct.ath_ht20_40_mag_info* %126, %struct.ath_ht20_40_mag_info** %18, align 8
  %127 = load %struct.ath_ht20_40_mag_info*, %struct.ath_ht20_40_mag_info** %18, align 8
  %128 = getelementptr inbounds %struct.ath_ht20_40_mag_info, %struct.ath_ht20_40_mag_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @spectral_max_magnitude(i32 %129)
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %24, align 4
  %132 = call i8* @__cpu_to_be16(i32 %131)
  %133 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 8
  store i8* %132, i8** %133, align 8
  %134 = load %struct.ath_ht20_40_mag_info*, %struct.ath_ht20_40_mag_info** %18, align 8
  %135 = getelementptr inbounds %struct.ath_ht20_40_mag_info, %struct.ath_ht20_40_mag_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @spectral_max_magnitude(i32 %136)
  store i32 %137, i32* %25, align 4
  %138 = load i32, i32* %25, align 4
  %139 = call i8* @__cpu_to_be16(i32 %138)
  %140 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 7
  store i8* %139, i8** %140, align 8
  %141 = load %struct.ath_ht20_40_mag_info*, %struct.ath_ht20_40_mag_info** %18, align 8
  %142 = getelementptr inbounds %struct.ath_ht20_40_mag_info, %struct.ath_ht20_40_mag_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @spectral_max_index_ht40(i32 %143)
  store i32 %144, i32* %30, align 4
  %145 = load i32, i32* %30, align 4
  %146 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 1
  store i32 %145, i32* %146, align 4
  %147 = load %struct.ath_ht20_40_mag_info*, %struct.ath_ht20_40_mag_info** %18, align 8
  %148 = getelementptr inbounds %struct.ath_ht20_40_mag_info, %struct.ath_ht20_40_mag_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @spectral_max_index_ht40(i32 %149)
  store i32 %150, i32* %31, align 4
  %151 = load i32, i32* %31, align 4
  %152 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 2
  store i32 %151, i32* %152, align 8
  %153 = load %struct.ath_ht20_40_mag_info*, %struct.ath_ht20_40_mag_info** %18, align 8
  %154 = getelementptr inbounds %struct.ath_ht20_40_mag_info, %struct.ath_ht20_40_mag_info* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @spectral_bitmap_weight(i32 %155)
  store i32 %156, i32* %32, align 4
  %157 = load i32, i32* %32, align 4
  %158 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 3
  store i32 %157, i32* %158, align 4
  %159 = load %struct.ath_ht20_40_mag_info*, %struct.ath_ht20_40_mag_info** %18, align 8
  %160 = getelementptr inbounds %struct.ath_ht20_40_mag_info, %struct.ath_ht20_40_mag_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @spectral_bitmap_weight(i32 %161)
  store i32 %162, i32* %33, align 4
  %163 = load i32, i32* %33, align 4
  %164 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 4
  store i32 %163, i32* %164, align 8
  %165 = load %struct.ath_ht20_40_mag_info*, %struct.ath_ht20_40_mag_info** %18, align 8
  %166 = getelementptr inbounds %struct.ath_ht20_40_mag_info, %struct.ath_ht20_40_mag_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 15
  store i32 %168, i32* %34, align 4
  %169 = load i32, i32* %34, align 4
  %170 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 5
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @__cpu_to_be64(i32 %171)
  %173 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 9
  store i32 %172, i32* %173, align 8
  %174 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %175 = load i32*, i32** %174, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* @SPECTRAL_HT20_40_NUM_BINS, align 4
  %178 = call i32 @memcpy(i32* %175, i32* %176, i32 %177)
  %179 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %180 = load i32, i32* @SPECTRAL_SCAN, align 4
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %34, align 4
  %183 = ashr i32 %181, %182
  %184 = load i32, i32* %30, align 4
  %185 = load i32, i32* %25, align 4
  %186 = load i32, i32* %34, align 4
  %187 = ashr i32 %185, %186
  %188 = load i32, i32* %31, align 4
  %189 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %179, i32 %180, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %183, i32 %184, i32 %187, i32 %188)
  %190 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %31, align 4
  %193 = load i32, i32* %20, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 248
  %199 = load i32, i32* %25, align 4
  %200 = load i32, i32* %34, align 4
  %201 = ashr i32 %199, %200
  %202 = and i32 %201, 248
  %203 = icmp ne i32 %198, %202
  br i1 %203, label %217, label %204

204:                                              ; preds = %117
  %205 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %30, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, 248
  %212 = load i32, i32* %24, align 4
  %213 = load i32, i32* %34, align 4
  %214 = ashr i32 %212, %213
  %215 = and i32 %214, 248
  %216 = icmp ne i32 %211, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %204, %117
  %218 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %219 = load i32, i32* @SPECTRAL_SCAN, align 4
  %220 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %218, i32 %219, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %22, align 4
  br label %221

221:                                              ; preds = %217, %204
  %222 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %20, align 4
  %232 = sub nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %228, %235
  %237 = sdiv i32 %236, 2
  %238 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %237, i32* %242, align 4
  %243 = load i32, i32* %30, align 4
  %244 = load i32, i32* %20, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %286

246:                                              ; preds = %221
  store i32 0, i32* %26, align 4
  store i32 0, i32* %21, align 4
  br label %247

247:                                              ; preds = %270, %246
  %248 = load i32, i32* %21, align 4
  %249 = load i32, i32* %20, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %273

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %21, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %26, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %260, label %269

260:                                              ; preds = %251
  %261 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %21, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %26, align 4
  %267 = load i32, i32* %21, align 4
  %268 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 1
  store i32 %267, i32* %268, align 4
  br label %269

269:                                              ; preds = %260, %251
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %21, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %21, align 4
  br label %247

273:                                              ; preds = %247
  %274 = load i32, i32* %26, align 4
  %275 = load i32, i32* %34, align 4
  %276 = shl i32 %274, %275
  store i32 %276, i32* %24, align 4
  %277 = load i32, i32* %24, align 4
  %278 = call i8* @__cpu_to_be16(i32 %277)
  %279 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 8
  store i8* %278, i8** %279, align 8
  %280 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %281 = load i32, i32* @SPECTRAL_SCAN, align 4
  %282 = load i32, i32* %26, align 4
  %283 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %280, i32 %281, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %282, i32 %284)
  br label %340

286:                                              ; preds = %221
  store i32 0, i32* %21, align 4
  br label %287

287:                                              ; preds = %336, %286
  %288 = load i32, i32* %21, align 4
  %289 = load i32, i32* %20, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %339

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %21, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %24, align 4
  %299 = load i32, i32* %34, align 4
  %300 = ashr i32 %298, %299
  %301 = icmp eq i32 %297, %300
  br i1 %301, label %302, label %313

302:                                              ; preds = %291
  %303 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %304 = load i32, i32* @SPECTRAL_SCAN, align 4
  %305 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %21, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %21, align 4
  %312 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %303, i32 %304, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %302, %291
  %314 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %21, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %24, align 4
  %321 = load i32, i32* %34, align 4
  %322 = ashr i32 %320, %321
  %323 = icmp sgt i32 %319, %322
  br i1 %323, label %324, label %335

324:                                              ; preds = %313
  %325 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %326 = load i32, i32* @SPECTRAL_SCAN, align 4
  %327 = load i32, i32* %21, align 4
  %328 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %21, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %325, i32 %326, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %327, i32 %333)
  store i32 -1, i32* %22, align 4
  br label %335

335:                                              ; preds = %324, %313
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %21, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %21, align 4
  br label %287

339:                                              ; preds = %287
  br label %340

340:                                              ; preds = %339, %273
  %341 = load i32, i32* %31, align 4
  %342 = load i32, i32* %20, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %385

344:                                              ; preds = %340
  store i32 0, i32* %26, align 4
  %345 = load i32, i32* %20, align 4
  store i32 %345, i32* %21, align 4
  br label %346

346:                                              ; preds = %369, %344
  %347 = load i32, i32* %21, align 4
  %348 = load i32, i32* @SPECTRAL_HT20_40_NUM_BINS, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %372

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %21, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %26, align 4
  %358 = icmp sgt i32 %356, %357
  br i1 %358, label %359, label %368

359:                                              ; preds = %350
  %360 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %21, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %26, align 4
  %366 = load i32, i32* %21, align 4
  %367 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 2
  store i32 %366, i32* %367, align 8
  br label %368

368:                                              ; preds = %359, %350
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %21, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %21, align 4
  br label %346

372:                                              ; preds = %346
  %373 = load i32, i32* %26, align 4
  %374 = load i32, i32* %34, align 4
  %375 = shl i32 %373, %374
  store i32 %375, i32* %25, align 4
  %376 = load i32, i32* %25, align 4
  %377 = call i8* @__cpu_to_be16(i32 %376)
  %378 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 7
  store i8* %377, i8** %378, align 8
  %379 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %380 = load i32, i32* @SPECTRAL_SCAN, align 4
  %381 = load i32, i32* %26, align 4
  %382 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %379, i32 %380, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %381, i32 %383)
  br label %440

385:                                              ; preds = %340
  %386 = load i32, i32* %20, align 4
  store i32 %386, i32* %21, align 4
  br label %387

387:                                              ; preds = %436, %385
  %388 = load i32, i32* %21, align 4
  %389 = load i32, i32* @SPECTRAL_HT20_40_NUM_BINS, align 4
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %391, label %439

391:                                              ; preds = %387
  %392 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %21, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %25, align 4
  %399 = load i32, i32* %34, align 4
  %400 = ashr i32 %398, %399
  %401 = icmp eq i32 %397, %400
  br i1 %401, label %402, label %413

402:                                              ; preds = %391
  %403 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %404 = load i32, i32* @SPECTRAL_SCAN, align 4
  %405 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %21, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %21, align 4
  %412 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %403, i32 %404, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %410, i32 %411)
  br label %413

413:                                              ; preds = %402, %391
  %414 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %21, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* %25, align 4
  %421 = load i32, i32* %34, align 4
  %422 = ashr i32 %420, %421
  %423 = icmp sgt i32 %419, %422
  br i1 %423, label %424, label %435

424:                                              ; preds = %413
  %425 = load %struct.ath_common*, %struct.ath_common** %15, align 8
  %426 = load i32, i32* @SPECTRAL_SCAN, align 4
  %427 = load i32, i32* %21, align 4
  %428 = getelementptr inbounds %struct.fft_sample_ht20_40, %struct.fft_sample_ht20_40* %14, i32 0, i32 6
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %21, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %425, i32 %426, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %427, i32 %433)
  store i32 -1, i32* %22, align 4
  br label %435

435:                                              ; preds = %424, %413
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %21, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %21, align 4
  br label %387

439:                                              ; preds = %387
  br label %440

440:                                              ; preds = %439, %372
  %441 = load i32, i32* %22, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %440
  %444 = load i32, i32* %22, align 4
  store i32 %444, i32* %7, align 4
  br label %450

445:                                              ; preds = %440
  %446 = bitcast %struct.fft_sample_ht20_40* %14 to %struct.fft_sample_tlv*
  store %struct.fft_sample_tlv* %446, %struct.fft_sample_tlv** %19, align 8
  %447 = load %struct.ath_spec_scan_priv*, %struct.ath_spec_scan_priv** %9, align 8
  %448 = load %struct.fft_sample_tlv*, %struct.fft_sample_tlv** %19, align 8
  %449 = call i32 @ath_debug_send_fft_sample(%struct.ath_spec_scan_priv* %447, %struct.fft_sample_tlv* %448)
  store i32 0, i32* %7, align 4
  br label %450

450:                                              ; preds = %445, %443
  %451 = load i32, i32* %7, align 4
  ret i32 %451
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i8* @ath9k_hw_getchan_noise(%struct.ath_hw*, i32, i32) #1

declare dso_local i8* @__cpu_to_be16(i32) #1

declare dso_local i8* @fix_rssi_inv_only(i32) #1

declare dso_local i32 @spectral_max_magnitude(i32) #1

declare dso_local i32 @spectral_max_index_ht40(i32) #1

declare dso_local i32 @spectral_bitmap_weight(i32) #1

declare dso_local i32 @__cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ath_debug_send_fft_sample(%struct.ath_spec_scan_priv*, %struct.fft_sample_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
