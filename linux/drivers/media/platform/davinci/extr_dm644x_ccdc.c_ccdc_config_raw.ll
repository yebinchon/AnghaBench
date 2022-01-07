; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_config_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_dm644x_ccdc.c_ccdc_config_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.ccdc_params_raw }
%struct.ccdc_params_raw = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i64, %struct.ccdc_config_params_raw }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ccdc_config_params_raw = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@ccdc_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"\0AStarting ccdc_config_raw...\00", align 1
@CCDC_LATCH_ON_VSYNC_DISABLE = common dso_local global i32 0, align 4
@CCDC_CCDCFG = common dso_local global i32 0, align 4
@CCDC_VD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_VD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_HD_POL_MASK = common dso_local global i32 0, align 4
@CCDC_HD_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_FID_POL_MASK = common dso_local global i32 0, align 4
@CCDC_FID_POL_SHIFT = common dso_local global i32 0, align 4
@CCDC_FRM_FMT_MASK = common dso_local global i32 0, align 4
@CCDC_FRM_FMT_SHIFT = common dso_local global i32 0, align 4
@CCDC_DATA_SZ_MASK = common dso_local global i32 0, align 4
@CCDC_DATA_SZ_SHIFT = common dso_local global i32 0, align 4
@CCDC_PIX_FMT_MASK = common dso_local global i32 0, align 4
@CCDC_PIX_FMT_SHIFT = common dso_local global i32 0, align 4
@CCDC_WEN_ENABLE = common dso_local global i32 0, align 4
@CCDC_VDHDEN_ENABLE = common dso_local global i32 0, align 4
@CCDC_ALAW_GAMMA_WD_MASK = common dso_local global i32 0, align 4
@CCDC_ALAW_ENABLE = common dso_local global i32 0, align 4
@CCDC_ALAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"\0AWriting 0x%x to ALAW...\0A\00", align 1
@CCDC_PPC_RAW = common dso_local global i32 0, align 4
@CCDC_DATA_8BITS = common dso_local global i32 0, align 4
@CCDC_DATA_PACK_ENABLE = common dso_local global i32 0, align 4
@CCDC_DISABLE_VIDEO_PORT = common dso_local global i32 0, align 4
@CCDC_DATA_10BITS = common dso_local global i32 0, align 4
@CCDC_FMTCFG_VPIN_MASK = common dso_local global i32 0, align 4
@CCDC_FMTCFG_VPIN_SHIFT = common dso_local global i32 0, align 4
@CCDC_FMTCFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"\0AWriting 0x%x to FMTCFG...\0A\00", align 1
@CCDC_COLPTN_VAL = common dso_local global i32 0, align 4
@CCDC_COLPTN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"\0AWriting 0xBB11BB11 to COLPTN...\0A\00", align 1
@CCDC_FMT_HORZ_FMTSPH_MASK = common dso_local global i32 0, align 4
@CCDC_FMT_HORZ_FMTSPH_SHIFT = common dso_local global i32 0, align 4
@CCDC_FMT_HORZ_FMTLNH_MASK = common dso_local global i32 0, align 4
@CCDC_FMT_HORZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x%x to FMT_HORZ...\0A\00", align 1
@CCDC_FMT_VERT_FMTSLV_MASK = common dso_local global i32 0, align 4
@CCDC_FMT_VERT_FMTSLV_SHIFT = common dso_local global i32 0, align 4
@CCDC_FRMFMT_PROGRESSIVE = common dso_local global i32 0, align 4
@CCDC_FMT_VERT_FMTLNV_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"\0Aparams->win.height  0x%x ...\0A\00", align 1
@CCDC_FMT_VERT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x%x to FMT_VERT...\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\0Abelow regw(val, FMT_VERT)...\00", align 1
@CCDC_32BYTE_ALIGN_VAL = common dso_local global i32 0, align 4
@CCDC_HSIZE_OFF_MASK = common dso_local global i32 0, align 4
@CCDC_HSIZE_OFF = common dso_local global i32 0, align 4
@CCDC_TWO_BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@CCDC_INTERLACED_IMAGE_INVERT = common dso_local global i32 0, align 4
@CCDC_SDOFST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"\0AWriting 0x4B6D to SDOFST..\0A\00", align 1
@CCDC_INTERLACED_NO_IMAGE_INVERT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"\0AWriting 0x0249 to SDOFST..\0A\00", align 1
@CCDC_PROGRESSIVE_NO_IMAGE_INVERT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x0000 to SDOFST...\0A\00", align 1
@CCDC_VP_OUT_VERT_NUM_MASK = common dso_local global i32 0, align 4
@CCDC_VP_OUT_VERT_NUM_SHIFT = common dso_local global i32 0, align 4
@CCDC_INTERLACED_HEIGHT_SHIFT = common dso_local global i32 0, align 4
@CCDC_VP_OUT_HORZ_NUM_MASK = common dso_local global i32 0, align 4
@CCDC_VP_OUT_HORZ_NUM_SHIFT = common dso_local global i32 0, align 4
@CCDC_VP_OUT_HORZ_ST_MASK = common dso_local global i32 0, align 4
@CCDC_VP_OUT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"\0AWriting 0x%x to VP_OUT...\0A\00", align 1
@CCDC_SYN_MODE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"\0AWriting 0x%x to SYN_MODE...\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\0Aend of ccdc_config_raw...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ccdc_config_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_raw() #0 {
  %1 = alloca %struct.ccdc_params_raw*, align 8
  %2 = alloca %struct.ccdc_config_params_raw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ccdc_params_raw* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 1), %struct.ccdc_params_raw** %1, align 8
  store %struct.ccdc_config_params_raw* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 1, i32 7), %struct.ccdc_config_params_raw** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %6 = call i32 (i32, i8*, ...) @dev_dbg(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @ccdc_restore_defaults()
  %8 = load i32, i32* @CCDC_LATCH_ON_VSYNC_DISABLE, align 4
  %9 = load i32, i32* @CCDC_CCDCFG, align 4
  %10 = call i32 @regw(i32 %8, i32 %9)
  %11 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %12 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CCDC_VD_POL_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CCDC_VD_POL_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %19 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CCDC_HD_POL_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @CCDC_HD_POL_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %17, %24
  %26 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %27 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CCDC_FID_POL_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CCDC_FID_POL_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %25, %32
  %34 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %35 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CCDC_FRM_FMT_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @CCDC_FRM_FMT_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %33, %40
  %42 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %43 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @CCDC_DATA_SZ_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @CCDC_DATA_SZ_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %41, %48
  %50 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %51 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CCDC_PIX_FMT_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @CCDC_PIX_FMT_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %49, %56
  %58 = load i32, i32* @CCDC_WEN_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CCDC_VDHDEN_ENABLE, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %3, align 4
  %62 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %63 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %0
  %68 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %69 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CCDC_ALAW_GAMMA_WD_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @CCDC_ALAW_ENABLE, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @CCDC_ALAW, align 4
  %78 = call i32 @regw(i32 %76, i32 %77)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i32, i8*, ...) @dev_dbg(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %67, %0
  %83 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %84 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %83, i32 0, i32 5
  %85 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %86 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CCDC_PPC_RAW, align 4
  %89 = call i32 @ccdc_setwin(%struct.TYPE_5__* %84, i32 %87, i32 %88)
  %90 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %91 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %90, i32 0, i32 3
  %92 = call i32 @ccdc_config_black_clamp(i32* %91)
  %93 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %94 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %93, i32 0, i32 2
  %95 = call i32 @ccdc_config_black_compense(i32* %94)
  %96 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %97 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CCDC_DATA_8BITS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %82
  %102 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %103 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101, %82
  %108 = load i32, i32* @CCDC_DATA_PACK_ENABLE, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = load i32, i32* @CCDC_DISABLE_VIDEO_PORT, align 4
  store i32 %112, i32* %4, align 4
  %113 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %114 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @CCDC_DATA_8BITS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load i32, i32* @CCDC_DATA_10BITS, align 4
  %120 = load i32, i32* @CCDC_FMTCFG_VPIN_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @CCDC_FMTCFG_VPIN_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* %4, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %4, align 4
  br label %136

126:                                              ; preds = %111
  %127 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %128 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CCDC_FMTCFG_VPIN_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @CCDC_FMTCFG_VPIN_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %4, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %126, %118
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @CCDC_FMTCFG, align 4
  %139 = call i32 @regw(i32 %137, i32 %138)
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 (i32, i8*, ...) @dev_dbg(i32 %140, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @CCDC_COLPTN_VAL, align 4
  %144 = load i32, i32* @CCDC_COLPTN, align 4
  %145 = call i32 @regw(i32 %143, i32 %144)
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %147 = call i32 (i32, i8*, ...) @dev_dbg(i32 %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %149 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @CCDC_FMT_HORZ_FMTSPH_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @CCDC_FMT_HORZ_FMTSPH_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %157 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CCDC_FMT_HORZ_FMTLNH_MASK, align 4
  %161 = and i32 %159, %160
  %162 = or i32 %155, %161
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @CCDC_FMT_HORZ, align 4
  %165 = call i32 @regw(i32 %163, i32 %164)
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %167 = load i32, i32* %4, align 4
  %168 = call i32 (i32, i8*, ...) @dev_dbg(i32 %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  %169 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %170 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @CCDC_FMT_VERT_FMTSLV_MASK, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @CCDC_FMT_VERT_FMTSLV_SHIFT, align 4
  %176 = shl i32 %174, %175
  store i32 %176, i32* %4, align 4
  %177 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %178 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %136
  %183 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %184 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @CCDC_FMT_VERT_FMTLNV_MASK, align 4
  %188 = and i32 %186, %187
  %189 = load i32, i32* %4, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %4, align 4
  br label %201

191:                                              ; preds = %136
  %192 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %193 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = lshr i32 %195, 1
  %197 = load i32, i32* @CCDC_FMT_VERT_FMTLNV_MASK, align 4
  %198 = and i32 %196, %197
  %199 = load i32, i32* %4, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %191, %182
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %203 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %204 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32, i8*, ...) @dev_dbg(i32 %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @CCDC_FMT_VERT, align 4
  %210 = call i32 @regw(i32 %208, i32 %209)
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %212 = load i32, i32* %4, align 4
  %213 = call i32 (i32, i8*, ...) @dev_dbg(i32 %211, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %215 = call i32 (i32, i8*, ...) @dev_dbg(i32 %214, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %216 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %217 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @CCDC_DATA_8BITS, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %227, label %221

221:                                              ; preds = %201
  %222 = load %struct.ccdc_config_params_raw*, %struct.ccdc_config_params_raw** %2, align 8
  %223 = getelementptr inbounds %struct.ccdc_config_params_raw, %struct.ccdc_config_params_raw* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %221, %201
  %228 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %229 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @CCDC_32BYTE_ALIGN_VAL, align 4
  %233 = add i32 %231, %232
  %234 = load i32, i32* @CCDC_HSIZE_OFF_MASK, align 4
  %235 = and i32 %233, %234
  %236 = load i32, i32* @CCDC_HSIZE_OFF, align 4
  %237 = call i32 @regw(i32 %235, i32 %236)
  br label %251

238:                                              ; preds = %221
  %239 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %240 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @CCDC_TWO_BYTES_PER_PIXEL, align 4
  %244 = mul i32 %242, %243
  %245 = load i32, i32* @CCDC_32BYTE_ALIGN_VAL, align 4
  %246 = add i32 %244, %245
  %247 = load i32, i32* @CCDC_HSIZE_OFF_MASK, align 4
  %248 = and i32 %246, %247
  %249 = load i32, i32* @CCDC_HSIZE_OFF, align 4
  %250 = call i32 @regw(i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %238, %227
  %252 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %253 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %275

257:                                              ; preds = %251
  %258 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %259 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %258, i32 0, i32 6
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %257
  %263 = load i32, i32* @CCDC_INTERLACED_IMAGE_INVERT, align 4
  %264 = load i32, i32* @CCDC_SDOFST, align 4
  %265 = call i32 @regw(i32 %263, i32 %264)
  %266 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %267 = call i32 (i32, i8*, ...) @dev_dbg(i32 %266, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %274

268:                                              ; preds = %257
  %269 = load i32, i32* @CCDC_INTERLACED_NO_IMAGE_INVERT, align 4
  %270 = load i32, i32* @CCDC_SDOFST, align 4
  %271 = call i32 @regw(i32 %269, i32 %270)
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %273 = call i32 (i32, i8*, ...) @dev_dbg(i32 %272, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %274

274:                                              ; preds = %268, %262
  br label %288

275:                                              ; preds = %251
  %276 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %277 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %287

281:                                              ; preds = %275
  %282 = load i32, i32* @CCDC_PROGRESSIVE_NO_IMAGE_INVERT, align 4
  %283 = load i32, i32* @CCDC_SDOFST, align 4
  %284 = call i32 @regw(i32 %282, i32 %283)
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %286 = call i32 (i32, i8*, ...) @dev_dbg(i32 %285, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %287

287:                                              ; preds = %281, %275
  br label %288

288:                                              ; preds = %287, %274
  %289 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %290 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %304

294:                                              ; preds = %288
  %295 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %296 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %295, i32 0, i32 5
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = sub i32 %298, 1
  %300 = load i32, i32* @CCDC_VP_OUT_VERT_NUM_MASK, align 4
  %301 = and i32 %299, %300
  %302 = load i32, i32* @CCDC_VP_OUT_VERT_NUM_SHIFT, align 4
  %303 = shl i32 %301, %302
  store i32 %303, i32* %4, align 4
  br label %316

304:                                              ; preds = %288
  %305 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %306 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %305, i32 0, i32 5
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @CCDC_INTERLACED_HEIGHT_SHIFT, align 4
  %310 = lshr i32 %308, %309
  %311 = sub i32 %310, 1
  %312 = load i32, i32* @CCDC_VP_OUT_VERT_NUM_MASK, align 4
  %313 = and i32 %311, %312
  %314 = load i32, i32* @CCDC_VP_OUT_VERT_NUM_SHIFT, align 4
  %315 = shl i32 %313, %314
  store i32 %315, i32* %4, align 4
  br label %316

316:                                              ; preds = %304, %294
  %317 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %318 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %317, i32 0, i32 5
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @CCDC_VP_OUT_HORZ_NUM_MASK, align 4
  %322 = and i32 %320, %321
  %323 = load i32, i32* @CCDC_VP_OUT_HORZ_NUM_SHIFT, align 4
  %324 = shl i32 %322, %323
  %325 = load i32, i32* %4, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %4, align 4
  %327 = load %struct.ccdc_params_raw*, %struct.ccdc_params_raw** %1, align 8
  %328 = getelementptr inbounds %struct.ccdc_params_raw, %struct.ccdc_params_raw* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @CCDC_VP_OUT_HORZ_ST_MASK, align 4
  %332 = and i32 %330, %331
  %333 = load i32, i32* %4, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %4, align 4
  %335 = load i32, i32* %4, align 4
  %336 = load i32, i32* @CCDC_VP_OUT, align 4
  %337 = call i32 @regw(i32 %335, i32 %336)
  %338 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %339 = load i32, i32* %4, align 4
  %340 = call i32 (i32, i8*, ...) @dev_dbg(i32 %338, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %339)
  %341 = load i32, i32* %3, align 4
  %342 = load i32, i32* @CCDC_SYN_MODE, align 4
  %343 = call i32 @regw(i32 %341, i32 %342)
  %344 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %345 = load i32, i32* %3, align 4
  %346 = call i32 (i32, i8*, ...) @dev_dbg(i32 %344, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %345)
  %347 = call i32 (...) @ccdc_sbl_reset()
  %348 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ccdc_cfg, i32 0, i32 0), align 8
  %349 = call i32 (i32, i8*, ...) @dev_dbg(i32 %348, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %350 = call i32 (...) @ccdc_readregs()
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ccdc_restore_defaults(...) #1

declare dso_local i32 @regw(i32, i32) #1

declare dso_local i32 @ccdc_setwin(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ccdc_config_black_clamp(i32*) #1

declare dso_local i32 @ccdc_config_black_compense(i32*) #1

declare dso_local i32 @ccdc_sbl_reset(...) #1

declare dso_local i32 @ccdc_readregs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
