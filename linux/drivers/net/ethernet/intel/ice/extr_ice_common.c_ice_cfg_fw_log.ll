; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_cfg_fw_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_cfg_fw_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ice_aqc_fw_logging_data = type { i32* }
%struct.ice_aqc_fw_logging = type { i32, i32 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ice_aqc_fw_logging }

@ice_aqc_opc_fw_logging = common dso_local global i32 0, align 4
@ICE_AQC_FW_LOG_AQ_VALID = common dso_local global i32 0, align 4
@ICE_AQC_FW_LOG_UART_VALID = common dso_local global i32 0, align 4
@ICE_AQC_FW_LOG_ID_MAX = common dso_local global i64 0, align 8
@ICE_FW_LOG_DESC_SIZE_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_AQC_FW_LOG_ID_S = common dso_local global i64 0, align 8
@ICE_AQC_FW_LOG_EN_S = common dso_local global i64 0, align 8
@ICE_AQC_FW_LOG_AQ_EN = common dso_local global i32 0, align 4
@ICE_AQC_FW_LOG_UART_EN = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i64 0, align 8
@ICE_AQC_FW_LOG_ID_M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32)* @ice_cfg_fw_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_cfg_fw_log(%struct.ice_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_aqc_fw_logging_data*, align 8
  %7 = alloca %struct.ice_aqc_fw_logging*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ice_aq_desc, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ice_aqc_fw_logging_data* null, %struct.ice_aqc_fw_logging_data** %6, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %19 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %26 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %282

31:                                               ; preds = %24, %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %42 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %42, i32 0, i32 1
  %44 = call i32 @ice_check_sq_alive(%struct.ice_hw* %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %34
  store i32 0, i32* %3, align 4
  br label %282

47:                                               ; preds = %40, %31
  %48 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %49 = call i32 @ice_get_fw_log_cfg(%struct.ice_hw* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %282

54:                                               ; preds = %47
  %55 = load i32, i32* @ice_aqc_opc_fw_logging, align 4
  %56 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %12, i32 %55)
  %57 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %12, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store %struct.ice_aqc_fw_logging* %58, %struct.ice_aqc_fw_logging** %7, align 8
  %59 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = load i32, i32* @ICE_AQC_FW_LOG_AQ_VALID, align 4
  %66 = load %struct.ice_aqc_fw_logging*, %struct.ice_aqc_fw_logging** %7, align 8
  %67 = getelementptr inbounds %struct.ice_aqc_fw_logging, %struct.ice_aqc_fw_logging* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %54
  %71 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %72 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32, i32* @ICE_AQC_FW_LOG_UART_VALID, align 4
  %78 = load %struct.ice_aqc_fw_logging*, %struct.ice_aqc_fw_logging** %7, align 8
  %79 = getelementptr inbounds %struct.ice_aqc_fw_logging, %struct.ice_aqc_fw_logging* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %70
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %204

85:                                               ; preds = %82
  store i64 0, i64* %9, align 8
  br label %86

86:                                               ; preds = %159, %85
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @ICE_AQC_FW_LOG_ID_MAX, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %162

90:                                               ; preds = %86
  %91 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %92 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  %101 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %102 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %110 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %108, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %90
  br label %159

119:                                              ; preds = %90
  %120 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %6, align 8
  %121 = icmp ne %struct.ice_aqc_fw_logging_data* %120, null
  br i1 %121, label %133, label %122

122:                                              ; preds = %119
  %123 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %124 = call i32 @ice_hw_to_dev(%struct.ice_hw* %123)
  %125 = load i32, i32* @ICE_FW_LOG_DESC_SIZE_MAX, align 4
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call %struct.ice_aqc_fw_logging_data* @devm_kzalloc(i32 %124, i32 %125, i32 %126)
  store %struct.ice_aqc_fw_logging_data* %127, %struct.ice_aqc_fw_logging_data** %6, align 8
  %128 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %6, align 8
  %129 = icmp ne %struct.ice_aqc_fw_logging_data* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %131, i32* %3, align 4
  br label %282

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %119
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @ICE_AQC_FW_LOG_ID_S, align 8
  %136 = shl i64 %134, %135
  store i64 %136, i64* %15, align 8
  %137 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %138 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* @ICE_AQC_FW_LOG_EN_S, align 8
  %146 = trunc i64 %145 to i32
  %147 = shl i32 %144, %146
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %15, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %15, align 8
  %151 = load i64, i64* %15, align 8
  %152 = call i32 @cpu_to_le16(i64 %151)
  %153 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %6, align 8
  %154 = getelementptr inbounds %struct.ice_aqc_fw_logging_data, %struct.ice_aqc_fw_logging_data* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %10, align 8
  %158 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32 %152, i32* %158, align 4
  br label %159

159:                                              ; preds = %133, %118
  %160 = load i64, i64* %9, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %9, align 8
  br label %86

162:                                              ; preds = %86
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %203

165:                                              ; preds = %162
  %166 = load i64, i64* %10, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  br label %272

169:                                              ; preds = %165
  %170 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %171 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load i32, i32* @ICE_AQC_FW_LOG_AQ_EN, align 4
  %177 = load %struct.ice_aqc_fw_logging*, %struct.ice_aqc_fw_logging** %7, align 8
  %178 = getelementptr inbounds %struct.ice_aqc_fw_logging, %struct.ice_aqc_fw_logging* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %175, %169
  %182 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %183 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32, i32* @ICE_AQC_FW_LOG_UART_EN, align 4
  %189 = load %struct.ice_aqc_fw_logging*, %struct.ice_aqc_fw_logging** %7, align 8
  %190 = getelementptr inbounds %struct.ice_aqc_fw_logging, %struct.ice_aqc_fw_logging* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %181
  %194 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %6, align 8
  %195 = bitcast %struct.ice_aqc_fw_logging_data* %194 to i8*
  store i8* %195, i8** %14, align 8
  %196 = load i64, i64* %10, align 8
  %197 = call i64 @ICE_FW_LOG_DESC_SIZE(i64 %196)
  store i64 %197, i64* %11, align 8
  %198 = load i64, i64* @ICE_AQ_FLAG_RD, align 8
  %199 = call i32 @cpu_to_le16(i64 %198)
  %200 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %12, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %199
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %193, %162
  br label %204

204:                                              ; preds = %203, %82
  %205 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %206 = load i8*, i8** %14, align 8
  %207 = load i64, i64* %11, align 8
  %208 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %205, %struct.ice_aq_desc* %12, i8* %206, i64 %207, i32* null)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %271, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* %5, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load i64, i64* %10, align 8
  br label %218

216:                                              ; preds = %211
  %217 = load i64, i64* @ICE_AQC_FW_LOG_ID_MAX, align 8
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i64 [ %215, %214 ], [ %217, %216 ]
  store i64 %219, i64* %16, align 8
  %220 = load i32, i32* %13, align 4
  %221 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %222 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  store i64 0, i64* %9, align 8
  br label %224

224:                                              ; preds = %267, %218
  %225 = load i64, i64* %9, align 8
  %226 = load i64, i64* %16, align 8
  %227 = icmp ult i64 %225, %226
  br i1 %227, label %228, label %270

228:                                              ; preds = %224
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %228
  %232 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %233 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = load i64, i64* %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  store i32 0, i32* %238, align 4
  br label %267

239:                                              ; preds = %228
  %240 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %6, align 8
  %241 = getelementptr inbounds %struct.ice_aqc_fw_logging_data, %struct.ice_aqc_fw_logging_data* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i64, i64* %9, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @le16_to_cpu(i32 %245)
  store i64 %246, i64* %17, align 8
  %247 = load i64, i64* %17, align 8
  %248 = load i64, i64* @ICE_AQC_FW_LOG_ID_M, align 8
  %249 = and i64 %247, %248
  %250 = load i64, i64* @ICE_AQC_FW_LOG_ID_S, align 8
  %251 = lshr i64 %249, %250
  store i64 %251, i64* %18, align 8
  %252 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %253 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %254, align 8
  %256 = load i64, i64* %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %261 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %262, align 8
  %264 = load i64, i64* %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  store i32 %259, i32* %266, align 4
  br label %267

267:                                              ; preds = %239, %231
  %268 = load i64, i64* %9, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %9, align 8
  br label %224

270:                                              ; preds = %224
  br label %271

271:                                              ; preds = %270, %204
  br label %272

272:                                              ; preds = %271, %168
  %273 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %6, align 8
  %274 = icmp ne %struct.ice_aqc_fw_logging_data* %273, null
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %277 = call i32 @ice_hw_to_dev(%struct.ice_hw* %276)
  %278 = load %struct.ice_aqc_fw_logging_data*, %struct.ice_aqc_fw_logging_data** %6, align 8
  %279 = call i32 @devm_kfree(i32 %277, %struct.ice_aqc_fw_logging_data* %278)
  br label %280

280:                                              ; preds = %275, %272
  %281 = load i32, i32* %8, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %280, %130, %52, %46, %30
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @ice_check_sq_alive(%struct.ice_hw*, i32*) #1

declare dso_local i32 @ice_get_fw_log_cfg(%struct.ice_hw*) #1

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local %struct.ice_aqc_fw_logging_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @ICE_FW_LOG_DESC_SIZE(i64) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i8*, i64, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_fw_logging_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
