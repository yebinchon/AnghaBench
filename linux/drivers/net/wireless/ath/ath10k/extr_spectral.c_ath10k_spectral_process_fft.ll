; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_spectral.c_ath10k_spectral_process_fft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_spectral.c_ath10k_spectral_process_fft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.wmi_phyerr_ev_arg = type { i32, i32, i32, i32*, i32 }
%struct.phyerr_fft_report = type { i32, i32 }
%struct.fft_sample_ath10k = type { i32, i32*, %struct.TYPE_4__, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i32 }

@SPECTRAL_ATH10K_MAX_NUM_BINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH_FFT_SAMPLE_ATH10K = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG1_RELPWR_DB = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG1_AVGPWR_DB = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG1_PEAK_MAG = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG0_PEAK_SIDX = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG0_TOTAL_GAIN_DB = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG0_BASE_PWR_DB = common dso_local global i32 0, align 4
@SEARCH_FFT_REPORT_REG0_FFT_CHN_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_spectral_process_fft(%struct.ath10k* %0, %struct.wmi_phyerr_ev_arg* %1, %struct.phyerr_fft_report* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.wmi_phyerr_ev_arg*, align 8
  %9 = alloca %struct.phyerr_fft_report*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fft_sample_ath10k*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store %struct.wmi_phyerr_ev_arg* %1, %struct.wmi_phyerr_ev_arg** %8, align 8
  store %struct.phyerr_fft_report* %2, %struct.phyerr_fft_report** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %27 = load i32, i32* @SPECTRAL_ATH10K_MAX_NUM_BINS, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 120, %28
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %32 = bitcast i64* %31 to %struct.fft_sample_ath10k*
  store %struct.fft_sample_ath10k* %32, %struct.fft_sample_ath10k** %12, align 8
  %33 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @ath10k_spectral_fix_bin_size(%struct.ath10k* %33, i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ult i64 %36, 64
  br i1 %37, label %43, label %38

38:                                               ; preds = %5
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* @SPECTRAL_ATH10K_MAX_NUM_BINS, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %5
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %222

46:                                               ; preds = %38
  %47 = load %struct.phyerr_fft_report*, %struct.phyerr_fft_report** %9, align 8
  %48 = getelementptr inbounds %struct.phyerr_fft_report, %struct.phyerr_fft_report* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @__le32_to_cpu(i32 %49)
  store i32 %50, i32* %21, align 4
  %51 = load %struct.phyerr_fft_report*, %struct.phyerr_fft_report** %9, align 8
  %52 = getelementptr inbounds %struct.phyerr_fft_report, %struct.phyerr_fft_report* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__le32_to_cpu(i32 %53)
  store i32 %54, i32* %22, align 4
  %55 = load i64, i64* %10, align 8
  %56 = add i64 116, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* @ATH_FFT_SAMPLE_ATH10K, align 4
  %59 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %60 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* %19, align 4
  %63 = call i8* @__cpu_to_be16(i32 %62)
  %64 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %65 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %8, align 8
  %68 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %85 [
    i32 20, label %70
    i32 40, label %73
    i32 80, label %76
  ]

70:                                               ; preds = %46
  %71 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %72 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %71, i32 0, i32 0
  store i32 22, i32* %72, align 8
  br label %91

73:                                               ; preds = %46
  %74 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %75 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %74, i32 0, i32 0
  store i32 44, i32* %75, align 8
  br label %91

76:                                               ; preds = %46
  %77 = load i64, i64* %10, align 8
  %78 = icmp eq i64 %77, 64
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %222

82:                                               ; preds = %76
  %83 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %84 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %83, i32 0, i32 0
  store i32 88, i32* %84, align 8
  br label %91

85:                                               ; preds = %46
  %86 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %8, align 8
  %87 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %90 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %82, %73, %70
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* @SEARCH_FFT_REPORT_REG1_RELPWR_DB, align 4
  %94 = call i8* @MS(i32 %92, i32 %93)
  %95 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %96 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %95, i32 0, i32 14
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* @SEARCH_FFT_REPORT_REG1_AVGPWR_DB, align 4
  %99 = call i8* @MS(i32 %97, i32 %98)
  %100 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %101 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %100, i32 0, i32 13
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* @SEARCH_FFT_REPORT_REG1_PEAK_MAG, align 4
  %104 = call i8* @MS(i32 %102, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = call i8* @__cpu_to_be16(i32 %106)
  %108 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %109 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %108, i32 0, i32 12
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* @SEARCH_FFT_REPORT_REG0_PEAK_SIDX, align 4
  %112 = call i8* @MS(i32 %110, i32 %111)
  %113 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %114 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %8, align 8
  %116 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %119 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %118, i32 0, i32 11
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* @SEARCH_FFT_REPORT_REG0_TOTAL_GAIN_DB, align 4
  %122 = call i8* @MS(i32 %120, i32 %121)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* @SEARCH_FFT_REPORT_REG0_BASE_PWR_DB, align 4
  %126 = call i8* @MS(i32 %124, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %17, align 4
  %129 = call i8* @__cpu_to_be16(i32 %128)
  %130 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %131 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %130, i32 0, i32 10
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %18, align 4
  %133 = call i8* @__cpu_to_be16(i32 %132)
  %134 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %135 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %134, i32 0, i32 9
  store i8* %133, i8** %135, align 8
  %136 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %8, align 8
  %137 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %15, align 4
  %139 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %8, align 8
  %140 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i8* @__cpu_to_be16(i32 %142)
  %144 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %145 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %144, i32 0, i32 8
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %16, align 4
  %147 = call i8* @__cpu_to_be16(i32 %146)
  %148 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %149 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %148, i32 0, i32 7
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* @SEARCH_FFT_REPORT_REG0_FFT_CHN_IDX, align 4
  %152 = call i8* @MS(i32 %150, i32 %151)
  %153 = ptrtoint i8* %152 to i64
  store i64 %153, i64* %23, align 8
  %154 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %8, align 8
  %155 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %23, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @__cpu_to_be16(i32 %159)
  %161 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %162 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  %163 = load %struct.phyerr_fft_report*, %struct.phyerr_fft_report** %9, align 8
  %164 = bitcast %struct.phyerr_fft_report* %163 to i64*
  store i64* %164, i64** %24, align 8
  %165 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %166 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add i64 8, %168
  %170 = load i64*, i64** %24, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 %169
  store i64* %171, i64** %24, align 8
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @__cpu_to_be64(i32 %172)
  %174 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %175 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  %176 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %177 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* %20, align 4
  %180 = load i64, i64* %10, align 8
  %181 = load i64*, i64** %24, align 8
  %182 = call i32 @get_max_exp(i8* %178, i32 %179, i64 %180, i64* %181)
  %183 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %184 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %186 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i64*, i64** %24, align 8
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @memcpy(i32* %187, i64* %188, i64 %189)
  %191 = load i64, i64* %10, align 8
  %192 = udiv i64 %191, 2
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %25, align 4
  %194 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %195 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %25, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %203 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %25, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %201, %209
  %211 = sdiv i32 %210, 2
  %212 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %213 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %25, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %211, i32* %217, align 4
  %218 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %219 = load %struct.fft_sample_ath10k*, %struct.fft_sample_ath10k** %12, align 8
  %220 = getelementptr inbounds %struct.fft_sample_ath10k, %struct.fft_sample_ath10k* %219, i32 0, i32 2
  %221 = call i32 @send_fft_sample(%struct.ath10k* %218, %struct.TYPE_4__* %220)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %222

222:                                              ; preds = %91, %79, %43
  %223 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ath10k_spectral_fix_bin_size(%struct.ath10k*, i64) #2

declare dso_local i32 @__le32_to_cpu(i32) #2

declare dso_local i8* @__cpu_to_be16(i32) #2

declare dso_local i8* @MS(i32, i32) #2

declare dso_local i32 @__cpu_to_be64(i32) #2

declare dso_local i32 @get_max_exp(i8*, i32, i64, i64*) #2

declare dso_local i32 @memcpy(i32*, i64*, i64) #2

declare dso_local i32 @send_fft_sample(%struct.ath10k*, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
