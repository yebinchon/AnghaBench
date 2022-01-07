; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm355_ccdc.c_ccdc_config_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm355_ccdc.c_ccdc_config_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.ccdc_params_raw }
%struct.ccdc_params_raw = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_7__, %struct.ccdc_config_params_raw }
%struct.TYPE_7__ = type { i32 }
%struct.ccdc_config_params_raw = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@ccdc_cfg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"\0AStarting ccdc_config_raw...\00", align 1
@CCDC_YCINSWP_RAW = common dso_local global i32 0, align 4
@CCDC_CCDCFG_FIDMD_LATCH_VSYNC = common dso_local global i32 0, align 4
@CCDC_CCDCFG_WENLOG_AND = common dso_local global i32 0, align 4
@CCDC_CCDCFG_TRGSEL_WEN = common dso_local global i32 0, align 4
@CCDC_CCDCFG_EXTRG_DISABLE = common dso_local global i32 0, align 4
@CCDC_LATCH_ON_VSYNC_DISABLE = common dso_local global i32 0, align 4
@CCDCFG = common dso_local global i32 0, align 4
@CCDC_VDHDOUT_INPUT = common dso_local global i32 0, align 4
@CCDC_RAW_IP_MODE = common dso_local global i32 0, align 4
@CCDC_DATAPOL_NORMAL = common dso_local global i32 0, align 4
@CCDC_EXWEN_DISABLE = common dso_local global i32 0, align 4
@CCDC_VD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_VD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_HD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_HD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_FID_POL_MASK = common dso_local global i32 0, align 4
@CCDC_FID_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_FRM_FMT_MASK = common dso_local global i32 0, align 4
@CCDC_FRM_FMT_SHIFT = common dso_local global i32 0, align 4
@CCDC_PIX_FMT_MASK = common dso_local global i32 0, align 4
@CCDC_PIX_FMT_SHIFT = common dso_local global i32 0, align 4
@CCDC_DATA_8BITS = common dso_local global i64 0, align 8
@CCDC_DATA_PACK_ENABLE = common dso_local global i32 0, align 4
@CCDC_LPF_MASK = common dso_local global i32 0, align 4
@CCDC_LPF_SHIFT = common dso_local global i32 0, align 4
@CCDC_DATASFT_MASK = common dso_local global i32 0, align 4
@CCDC_DATASFT_SHIFT = common dso_local global i32 0, align 4
@MODESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\0AWriting 0x%x to MODESET...\0A\00", align 1
@CCDC_MED_FILT_THRESH = common dso_local global i32 0, align 4
@MEDFILT = common dso_local global i32 0, align 4
@CCDC_GAMMA_BITS_11_2 = common dso_local global i32 0, align 4
@CCDC_GAMMAWD_INPUT_SHIFT = common dso_local global i32 0, align 4
@CCDC_CFA_MOSAIC = common dso_local global i32 0, align 4
@CCDC_ALAW_ENABLE = common dso_local global i32 0, align 4
@CCDC_ALAW_GAMMA_WD_MASK = common dso_local global i32 0, align 4
@CCDC_MFILT1_SHIFT = common dso_local global i32 0, align 4
@CCDC_MFILT2_SHIFT = common dso_local global i32 0, align 4
@GAMMAWD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\0AWriting 0x%x to GAMMAWD...\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"\0AWriting %x to COLPTN...\0A\00", align 1
@CCDC_DATAOFST_MASK = common dso_local global i32 0, align 4
@CCDC_DATAOFST_H_SHIFT = common dso_local global i32 0, align 4
@CCDC_DATAOFST_V_SHIFT = common dso_local global i32 0, align 4
@DATAOFST = common dso_local global i32 0, align 4
@CCDC_HSIZE_FLIP_MASK = common dso_local global i32 0, align 4
@CCDC_HSIZE_FLIP_SHIFT = common dso_local global i32 0, align 4
@CCDC_HSIZE_VAL_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"\0AWriting 0x%x to HSIZE...\0A\00", align 1
@HSIZE = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@CCDC_SDOFST_INTERLACE_INVERSE = common dso_local global i32 0, align 4
@SDOFST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"\0AWriting %x to SDOFST...\0A\00", align 1
@CCDC_SDOFST_INTERLACE_NORMAL = common dso_local global i32 0, align 4
@CCDC_FRMFMT_PROGRESSIVE = common dso_local global i32 0, align 4
@CCDC_SDOFST_PROGRESSIVE_INVERSE = common dso_local global i32 0, align 4
@CCDC_SDOFST_PROGRESSIVE_NORMAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"\0Aend of ccdc_config_raw...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ccdc_config_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccdc_config_raw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ccdc_params_raw*, align 8
  %3 = alloca %struct.ccdc_config_params_raw*, align 8
  %4 = alloca i32, align 4
  store %struct.ccdc_params_raw* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 1), %struct.ccdc_params_raw** %2, align 8
  store %struct.ccdc_config_params_raw* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 1, i32 8), %struct.ccdc_config_params_raw** %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %6 = call i32 (i32, i8*, ...) @dev_dbg(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @ccdc_restore_defaults()
  %8 = load i32, i32* @CCDC_YCINSWP_RAW, align 4
  %9 = load i32, i32* @CCDC_CCDCFG_FIDMD_LATCH_VSYNC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CCDC_CCDCFG_WENLOG_AND, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CCDC_CCDCFG_TRGSEL_WEN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CCDC_CCDCFG_EXTRG_DISABLE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CCDC_LATCH_ON_VSYNC_DISABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CCDCFG, align 4
  %20 = call i32 @regw(i32 %18, i32 %19)
  %21 = load i32, i32* @CCDC_VDHDOUT_INPUT, align 4
  %22 = load i32, i32* @CCDC_RAW_IP_MODE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CCDC_DATAPOL_NORMAL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CCDC_EXWEN_DISABLE, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %29 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CCDC_VD_POL_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @CCDC_VD_POL_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %36 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CCDC_HD_POL_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @CCDC_HD_POL_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %34, %41
  %43 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %44 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CCDC_FID_POL_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @CCDC_FID_POL_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %42, %49
  %51 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %52 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CCDC_FRM_FMT_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @CCDC_FRM_FMT_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %50, %57
  %59 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %60 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CCDC_PIX_FMT_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @CCDC_PIX_FMT_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %58, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %70 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CCDC_DATA_8BITS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %0
  %75 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %76 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74, %0
  %81 = load i32, i32* @CCDC_DATA_PACK_ENABLE, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %86 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %91 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CCDC_LPF_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @CCDC_LPF_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %4, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %89, %84
  %100 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %101 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CCDC_DATASFT_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @CCDC_DATASFT_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @MODESET, align 4
  %111 = call i32 @regw(i32 %109, i32 %110)
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 (i32, i8*, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %116 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CCDC_MED_FILT_THRESH, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @MEDFILT, align 4
  %121 = call i32 @regw(i32 %119, i32 %120)
  %122 = load i32, i32* @CCDC_GAMMA_BITS_11_2, align 4
  %123 = load i32, i32* @CCDC_GAMMAWD_INPUT_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = load i32, i32* @CCDC_CFA_MOSAIC, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %4, align 4
  %127 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %128 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %99
  %133 = load i32, i32* @CCDC_ALAW_ENABLE, align 4
  %134 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %135 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @CCDC_ALAW_GAMMA_WD_MASK, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @CCDC_GAMMAWD_INPUT_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = or i32 %133, %141
  %143 = load i32, i32* %4, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %132, %99
  %146 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %147 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CCDC_MFILT1_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %152 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CCDC_MFILT2_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = or i32 %150, %155
  %157 = load i32, i32* %4, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @GAMMAWD, align 4
  %161 = call i32 @regw(i32 %159, i32 %160)
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %163 = load i32, i32* %4, align 4
  %164 = call i32 (i32, i8*, ...) @dev_dbg(i32 %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %166 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %165, i32 0, i32 7
  %167 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %168 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ccdc_setwin(%struct.TYPE_7__* %166, i32 %169, i32 1)
  %171 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %172 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %171, i32 0, i32 13
  %173 = call i32 @ccdc_config_black_clamp(i32* %172)
  %174 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %175 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %174, i32 0, i32 12
  %176 = call i32 @ccdc_config_black_compense(i32* %175)
  %177 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %178 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %177, i32 0, i32 11
  %179 = call i64 @ccdc_config_vdfc(i32* %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %145
  %182 = load i32, i32* @EFAULT, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %1, align 4
  br label %339

184:                                              ; preds = %145
  %185 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %186 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %185, i32 0, i32 10
  %187 = call i32 @ccdc_config_csc(i32* %186)
  %188 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %189 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %188, i32 0, i32 9
  %190 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %191 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %190, i32 0, i32 8
  %192 = call i32 @ccdc_config_color_patterns(i32* %189, i32* %191)
  %193 = call i32 (...) @ccdc_config_gain_offset()
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %195 = load i32, i32* %4, align 4
  %196 = call i32 (i32, i8*, ...) @dev_dbg(i32 %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %195)
  %197 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %198 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @CCDC_DATAOFST_MASK, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* @CCDC_DATAOFST_H_SHIFT, align 4
  %204 = shl i32 %202, %203
  store i32 %204, i32* %4, align 4
  %205 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %206 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %205, i32 0, i32 7
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @CCDC_DATAOFST_MASK, align 4
  %210 = and i32 %208, %209
  %211 = load i32, i32* @CCDC_DATAOFST_V_SHIFT, align 4
  %212 = shl i32 %210, %211
  %213 = load i32, i32* %4, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @DATAOFST, align 4
  %217 = call i32 @regw(i32 %215, i32 %216)
  %218 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %219 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @CCDC_HSIZE_FLIP_MASK, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* @CCDC_HSIZE_FLIP_SHIFT, align 4
  %224 = shl i32 %222, %223
  store i32 %224, i32* %4, align 4
  %225 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %226 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @CCDC_DATA_8BITS, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %236, label %230

230:                                              ; preds = %184
  %231 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %3, align 8
  %232 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %257

236:                                              ; preds = %230, %184
  %237 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %238 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %237, i32 0, i32 7
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 31
  %242 = ashr i32 %241, 5
  %243 = load i32, i32* @CCDC_HSIZE_VAL_MASK, align 4
  %244 = and i32 %242, %243
  %245 = load i32, i32* %4, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %4, align 4
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %248 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %249 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 31
  %253 = ashr i32 %252, 5
  %254 = load i32, i32* @CCDC_HSIZE_VAL_MASK, align 4
  %255 = and i32 %253, %254
  %256 = call i32 (i32, i8*, ...) @dev_dbg(i32 %247, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %255)
  br label %280

257:                                              ; preds = %230
  %258 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %259 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %258, i32 0, i32 7
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = mul nsw i32 %261, 2
  %263 = add nsw i32 %262, 31
  %264 = ashr i32 %263, 5
  %265 = load i32, i32* @CCDC_HSIZE_VAL_MASK, align 4
  %266 = and i32 %264, %265
  %267 = load i32, i32* %4, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %4, align 4
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %270 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %271 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = mul nsw i32 %273, 2
  %275 = add nsw i32 %274, 31
  %276 = ashr i32 %275, 5
  %277 = load i32, i32* @CCDC_HSIZE_VAL_MASK, align 4
  %278 = and i32 %276, %277
  %279 = call i32 (i32, i8*, ...) @dev_dbg(i32 %269, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %257, %236
  %281 = load i32, i32* %4, align 4
  %282 = load i32, i32* @HSIZE, align 4
  %283 = call i32 @regw(i32 %281, i32 %282)
  %284 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %285 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %309

289:                                              ; preds = %280
  %290 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %291 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %290, i32 0, i32 6
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %289
  %295 = load i32, i32* @CCDC_SDOFST_INTERLACE_INVERSE, align 4
  %296 = load i32, i32* @SDOFST, align 4
  %297 = call i32 @regw(i32 %295, i32 %296)
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %299 = load i32, i32* @CCDC_SDOFST_INTERLACE_INVERSE, align 4
  %300 = call i32 (i32, i8*, ...) @dev_dbg(i32 %298, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %299)
  br label %308

301:                                              ; preds = %289
  %302 = load i32, i32* @CCDC_SDOFST_INTERLACE_NORMAL, align 4
  %303 = load i32, i32* @SDOFST, align 4
  %304 = call i32 @regw(i32 %302, i32 %303)
  %305 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %306 = load i32, i32* @CCDC_SDOFST_INTERLACE_NORMAL, align 4
  %307 = call i32 (i32, i8*, ...) @dev_dbg(i32 %305, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %306)
  br label %308

308:                                              ; preds = %301, %294
  br label %336

309:                                              ; preds = %280
  %310 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %311 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %335

315:                                              ; preds = %309
  %316 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %2, align 8
  %317 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %316, i32 0, i32 6
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %315
  %321 = load i32, i32* @CCDC_SDOFST_PROGRESSIVE_INVERSE, align 4
  %322 = load i32, i32* @SDOFST, align 4
  %323 = call i32 @regw(i32 %321, i32 %322)
  %324 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %325 = load i32, i32* @CCDC_SDOFST_PROGRESSIVE_INVERSE, align 4
  %326 = call i32 (i32, i8*, ...) @dev_dbg(i32 %324, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %325)
  br label %334

327:                                              ; preds = %315
  %328 = load i32, i32* @CCDC_SDOFST_PROGRESSIVE_NORMAL, align 4
  %329 = load i32, i32* @SDOFST, align 4
  %330 = call i32 @regw(i32 %328, i32 %329)
  %331 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %332 = load i32, i32* @CCDC_SDOFST_PROGRESSIVE_NORMAL, align 4
  %333 = call i32 (i32, i8*, ...) @dev_dbg(i32 %331, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %332)
  br label %334

334:                                              ; preds = %327, %320
  br label %335

335:                                              ; preds = %334, %309
  br label %336

336:                                              ; preds = %335, %308
  %337 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ccdc_cfg, i32 0, i32 0), align 8
  %338 = call i32 (i32, i8*, ...) @dev_dbg(i32 %337, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %339

339:                                              ; preds = %336, %181
  %340 = load i32, i32* %1, align 4
  ret i32 %340
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ccdc_restore_defaults(...) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @ccdc_setwin(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ccdc_config_black_clamp(i32*) #1

declare dso_local i32 @ccdc_config_black_compense(i32*) #1

declare dso_local i64 @ccdc_config_vdfc(i32*) #1

declare dso_local i32 @ccdc_config_csc(i32*) #1

declare dso_local i32 @ccdc_config_color_patterns(i32*, i32*) #1

declare dso_local i32 @ccdc_config_gain_offset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
