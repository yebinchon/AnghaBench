; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.isif_params_raw }
%struct.isif_params_raw = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, %struct.isif_config_params_raw, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.isif_config_params_raw = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.vpss_pg_frame_size = type { i32, i32 }
%struct.vpss_sync_pol = type { i32, i32 }

@isif_cfg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"\0AStarting isif_config_raw..\0A\00", align 1
@ISIF_YCINSWP_RAW = common dso_local global i32 0, align 4
@ISIF_CCDCFG_FIDMD_LATCH_VSYNC = common dso_local global i32 0, align 4
@ISIF_CCDCFG_WENLOG_AND = common dso_local global i32 0, align 4
@ISIF_CCDCFG_TRGSEL_WEN = common dso_local global i32 0, align 4
@ISIF_CCDCFG_EXTRG_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Writing 0x%x to ...CCDCFG \0A\00", align 1
@CCDCFG = common dso_local global i32 0, align 4
@ISIF_VDHDOUT_INPUT = common dso_local global i32 0, align 4
@ISIF_VD_POL_SHIFT = common dso_local global i32 0, align 4
@ISIF_HD_POL_SHIFT = common dso_local global i32 0, align 4
@ISIF_FID_POL_SHIFT = common dso_local global i32 0, align 4
@ISIF_DATAPOL_NORMAL = common dso_local global i32 0, align 4
@ISIF_DATAPOL_SHIFT = common dso_local global i32 0, align 4
@ISIF_EXWEN_DISABLE = common dso_local global i32 0, align 4
@ISIF_EXWEN_SHIFT = common dso_local global i32 0, align 4
@ISIF_FRM_FMT_SHIFT = common dso_local global i32 0, align 4
@ISIF_INPUT_SHIFT = common dso_local global i32 0, align 4
@ISIF_DATASFT_SHIFT = common dso_local global i32 0, align 4
@MODESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Writing 0x%x to MODESET...\0A\00", align 1
@ISIF_GAMMAWD_CFA_SHIFT = common dso_local global i32 0, align 4
@ISIF_ALAW = common dso_local global i64 0, align 8
@ISIF_ALAW_ENABLE = common dso_local global i32 0, align 4
@ISIF_ALAW_GAMMA_WD_SHIFT = common dso_local global i32 0, align 4
@CGAMMAWD = common dso_local global i32 0, align 4
@ISIF_DPCM = common dso_local global i64 0, align 8
@ISIF_DPCM_EN_SHIFT = common dso_local global i32 0, align 4
@ISIF_DPCM_PREDICTOR_SHIFT = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@CCOLP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Writing %x to CCOLP ...\0A\00", align 1
@ISIF_HSIZE_FLIP_SHIFT = common dso_local global i32 0, align 4
@ISIF_PACK_8BIT = common dso_local global i32 0, align 4
@ISIF_PACK_12BIT = common dso_local global i32 0, align 4
@HSIZE = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@SDOFST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Writing 0x4B6D to SDOFST...\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Writing 0x0B6D to SDOFST...\0A\00", align 1
@CCDC_FRMFMT_PROGRESSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Writing 0x4000 to SDOFST...\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Writing 0x0000 to SDOFST...\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DATAHOFST = common dso_local global i32 0, align 4
@DATAVOFST = common dso_local global i32 0, align 4
@VPSS_PGLPBK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"\0AEnd of isif_config_ycbcr...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @isif_config_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isif_config_raw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.isif_params_raw*, align 8
  %3 = alloca %struct.isif_config_params_raw*, align 8
  %4 = alloca %struct.vpss_pg_frame_size, align 4
  %5 = alloca %struct.vpss_sync_pol, align 4
  %6 = alloca i32, align 4
  store %struct.isif_params_raw* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 2), %struct.isif_params_raw** %2, align 8
  store %struct.isif_config_params_raw* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 2, i32 8), %struct.isif_config_params_raw** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 1), align 4
  %8 = call i32 (i32, i8*, ...) @dev_dbg(i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ISIF_YCINSWP_RAW, align 4
  %10 = load i32, i32* @ISIF_CCDCFG_FIDMD_LATCH_VSYNC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ISIF_CCDCFG_WENLOG_AND, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ISIF_CCDCFG_TRGSEL_WEN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ISIF_CCDCFG_EXTRG_DISABLE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 0), align 8
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 1), align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @CCDCFG, align 4
  %25 = call i32 @regw(i32 %23, i32 %24)
  %26 = load i32, i32* @ISIF_VDHDOUT_INPUT, align 4
  %27 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %28 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ISIF_VD_POL_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %26, %31
  %33 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %34 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ISIF_HD_POL_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %32, %37
  %39 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %40 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ISIF_FID_POL_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %38, %43
  %45 = load i32, i32* @ISIF_DATAPOL_NORMAL, align 4
  %46 = load i32, i32* @ISIF_DATAPOL_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = load i32, i32* @ISIF_EXWEN_DISABLE, align 4
  %50 = load i32, i32* @ISIF_EXWEN_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %54 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ISIF_FRM_FMT_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %52, %57
  %59 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %60 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ISIF_INPUT_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %58, %63
  %65 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %66 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ISIF_DATASFT_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %64, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @MODESET, align 4
  %74 = call i32 @regw(i32 %72, i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 1), align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i32, i8*, ...) @dev_dbg(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %79 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ISIF_GAMMAWD_CFA_SHIFT, align 4
  %82 = shl i32 %80, %81
  store i32 %82, i32* %6, align 4
  %83 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %84 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ISIF_ALAW, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %0
  %90 = load i32, i32* @ISIF_ALAW_ENABLE, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %0
  %94 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %95 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ISIF_ALAW_GAMMA_WD_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @CGAMMAWD, align 4
  %103 = call i32 @regw(i32 %101, i32 %102)
  %104 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %105 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %104, i32 0, i32 11
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ISIF_DPCM, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %93
  %111 = load i32, i32* @ISIF_DPCM_EN_SHIFT, align 4
  %112 = call i32 @BIT(i32 %111)
  %113 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %114 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ISIF_DPCM_PREDICTOR_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = or i32 %112, %118
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %110, %93
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @MISC, align 4
  %123 = call i32 @regw(i32 %121, i32 %122)
  %124 = call i32 (...) @isif_config_gain_offset()
  %125 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %126 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %125, i32 0, i32 8
  %127 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %131 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %130, i32 0, i32 8
  %132 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %131, i32 0, i32 10
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 2
  %136 = or i32 %129, %135
  %137 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %138 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %138, i32 0, i32 10
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 4
  %143 = or i32 %136, %142
  %144 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %145 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %145, i32 0, i32 10
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 6
  %150 = or i32 %143, %149
  %151 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %152 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 8
  %157 = or i32 %150, %156
  %158 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %159 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %158, i32 0, i32 8
  %160 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 10
  %164 = or i32 %157, %163
  %165 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %166 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %166, i32 0, i32 9
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 12
  %171 = or i32 %164, %170
  %172 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %173 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %172, i32 0, i32 8
  %174 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %173, i32 0, i32 9
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 14
  %178 = or i32 %171, %177
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @CCOLP, align 4
  %181 = call i32 @regw(i32 %179, i32 %180)
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 1), align 4
  %183 = load i32, i32* %6, align 4
  %184 = call i32 (i32, i8*, ...) @dev_dbg(i32 %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  %185 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %186 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %185, i32 0, i32 10
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* @ISIF_HSIZE_FLIP_SHIFT, align 4
  %193 = shl i32 %191, %192
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 0), align 8
  %195 = load i32, i32* @ISIF_PACK_8BIT, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %120
  %198 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %199 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 31
  %203 = ashr i32 %202, 5
  %204 = load i32, i32* %6, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %6, align 4
  br label %236

206:                                              ; preds = %120
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 0), align 8
  %208 = load i32, i32* @ISIF_PACK_12BIT, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %225

210:                                              ; preds = %206
  %211 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %212 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %216 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %215, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = ashr i32 %218, 2
  %220 = add nsw i32 %214, %219
  %221 = add nsw i32 %220, 31
  %222 = ashr i32 %221, 5
  %223 = load i32, i32* %6, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %6, align 4
  br label %235

225:                                              ; preds = %206
  %226 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %227 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %229, 2
  %231 = add nsw i32 %230, 31
  %232 = ashr i32 %231, 5
  %233 = load i32, i32* %6, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %225, %210
  br label %236

236:                                              ; preds = %235, %197
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @HSIZE, align 4
  %239 = call i32 @regw(i32 %237, i32 %238)
  %240 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %241 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %261

245:                                              ; preds = %236
  %246 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %247 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %246, i32 0, i32 9
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i32, i32* @SDOFST, align 4
  %252 = call i32 @regw(i32 19309, i32 %251)
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 1), align 4
  %254 = call i32 (i32, i8*, ...) @dev_dbg(i32 %253, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %260

255:                                              ; preds = %245
  %256 = load i32, i32* @SDOFST, align 4
  %257 = call i32 @regw(i32 2925, i32 %256)
  %258 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 1), align 4
  %259 = call i32 (i32, i8*, ...) @dev_dbg(i32 %258, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %260

260:                                              ; preds = %255, %250
  br label %284

261:                                              ; preds = %236
  %262 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %263 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %283

267:                                              ; preds = %261
  %268 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %269 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %268, i32 0, i32 9
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load i32, i32* @SDOFST, align 4
  %274 = call i32 @regw(i32 16384, i32 %273)
  %275 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 1), align 4
  %276 = call i32 (i32, i8*, ...) @dev_dbg(i32 %275, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %282

277:                                              ; preds = %267
  %278 = load i32, i32* @SDOFST, align 4
  %279 = call i32 @regw(i32 0, i32 %278)
  %280 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 1), align 4
  %281 = call i32 (i32, i8*, ...) @dev_dbg(i32 %280, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %282

282:                                              ; preds = %277, %272
  br label %283

283:                                              ; preds = %282, %261
  br label %284

284:                                              ; preds = %283, %260
  %285 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %286 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %285, i32 0, i32 7
  %287 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %288 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @isif_setwin(%struct.TYPE_10__* %286, i32 %289, i32 1)
  %291 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %292 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %291, i32 0, i32 8
  %293 = call i32 @isif_config_bclamp(i32* %292)
  %294 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %295 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %294, i32 0, i32 7
  %296 = call i64 @isif_config_dfc(i32* %295)
  %297 = icmp slt i64 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %284
  %299 = load i32, i32* @EFAULT, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %1, align 4
  br label %357

301:                                              ; preds = %284
  %302 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %303 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %302, i32 0, i32 6
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %301
  %308 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %309 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %308, i32 0, i32 6
  %310 = call i32 @isif_config_csc(%struct.TYPE_11__* %309)
  br label %311

311:                                              ; preds = %307, %301
  %312 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %313 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %312, i32 0, i32 5
  %314 = call i32 @isif_config_linearization(i32* %313)
  %315 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %316 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %315, i32 0, i32 4
  %317 = call i32 @isif_config_culling(i32* %316)
  %318 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %319 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @DATAHOFST, align 4
  %322 = call i32 @regw(i32 %320, i32 %321)
  %323 = load %struct.isif_config_params_raw*, %struct.isif_config_params_raw** %3, align 8
  %324 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @DATAVOFST, align 4
  %327 = call i32 @regw(i32 %325, i32 %326)
  %328 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %329 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %328, i32 0, i32 8
  %330 = getelementptr inbounds %struct.isif_config_params_raw, %struct.isif_config_params_raw* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %354

333:                                              ; preds = %311
  %334 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %335 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds %struct.vpss_sync_pol, %struct.vpss_sync_pol* %5, i32 0, i32 0
  store i32 %336, i32* %337, align 4
  %338 = load %struct.isif_params_raw*, %struct.isif_params_raw** %2, align 8
  %339 = getelementptr inbounds %struct.isif_params_raw, %struct.isif_params_raw* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = getelementptr inbounds %struct.vpss_sync_pol, %struct.vpss_sync_pol* %5, i32 0, i32 1
  store i32 %340, i32* %341, align 4
  %342 = bitcast %struct.vpss_sync_pol* %5 to i64*
  %343 = load i64, i64* %342, align 4
  %344 = call i32 @dm365_vpss_set_sync_pol(i64 %343)
  %345 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 2, i32 7, i32 0), align 4
  %346 = getelementptr inbounds %struct.vpss_pg_frame_size, %struct.vpss_pg_frame_size* %4, i32 0, i32 0
  store i32 %345, i32* %346, align 4
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 2, i32 7, i32 1), align 4
  %348 = getelementptr inbounds %struct.vpss_pg_frame_size, %struct.vpss_pg_frame_size* %4, i32 0, i32 1
  store i32 %347, i32* %348, align 4
  %349 = bitcast %struct.vpss_pg_frame_size* %4 to i64*
  %350 = load i64, i64* %349, align 4
  %351 = call i32 @dm365_vpss_set_pg_frame_size(i64 %350)
  %352 = load i32, i32* @VPSS_PGLPBK, align 4
  %353 = call i32 @vpss_select_ccdc_source(i32 %352)
  br label %354

354:                                              ; preds = %333, %311
  %355 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @isif_cfg, i32 0, i32 1), align 4
  %356 = call i32 (i32, i8*, ...) @dev_dbg(i32 %355, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %357

357:                                              ; preds = %354, %298
  %358 = load i32, i32* %1, align 4
  ret i32 %358
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @isif_config_gain_offset(...) #1

declare dso_local i32 @isif_setwin(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @isif_config_bclamp(i32*) #1

declare dso_local i64 @isif_config_dfc(i32*) #1

declare dso_local i32 @isif_config_csc(%struct.TYPE_11__*) #1

declare dso_local i32 @isif_config_linearization(i32*) #1

declare dso_local i32 @isif_config_culling(i32*) #1

declare dso_local i32 @dm365_vpss_set_sync_pol(i64) #1

declare dso_local i32 @dm365_vpss_set_pg_frame_size(i64) #1

declare dso_local i32 @vpss_select_ccdc_source(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
