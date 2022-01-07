; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_enhance_sensitivity_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_calib.c_iwl_enhance_sensitivity_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32*, i32*, %struct.TYPE_2__*, %struct.iwl_sensitivity_data }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_sensitivity_data = type { i32 }
%struct.iwl_enhance_sensitivity_cmd = type { i32*, i32 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@SENSITIVITY_CMD = common dso_local global i32 0, align 4
@HD_INA_NON_SQUARE_DET_OFDM_DATA_V2 = common dso_local global i32 0, align 4
@HD_INA_NON_SQUARE_DET_OFDM_INDEX = common dso_local global i64 0, align 8
@HD_INA_NON_SQUARE_DET_CCK_DATA_V2 = common dso_local global i32 0, align 4
@HD_INA_NON_SQUARE_DET_CCK_INDEX = common dso_local global i64 0, align 8
@HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V2 = common dso_local global i32 0, align 4
@HD_CORR_11_INSTEAD_OF_CORR_9_EN_INDEX = common dso_local global i64 0, align 8
@HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V2 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_INDEX = common dso_local global i64 0, align 8
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_INDEX = common dso_local global i64 0, align 8
@HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V2 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_SLOPE_INDEX = common dso_local global i64 0, align 8
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V2 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_INDEX = common dso_local global i64 0, align 8
@HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V2 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_SLOPE_MRC_INDEX = common dso_local global i64 0, align 8
@HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_INDEX = common dso_local global i64 0, align 8
@HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V2 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_SLOPE_INDEX = common dso_local global i64 0, align 8
@HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V2 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_INTERCEPT_INDEX = common dso_local global i64 0, align 8
@HD_INA_NON_SQUARE_DET_OFDM_DATA_V1 = common dso_local global i32 0, align 4
@HD_INA_NON_SQUARE_DET_CCK_DATA_V1 = common dso_local global i32 0, align 4
@HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V1 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V1 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V1 = common dso_local global i32 0, align 4
@HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V1 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V1 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V1 = common dso_local global i32 0, align 4
@HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V1 = common dso_local global i32 0, align 4
@SENSITIVITY_CMD_CONTROL_WORK_TABLE = common dso_local global i32 0, align 4
@HD_TABLE_SIZE = common dso_local global i32 0, align 4
@ENHANCE_HD_TABLE_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No change in SENSITIVITY_CMD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_enhance_sensitivity_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_enhance_sensitivity_write(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_enhance_sensitivity_cmd, align 8
  %5 = alloca %struct.iwl_sensitivity_data*, align 8
  %6 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_sensitivity_data* null, %struct.iwl_sensitivity_data** %5, align 8
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 0
  %8 = ptrtoint %struct.iwl_enhance_sensitivity_cmd* %4 to i32
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 1
  %10 = load i32, i32* @CMD_ASYNC, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 2
  store i32 16, i32* %11, align 4
  %12 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %6, i32 0, i32 3
  %13 = load i32, i32* @SENSITIVITY_CMD, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 3
  store %struct.iwl_sensitivity_data* %15, %struct.iwl_sensitivity_data** %5, align 8
  %16 = call i32 @memset(%struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 16)
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %18 = load %struct.iwl_sensitivity_data*, %struct.iwl_sensitivity_data** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @iwl_prepare_legacy_sensitivity_tbl(%struct.iwl_priv* %17, %struct.iwl_sensitivity_data* %18, i32* %21)
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %85

29:                                               ; preds = %1
  %30 = load i32, i32* @HD_INA_NON_SQUARE_DET_OFDM_DATA_V2, align 4
  %31 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @HD_INA_NON_SQUARE_DET_OFDM_INDEX, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @HD_INA_NON_SQUARE_DET_CCK_DATA_V2, align 4
  %36 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @HD_INA_NON_SQUARE_DET_CCK_INDEX, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V2, align 4
  %41 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @HD_CORR_11_INSTEAD_OF_CORR_9_EN_INDEX, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V2, align 4
  %46 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_INDEX, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2, align 4
  %51 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_INDEX, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V2, align 4
  %56 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_SLOPE_INDEX, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V2, align 4
  %61 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_INDEX, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V2, align 4
  %66 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @HD_CCK_NON_SQUARE_DET_SLOPE_MRC_INDEX, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V2, align 4
  %71 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_INDEX, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V2, align 4
  %76 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @HD_CCK_NON_SQUARE_DET_SLOPE_INDEX, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* @HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V2, align 4
  %81 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @HD_CCK_NON_SQUARE_DET_INTERCEPT_INDEX, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %80, i32* %84, align 4
  br label %141

85:                                               ; preds = %1
  %86 = load i32, i32* @HD_INA_NON_SQUARE_DET_OFDM_DATA_V1, align 4
  %87 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @HD_INA_NON_SQUARE_DET_OFDM_INDEX, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* @HD_INA_NON_SQUARE_DET_CCK_DATA_V1, align 4
  %92 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @HD_INA_NON_SQUARE_DET_CCK_INDEX, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* @HD_CORR_11_INSTEAD_OF_CORR_9_EN_DATA_V1, align 4
  %97 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @HD_CORR_11_INSTEAD_OF_CORR_9_EN_INDEX, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_DATA_V1, align 4
  %102 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_SLOPE_MRC_INDEX, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1, align 4
  %107 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_MRC_INDEX, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_SLOPE_DATA_V1, align 4
  %112 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_SLOPE_INDEX, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_DATA_V1, align 4
  %117 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @HD_OFDM_NON_SQUARE_DET_INTERCEPT_INDEX, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %116, i32* %120, align 4
  %121 = load i32, i32* @HD_CCK_NON_SQUARE_DET_SLOPE_MRC_DATA_V1, align 4
  %122 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @HD_CCK_NON_SQUARE_DET_SLOPE_MRC_INDEX, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* @HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_DATA_V1, align 4
  %127 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @HD_CCK_NON_SQUARE_DET_INTERCEPT_MRC_INDEX, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* @HD_CCK_NON_SQUARE_DET_SLOPE_DATA_V1, align 4
  %132 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @HD_CCK_NON_SQUARE_DET_SLOPE_INDEX, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32 %131, i32* %135, align 4
  %136 = load i32, i32* @HD_CCK_NON_SQUARE_DET_INTERCEPT_DATA_V1, align 4
  %137 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @HD_CCK_NON_SQUARE_DET_INTERCEPT_INDEX, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %85, %29
  %142 = load i32, i32* @SENSITIVITY_CMD_CONTROL_WORK_TABLE, align 4
  %143 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 1
  store i32 %142, i32* %143, align 8
  %144 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %148 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* @HD_TABLE_SIZE, align 4
  %152 = sext i32 %151 to i64
  %153 = mul i64 4, %152
  %154 = trunc i64 %153 to i32
  %155 = call i32 @memcmp(i32* %146, i32* %150, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %175, label %157

157:                                              ; preds = %141
  %158 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @HD_INA_NON_SQUARE_DET_OFDM_INDEX, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %163 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* @ENHANCE_HD_TABLE_ENTRIES, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 4, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @memcmp(i32* %161, i32* %165, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %157
  %173 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %174 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_priv* %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %203

175:                                              ; preds = %157, %141
  %176 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %177 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* @HD_TABLE_SIZE, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 4, %184
  %186 = trunc i64 %185 to i32
  %187 = call i32 @memcpy(i32* %179, i32* %182, i32 %186)
  %188 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %189 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = getelementptr inbounds %struct.iwl_enhance_sensitivity_cmd, %struct.iwl_enhance_sensitivity_cmd* %4, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @HD_INA_NON_SQUARE_DET_OFDM_INDEX, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* @ENHANCE_HD_TABLE_ENTRIES, align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 4, %197
  %199 = trunc i64 %198 to i32
  %200 = call i32 @memcpy(i32* %191, i32* %195, i32 %199)
  %201 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %202 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %201, %struct.iwl_host_cmd* %6)
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %175, %172
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @memset(%struct.iwl_enhance_sensitivity_cmd*, i32, i32) #1

declare dso_local i32 @iwl_prepare_legacy_sensitivity_tbl(%struct.iwl_priv*, %struct.iwl_sensitivity_data*, i32*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
