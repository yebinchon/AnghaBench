; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isppreview.c_preview_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_prev_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.prev_params*, i32, i32 }
%struct.prev_params = type { i32, i32, i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i64, i64 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@OMAP3ISP_PREV_FEATURES_END = common dso_local global i64 0, align 8
@ISPPRV_CONTRAST_DEF = common dso_local global i32 0, align 4
@ISPPRV_CONTRAST_UNITS = common dso_local global i32 0, align 4
@ISPPRV_BRIGHT_DEF = common dso_local global i32 0, align 4
@ISPPRV_BRIGHT_UNITS = common dso_local global i32 0, align 4
@OMAP3ISP_CFAFMT_BAYER = common dso_local global i32 0, align 4
@cfa_coef_table = common dso_local global i32 0, align 4
@FLR_CFA_GRADTHRS_HORZ = common dso_local global i32 0, align 4
@FLR_CFA_GRADTHRS_VERT = common dso_local global i32 0, align 4
@FLR_CSUP_GAIN = common dso_local global i32 0, align 4
@FLR_CSUP_THRES = common dso_local global i32 0, align 4
@luma_enhance_table = common dso_local global i32 0, align 4
@FLR_NF_STRGTH = common dso_local global i32 0, align 4
@noise_filter_table = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_DETECT_CORRECT_CHANNELS = common dso_local global i32 0, align 4
@DEF_DETECT_CORRECT_VAL = common dso_local global i32 0, align 4
@gamma_table = common dso_local global i32 0, align 4
@FLR_WBAL_DGAIN = common dso_local global i32 0, align 4
@FLR_WBAL_COEF = common dso_local global i8* null, align 8
@FLR_BLKADJ_RED = common dso_local global i32 0, align 4
@FLR_BLKADJ_GREEN = common dso_local global i32 0, align 4
@FLR_BLKADJ_BLUE = common dso_local global i32 0, align 4
@flr_rgb2rgb = common dso_local global i32 0, align 4
@flr_prev_csc = common dso_local global i32 0, align 4
@ISPPRV_YC_MIN = common dso_local global i8* null, align 8
@ISPPRV_YC_MAX = common dso_local global i8* null, align 8
@OMAP3ISP_PREV_CFA = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_DEFECT_COR = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_NF = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_GAMMA = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_BLKADJ = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_YC_LIMIT = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_RGB2RGB = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_COLOR_CONV = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_WB = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_BRIGHTNESS = common dso_local global i32 0, align 4
@OMAP3ISP_PREV_CONTRAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_prev_device*)* @preview_init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preview_init_params(%struct.isp_prev_device* %0) #0 {
  %2 = alloca %struct.isp_prev_device*, align 8
  %3 = alloca %struct.prev_params*, align 8
  %4 = alloca i32, align 4
  store %struct.isp_prev_device* %0, %struct.isp_prev_device** %2, align 8
  %5 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %6 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %10 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i32 -1, i32* %11, align 8
  %12 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %13 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.prev_params*, %struct.prev_params** %14, align 8
  %16 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %15, i64 0
  %17 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %16, i32 0, i32 15
  store i64 0, i64* %17, align 8
  %18 = load i64, i64* @OMAP3ISP_PREV_FEATURES_END, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %21 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load %struct.prev_params*, %struct.prev_params** %22, align 8
  %24 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %23, i64 0
  %25 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %24, i32 0, i32 14
  store i64 %19, i64* %25, align 8
  %26 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %27 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.prev_params*, %struct.prev_params** %28, align 8
  %30 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %29, i64 1
  %31 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %30, i32 0, i32 15
  store i64 0, i64* %31, align 8
  %32 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %33 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.prev_params*, %struct.prev_params** %34, align 8
  %36 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %35, i64 1
  %37 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %36, i32 0, i32 14
  store i64 0, i64* %37, align 8
  %38 = load %struct.isp_prev_device*, %struct.isp_prev_device** %2, align 8
  %39 = getelementptr inbounds %struct.isp_prev_device, %struct.isp_prev_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.prev_params*, %struct.prev_params** %40, align 8
  %42 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %41, i64 0
  store %struct.prev_params* %42, %struct.prev_params** %3, align 8
  %43 = load i32, i32* @ISPPRV_CONTRAST_DEF, align 4
  %44 = load i32, i32* @ISPPRV_CONTRAST_UNITS, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %47 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @ISPPRV_BRIGHT_DEF, align 4
  %49 = load i32, i32* @ISPPRV_BRIGHT_UNITS, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %52 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @OMAP3ISP_CFAFMT_BAYER, align 4
  %54 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %55 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %54, i32 0, i32 13
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %58 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %57, i32 0, i32 13
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @cfa_coef_table, align 4
  %62 = call i32 @memcpy(i32 %60, i32 %61, i32 4)
  %63 = load i32, i32* @FLR_CFA_GRADTHRS_HORZ, align 4
  %64 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %65 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %64, i32 0, i32 13
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @FLR_CFA_GRADTHRS_VERT, align 4
  %68 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %69 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %68, i32 0, i32 13
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @FLR_CSUP_GAIN, align 4
  %72 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %73 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %72, i32 0, i32 12
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @FLR_CSUP_THRES, align 4
  %76 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %77 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %76, i32 0, i32 12
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  %79 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %80 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %79, i32 0, i32 12
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %83 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %82, i32 0, i32 11
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @luma_enhance_table, align 4
  %87 = call i32 @memcpy(i32 %85, i32 %86, i32 4)
  %88 = load i32, i32* @FLR_NF_STRGTH, align 4
  %89 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %90 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %89, i32 0, i32 10
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %93 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %92, i32 0, i32 10
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @noise_filter_table, align 4
  %97 = call i32 @memcpy(i32 %95, i32 %96, i32 4)
  %98 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %99 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %114, %1
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @OMAP3ISP_PREV_DETECT_CORRECT_CHANNELS, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i32, i32* @DEF_DETECT_CORRECT_VAL, align 4
  %107 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %108 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %4, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %119 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @gamma_table, align 4
  %123 = call i32 @memcpy(i32 %121, i32 %122, i32 4)
  %124 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %125 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @gamma_table, align 4
  %129 = call i32 @memcpy(i32 %127, i32 %128, i32 4)
  %130 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %131 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %130, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @gamma_table, align 4
  %135 = call i32 @memcpy(i32 %133, i32 %134, i32 4)
  %136 = load i32, i32* @FLR_WBAL_DGAIN, align 4
  %137 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %138 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 4
  store i32 %136, i32* %139, align 8
  %140 = load i8*, i8** @FLR_WBAL_COEF, align 8
  %141 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %142 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 3
  store i8* %140, i8** %143, align 8
  %144 = load i8*, i8** @FLR_WBAL_COEF, align 8
  %145 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %146 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  store i8* %144, i8** %147, align 8
  %148 = load i8*, i8** @FLR_WBAL_COEF, align 8
  %149 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %150 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %149, i32 0, i32 7
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  %152 = load i8*, i8** @FLR_WBAL_COEF, align 8
  %153 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %154 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load i32, i32* @FLR_BLKADJ_RED, align 4
  %157 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %158 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %157, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @FLR_BLKADJ_GREEN, align 4
  %161 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %162 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @FLR_BLKADJ_BLUE, align 4
  %165 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %166 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  %168 = load i32, i32* @flr_rgb2rgb, align 4
  %169 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %170 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @flr_prev_csc, align 4
  %172 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %173 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load i8*, i8** @ISPPRV_YC_MIN, align 8
  %175 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %176 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 3
  store i8* %174, i8** %177, align 8
  %178 = load i8*, i8** @ISPPRV_YC_MAX, align 8
  %179 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %180 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  store i8* %178, i8** %181, align 8
  %182 = load i8*, i8** @ISPPRV_YC_MIN, align 8
  %183 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %184 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  store i8* %182, i8** %185, align 8
  %186 = load i8*, i8** @ISPPRV_YC_MAX, align 8
  %187 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %188 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  store i8* %186, i8** %189, align 8
  %190 = load i32, i32* @OMAP3ISP_PREV_CFA, align 4
  %191 = load i32, i32* @OMAP3ISP_PREV_DEFECT_COR, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @OMAP3ISP_PREV_NF, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @OMAP3ISP_PREV_GAMMA, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @OMAP3ISP_PREV_BLKADJ, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @OMAP3ISP_PREV_YC_LIMIT, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @OMAP3ISP_PREV_RGB2RGB, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @OMAP3ISP_PREV_COLOR_CONV, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @OMAP3ISP_PREV_WB, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @OMAP3ISP_PREV_BRIGHTNESS, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @OMAP3ISP_PREV_CONTRAST, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.prev_params*, %struct.prev_params** %3, align 8
  %212 = getelementptr inbounds %struct.prev_params, %struct.prev_params* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
