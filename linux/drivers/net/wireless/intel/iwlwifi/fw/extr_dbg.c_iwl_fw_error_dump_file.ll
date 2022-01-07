; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_error_dump_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_error_dump_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_error_dump_file = type { i8*, i64, i8* }
%struct.iwl_fw_runtime = type { i64, i32, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_24__*, %struct.iwl_fwrt_shared_mem_cfg, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32*, i32, i32*, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i32*, %struct.fw_img* }
%struct.TYPE_23__ = type { i32, %struct.iwl_fw_dbg_mem_seg_tlv* }
%struct.iwl_fw_dbg_mem_seg_tlv = type { i32, i32, i32 }
%struct.fw_img = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, i32, i32, i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.iwl_fw_dump_ptrs = type { %struct.iwl_fw_error_dump_file* }
%struct.iwl_fw_error_dump_data = type { %struct.iwl_fw_error_dump_trigger_desc*, i8*, i8* }
%struct.iwl_fw_error_dump_trigger_desc = type { i32 }
%struct.iwl_fw_error_dump_info = type { i32, i8*, i8**, i32, i32, %struct.iwl_fw_error_dump_trigger_desc*, i8*, i8* }
%struct.iwl_fw_error_dump_smem_cfg = type { i8**, i8*, i8*, %struct.TYPE_20__*, i8*, i8* }
%struct.TYPE_20__ = type { i8*, i8** }

@IWL_UCODE_TYPE_MAX = common dso_local global i64 0, align 8
@IWL_UCODE_SECTION_DATA = common dso_local global i64 0, align 8
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_PRPH = common dso_local global i32 0, align 4
@iwl_fw_get_prph_len = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@IWL_FW_ERROR_DUMP_RADIO_REG = common dso_local global i32 0, align 4
@RADIO_REG_MAX_READ = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_DEV_FW_INFO = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_MEM_CFG = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_MEM = common dso_local global i32 0, align 4
@PAGING_BLOCK_SIZE = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_ERROR_INFO = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_BARKER = common dso_local global i32 0, align 4
@MAX_NUM_LMAC = common dso_local global i32 0, align 4
@TX_FIFO_MAX_NUM = common dso_local global i32 0, align 4
@TX_FIFO_INTERNAL_MAX_NUM = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_MEM_SRAM = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_MEM_SMEM = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_D3_DEBUG_DATA = common dso_local global i32 0, align 4
@iwl_dump_prph = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_fw_error_dump_file* (%struct.iwl_fw_runtime*, %struct.iwl_fw_dump_ptrs*)* @iwl_fw_error_dump_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_fw_error_dump_file* @iwl_fw_error_dump_file(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_dump_ptrs* %1) #0 {
  %3 = alloca %struct.iwl_fw_error_dump_file*, align 8
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca %struct.iwl_fw_dump_ptrs*, align 8
  %6 = alloca %struct.iwl_fw_error_dump_file*, align 8
  %7 = alloca %struct.iwl_fw_error_dump_data*, align 8
  %8 = alloca %struct.iwl_fw_error_dump_info*, align 8
  %9 = alloca %struct.iwl_fw_error_dump_smem_cfg*, align 8
  %10 = alloca %struct.iwl_fw_error_dump_trigger_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwl_fw_dbg_mem_seg_tlv*, align 8
  %14 = alloca %struct.iwl_fwrt_shared_mem_cfg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.fw_img*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.iwl_fw_dbg_mem_seg_tlv*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store %struct.iwl_fw_dump_ptrs* %1, %struct.iwl_fw_dump_ptrs** %5, align 8
  %31 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %31, i32 0, i32 4
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load %struct.iwl_fw_dbg_mem_seg_tlv*, %struct.iwl_fw_dbg_mem_seg_tlv** %35, align 8
  store %struct.iwl_fw_dbg_mem_seg_tlv* %36, %struct.iwl_fw_dbg_mem_seg_tlv** %13, align 8
  %37 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %37, i32 0, i32 5
  store %struct.iwl_fwrt_shared_mem_cfg* %38, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %39 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %39, i32 0, i32 4
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %55

47:                                               ; preds = %2
  %48 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %48, i32 0, i32 2
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %47, %46
  %56 = phi i32 [ 0, %46 ], [ %54, %47 ]
  store i32 %56, i32* %19, align 4
  %57 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %57, i32 0, i32 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %73

65:                                               ; preds = %55
  %66 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %67 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %66, i32 0, i32 2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  br label %73

73:                                               ; preds = %65, %64
  %74 = phi i32 [ 0, %64 ], [ %72, %65 ]
  store i32 %74, i32* %20, align 4
  %75 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %75, i32 0, i32 2
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %73
  %84 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %85 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %84, i32 0, i32 2
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %123, label %92

92:                                               ; preds = %83, %73
  %93 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %94 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IWL_UCODE_TYPE_MAX, align 8
  %97 = icmp uge i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store %struct.iwl_fw_error_dump_file* null, %struct.iwl_fw_error_dump_file** %3, align 8
  br label %838

99:                                               ; preds = %92
  %100 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %101 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %100, i32 0, i32 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 2
  %104 = load %struct.fw_img*, %struct.fw_img** %103, align 8
  %105 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %106 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %104, i64 %107
  store %struct.fw_img* %108, %struct.fw_img** %22, align 8
  %109 = load %struct.fw_img*, %struct.fw_img** %22, align 8
  %110 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %109, i32 0, i32 0
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = load i64, i64* @IWL_UCODE_SECTION_DATA, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %12, align 4
  %116 = load %struct.fw_img*, %struct.fw_img** %22, align 8
  %117 = getelementptr inbounds %struct.fw_img, %struct.fw_img* %116, i32 0, i32 0
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = load i64, i64* @IWL_UCODE_SECTION_DATA, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  br label %138

123:                                              ; preds = %83
  %124 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %125 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %124, i32 0, i32 2
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %12, align 4
  %131 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %132 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %131, i32 0, i32 2
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %123, %99
  %139 = load i32, i32* @STATUS_FW_ERROR, align 4
  %140 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %141 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %140, i32 0, i32 2
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = call i64 @test_bit(i32 %139, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %184

146:                                              ; preds = %138
  %147 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %148 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  %149 = call i32 @iwl_fw_rxf_len(%struct.iwl_fw_runtime* %147, %struct.iwl_fwrt_shared_mem_cfg* %148)
  store i32 %149, i32* %16, align 4
  %150 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %151 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  %152 = call i32 @iwl_fw_txf_len(%struct.iwl_fw_runtime* %150, %struct.iwl_fwrt_shared_mem_cfg* %151)
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %16, align 4
  %155 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %156 = load i32, i32* @IWL_FW_ERROR_DUMP_PRPH, align 4
  %157 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %146
  %160 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %161 = load i32, i32* @iwl_fw_get_prph_len, align 4
  %162 = call i32 (%struct.iwl_fw_runtime*, ...) @iwl_fw_prph_handler(%struct.iwl_fw_runtime* %160, i32* %17, i32 %161)
  br label %163

163:                                              ; preds = %159, %146
  %164 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %165 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %164, i32 0, i32 2
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @IWL_DEVICE_FAMILY_7000, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %163
  %174 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %175 = load i32, i32* @IWL_FW_ERROR_DUMP_RADIO_REG, align 4
  %176 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* @RADIO_REG_MAX_READ, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 24, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %18, align 4
  br label %183

183:                                              ; preds = %178, %173, %163
  br label %184

184:                                              ; preds = %183, %138
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 24, %186
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = add i64 %187, %189
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = add i64 %190, %192
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %15, align 4
  %195 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %196 = load i32, i32* @IWL_FW_ERROR_DUMP_DEV_FW_INFO, align 4
  %197 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %184
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = add i64 %201, 80
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %15, align 4
  br label %204

204:                                              ; preds = %199, %184
  %205 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %206 = load i32, i32* @IWL_FW_ERROR_DUMP_MEM_CFG, align 4
  %207 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = add i64 %211, 72
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %15, align 4
  br label %214

214:                                              ; preds = %209, %204
  %215 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %216 = load i32, i32* @IWL_FW_ERROR_DUMP_MEM, align 4
  %217 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %265

219:                                              ; preds = %214
  store i64 28, i64* %23, align 8
  %220 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %221 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %220, i32 0, i32 4
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %219
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i64, i64* %23, align 8
  %231 = call i32 @ADD_LEN(i32 %228, i32 %229, i64 %230)
  br label %232

232:                                              ; preds = %227, %219
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i64, i64* %23, align 8
  %236 = call i32 @ADD_LEN(i32 %233, i32 %234, i64 %235)
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %20, align 4
  %239 = load i64, i64* %23, align 8
  %240 = call i32 @ADD_LEN(i32 %237, i32 %238, i64 %239)
  store i32 0, i32* %21, align 4
  br label %241

241:                                              ; preds = %261, %232
  %242 = load i32, i32* %21, align 4
  %243 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %244 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %243, i32 0, i32 4
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp slt i32 %242, %248
  br i1 %249, label %250, label %264

250:                                              ; preds = %241
  %251 = load i32, i32* %15, align 4
  %252 = load %struct.iwl_fw_dbg_mem_seg_tlv*, %struct.iwl_fw_dbg_mem_seg_tlv** %13, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.iwl_fw_dbg_mem_seg_tlv, %struct.iwl_fw_dbg_mem_seg_tlv* %252, i64 %254
  %256 = getelementptr inbounds %struct.iwl_fw_dbg_mem_seg_tlv, %struct.iwl_fw_dbg_mem_seg_tlv* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @le32_to_cpu(i32 %257)
  %259 = load i64, i64* %23, align 8
  %260 = call i32 @ADD_LEN(i32 %251, i32 %258, i64 %259)
  br label %261

261:                                              ; preds = %250
  %262 = load i32, i32* %21, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %21, align 4
  br label %241

264:                                              ; preds = %241
  br label %265

265:                                              ; preds = %264, %214
  %266 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %267 = call i64 @iwl_fw_dbg_is_paging_enabled(%struct.iwl_fw_runtime* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %282

269:                                              ; preds = %265
  %270 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %271 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = load i32, i32* @PAGING_BLOCK_SIZE, align 4
  %275 = sext i32 %274 to i64
  %276 = add i64 28, %275
  %277 = mul i64 %273, %276
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = add i64 %279, %277
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %15, align 4
  br label %282

282:                                              ; preds = %269, %265
  %283 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %284 = call i64 @iwl_fw_dbg_is_d3_debug_enabled(%struct.iwl_fw_runtime* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %307

286:                                              ; preds = %282
  %287 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %288 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 2
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %307

292:                                              ; preds = %286
  %293 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %294 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %293, i32 0, i32 2
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %299, 2
  %301 = sext i32 %300 to i64
  %302 = add i64 24, %301
  %303 = load i32, i32* %15, align 4
  %304 = sext i32 %303 to i64
  %305 = add i64 %304, %302
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %15, align 4
  br label %307

307:                                              ; preds = %292, %286, %282
  %308 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %309 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 3
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  store i32 176, i32* %15, align 4
  br label %314

314:                                              ; preds = %313, %307
  %315 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %316 = load i32, i32* @IWL_FW_ERROR_DUMP_ERROR_INFO, align 4
  %317 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %315, i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %338

319:                                              ; preds = %314
  %320 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %321 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 4
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %322, align 8
  %324 = icmp ne %struct.TYPE_22__* %323, null
  br i1 %324, label %325, label %338

325:                                              ; preds = %319
  %326 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %327 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = add i64 28, %332
  %334 = load i32, i32* %15, align 4
  %335 = sext i32 %334 to i64
  %336 = add i64 %335, %333
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %15, align 4
  br label %338

338:                                              ; preds = %325, %319, %314
  %339 = load i32, i32* %15, align 4
  %340 = call %struct.iwl_fw_error_dump_file* @vzalloc(i32 %339)
  store %struct.iwl_fw_error_dump_file* %340, %struct.iwl_fw_error_dump_file** %6, align 8
  %341 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %6, align 8
  %342 = icmp ne %struct.iwl_fw_error_dump_file* %341, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %338
  store %struct.iwl_fw_error_dump_file* null, %struct.iwl_fw_error_dump_file** %3, align 8
  br label %838

344:                                              ; preds = %338
  %345 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %6, align 8
  %346 = load %struct.iwl_fw_dump_ptrs*, %struct.iwl_fw_dump_ptrs** %5, align 8
  %347 = getelementptr inbounds %struct.iwl_fw_dump_ptrs, %struct.iwl_fw_dump_ptrs* %346, i32 0, i32 0
  store %struct.iwl_fw_error_dump_file* %345, %struct.iwl_fw_error_dump_file** %347, align 8
  %348 = load i32, i32* @IWL_FW_ERROR_DUMP_BARKER, align 4
  %349 = call i8* @cpu_to_le32(i32 %348)
  %350 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %6, align 8
  %351 = getelementptr inbounds %struct.iwl_fw_error_dump_file, %struct.iwl_fw_error_dump_file* %350, i32 0, i32 2
  store i8* %349, i8** %351, align 8
  %352 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %6, align 8
  %353 = getelementptr inbounds %struct.iwl_fw_error_dump_file, %struct.iwl_fw_error_dump_file* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = inttoptr i64 %354 to i8*
  %356 = bitcast i8* %355 to %struct.iwl_fw_error_dump_data*
  store %struct.iwl_fw_error_dump_data* %356, %struct.iwl_fw_error_dump_data** %7, align 8
  %357 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %358 = load i32, i32* @IWL_FW_ERROR_DUMP_DEV_FW_INFO, align 4
  %359 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %357, i32 %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %467

361:                                              ; preds = %344
  %362 = load i32, i32* @IWL_FW_ERROR_DUMP_DEV_FW_INFO, align 4
  %363 = call i8* @cpu_to_le32(i32 %362)
  %364 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %365 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %364, i32 0, i32 2
  store i8* %363, i8** %365, align 8
  %366 = call i8* @cpu_to_le32(i32 56)
  %367 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %368 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %367, i32 0, i32 1
  store i8* %366, i8** %368, align 8
  %369 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %370 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %369, i32 0, i32 0
  %371 = load %struct.iwl_fw_error_dump_trigger_desc*, %struct.iwl_fw_error_dump_trigger_desc** %370, align 8
  %372 = bitcast %struct.iwl_fw_error_dump_trigger_desc* %371 to i8*
  %373 = bitcast i8* %372 to %struct.iwl_fw_error_dump_info*
  store %struct.iwl_fw_error_dump_info* %373, %struct.iwl_fw_error_dump_info** %8, align 8
  %374 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %375 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %374, i32 0, i32 2
  %376 = load %struct.TYPE_15__*, %struct.TYPE_15__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @CSR_HW_REV_TYPE(i32 %378)
  %380 = call i8* @cpu_to_le32(i32 %379)
  %381 = load %struct.iwl_fw_error_dump_info*, %struct.iwl_fw_error_dump_info** %8, align 8
  %382 = getelementptr inbounds %struct.iwl_fw_error_dump_info, %struct.iwl_fw_error_dump_info* %381, i32 0, i32 7
  store i8* %380, i8** %382, align 8
  %383 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %384 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %383, i32 0, i32 2
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  %388 = call i32 @CSR_HW_REV_STEP(i32 %387)
  %389 = call i8* @cpu_to_le32(i32 %388)
  %390 = load %struct.iwl_fw_error_dump_info*, %struct.iwl_fw_error_dump_info** %8, align 8
  %391 = getelementptr inbounds %struct.iwl_fw_error_dump_info, %struct.iwl_fw_error_dump_info* %390, i32 0, i32 6
  store i8* %389, i8** %391, align 8
  %392 = load %struct.iwl_fw_error_dump_info*, %struct.iwl_fw_error_dump_info** %8, align 8
  %393 = getelementptr inbounds %struct.iwl_fw_error_dump_info, %struct.iwl_fw_error_dump_info* %392, i32 0, i32 5
  %394 = load %struct.iwl_fw_error_dump_trigger_desc*, %struct.iwl_fw_error_dump_trigger_desc** %393, align 8
  %395 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %396 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %395, i32 0, i32 4
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 1
  %399 = load i32*, i32** %398, align 8
  %400 = call i32 @memcpy(%struct.iwl_fw_error_dump_trigger_desc* %394, i32* %399, i64 8)
  %401 = load %struct.iwl_fw_error_dump_info*, %struct.iwl_fw_error_dump_info** %8, align 8
  %402 = getelementptr inbounds %struct.iwl_fw_error_dump_info, %struct.iwl_fw_error_dump_info* %401, i32 0, i32 4
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %405 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %404, i32 0, i32 2
  %406 = load %struct.TYPE_15__*, %struct.TYPE_15__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 8
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @strncpy(i32 %403, i32 %410, i32 3)
  %412 = load %struct.iwl_fw_error_dump_info*, %struct.iwl_fw_error_dump_info** %8, align 8
  %413 = getelementptr inbounds %struct.iwl_fw_error_dump_info, %struct.iwl_fw_error_dump_info* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %416 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %415, i32 0, i32 6
  %417 = load %struct.TYPE_19__*, %struct.TYPE_19__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %417, i32 0, i32 0
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @strncpy(i32 %414, i32 %421, i32 3)
  %423 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %424 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.iwl_fw_error_dump_info*, %struct.iwl_fw_error_dump_info** %8, align 8
  %428 = getelementptr inbounds %struct.iwl_fw_error_dump_info, %struct.iwl_fw_error_dump_info* %427, i32 0, i32 0
  store i32 %426, i32* %428, align 8
  %429 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %430 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %429, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  %434 = load i32, i32* %433, align 4
  %435 = call i8* @cpu_to_le32(i32 %434)
  %436 = load %struct.iwl_fw_error_dump_info*, %struct.iwl_fw_error_dump_info** %8, align 8
  %437 = getelementptr inbounds %struct.iwl_fw_error_dump_info, %struct.iwl_fw_error_dump_info* %436, i32 0, i32 2
  %438 = load i8**, i8*** %437, align 8
  %439 = getelementptr inbounds i8*, i8** %438, i64 0
  store i8* %435, i8** %439, align 8
  %440 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %441 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %440, i32 0, i32 5
  %442 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = icmp sgt i32 %443, 1
  br i1 %444, label %445, label %457

445:                                              ; preds = %361
  %446 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %447 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %446, i32 0, i32 3
  %448 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %447, i32 0, i32 0
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 1
  %451 = load i32, i32* %450, align 4
  %452 = call i8* @cpu_to_le32(i32 %451)
  %453 = load %struct.iwl_fw_error_dump_info*, %struct.iwl_fw_error_dump_info** %8, align 8
  %454 = getelementptr inbounds %struct.iwl_fw_error_dump_info, %struct.iwl_fw_error_dump_info* %453, i32 0, i32 2
  %455 = load i8**, i8*** %454, align 8
  %456 = getelementptr inbounds i8*, i8** %455, i64 1
  store i8* %452, i8** %456, align 8
  br label %457

457:                                              ; preds = %445, %361
  %458 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %459 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  %462 = call i8* @cpu_to_le32(i32 %461)
  %463 = load %struct.iwl_fw_error_dump_info*, %struct.iwl_fw_error_dump_info** %8, align 8
  %464 = getelementptr inbounds %struct.iwl_fw_error_dump_info, %struct.iwl_fw_error_dump_info* %463, i32 0, i32 1
  store i8* %462, i8** %464, align 8
  %465 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %466 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %465)
  store %struct.iwl_fw_error_dump_data* %466, %struct.iwl_fw_error_dump_data** %7, align 8
  br label %467

467:                                              ; preds = %457, %344
  %468 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %469 = load i32, i32* @IWL_FW_ERROR_DUMP_MEM_CFG, align 4
  %470 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %468, i32 %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %593

472:                                              ; preds = %467
  %473 = load i32, i32* @IWL_FW_ERROR_DUMP_MEM_CFG, align 4
  %474 = call i8* @cpu_to_le32(i32 %473)
  %475 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %476 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %475, i32 0, i32 2
  store i8* %474, i8** %476, align 8
  %477 = call i8* @cpu_to_le32(i32 48)
  %478 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %479 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %478, i32 0, i32 1
  store i8* %477, i8** %479, align 8
  %480 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %481 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %480, i32 0, i32 0
  %482 = load %struct.iwl_fw_error_dump_trigger_desc*, %struct.iwl_fw_error_dump_trigger_desc** %481, align 8
  %483 = bitcast %struct.iwl_fw_error_dump_trigger_desc* %482 to i8*
  %484 = bitcast i8* %483 to %struct.iwl_fw_error_dump_smem_cfg*
  store %struct.iwl_fw_error_dump_smem_cfg* %484, %struct.iwl_fw_error_dump_smem_cfg** %9, align 8
  %485 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  %486 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = call i8* @cpu_to_le32(i32 %487)
  %489 = load %struct.iwl_fw_error_dump_smem_cfg*, %struct.iwl_fw_error_dump_smem_cfg** %9, align 8
  %490 = getelementptr inbounds %struct.iwl_fw_error_dump_smem_cfg, %struct.iwl_fw_error_dump_smem_cfg* %489, i32 0, i32 5
  store i8* %488, i8** %490, align 8
  %491 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  %492 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = call i8* @cpu_to_le32(i32 %493)
  %495 = load %struct.iwl_fw_error_dump_smem_cfg*, %struct.iwl_fw_error_dump_smem_cfg** %9, align 8
  %496 = getelementptr inbounds %struct.iwl_fw_error_dump_smem_cfg, %struct.iwl_fw_error_dump_smem_cfg* %495, i32 0, i32 4
  store i8* %494, i8** %496, align 8
  store i32 0, i32* %21, align 4
  br label %497

497:                                              ; preds = %552, %472
  %498 = load i32, i32* %21, align 4
  %499 = load i32, i32* @MAX_NUM_LMAC, align 4
  %500 = icmp slt i32 %498, %499
  br i1 %500, label %501, label %555

501:                                              ; preds = %497
  %502 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  %503 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %502, i32 0, i32 5
  %504 = load %struct.TYPE_21__*, %struct.TYPE_21__** %503, align 8
  %505 = load i32, i32* %21, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %507, i32 0, i32 0
  %509 = load i32*, i32** %508, align 8
  store i32* %509, i32** %25, align 8
  store i32 0, i32* %24, align 4
  br label %510

510:                                              ; preds = %532, %501
  %511 = load i32, i32* %24, align 4
  %512 = load i32, i32* @TX_FIFO_MAX_NUM, align 4
  %513 = icmp slt i32 %511, %512
  br i1 %513, label %514, label %535

514:                                              ; preds = %510
  %515 = load i32*, i32** %25, align 8
  %516 = load i32, i32* %24, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %515, i64 %517
  %519 = load i32, i32* %518, align 4
  %520 = call i8* @cpu_to_le32(i32 %519)
  %521 = load %struct.iwl_fw_error_dump_smem_cfg*, %struct.iwl_fw_error_dump_smem_cfg** %9, align 8
  %522 = getelementptr inbounds %struct.iwl_fw_error_dump_smem_cfg, %struct.iwl_fw_error_dump_smem_cfg* %521, i32 0, i32 3
  %523 = load %struct.TYPE_20__*, %struct.TYPE_20__** %522, align 8
  %524 = load i32, i32* %21, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %526, i32 0, i32 1
  %528 = load i8**, i8*** %527, align 8
  %529 = load i32, i32* %24, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i8*, i8** %528, i64 %530
  store i8* %520, i8** %531, align 8
  br label %532

532:                                              ; preds = %514
  %533 = load i32, i32* %24, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %24, align 4
  br label %510

535:                                              ; preds = %510
  %536 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  %537 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %536, i32 0, i32 5
  %538 = load %struct.TYPE_21__*, %struct.TYPE_21__** %537, align 8
  %539 = load i32, i32* %21, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %538, i64 %540
  %542 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 8
  %544 = call i8* @cpu_to_le32(i32 %543)
  %545 = load %struct.iwl_fw_error_dump_smem_cfg*, %struct.iwl_fw_error_dump_smem_cfg** %9, align 8
  %546 = getelementptr inbounds %struct.iwl_fw_error_dump_smem_cfg, %struct.iwl_fw_error_dump_smem_cfg* %545, i32 0, i32 3
  %547 = load %struct.TYPE_20__*, %struct.TYPE_20__** %546, align 8
  %548 = load i32, i32* %21, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %547, i64 %549
  %551 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %550, i32 0, i32 0
  store i8* %544, i8** %551, align 8
  br label %552

552:                                              ; preds = %535
  %553 = load i32, i32* %21, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %21, align 4
  br label %497

555:                                              ; preds = %497
  %556 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  %557 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = call i8* @cpu_to_le32(i32 %558)
  %560 = load %struct.iwl_fw_error_dump_smem_cfg*, %struct.iwl_fw_error_dump_smem_cfg** %9, align 8
  %561 = getelementptr inbounds %struct.iwl_fw_error_dump_smem_cfg, %struct.iwl_fw_error_dump_smem_cfg* %560, i32 0, i32 2
  store i8* %559, i8** %561, align 8
  %562 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  %563 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %562, i32 0, i32 3
  %564 = load i32, i32* %563, align 4
  %565 = call i8* @cpu_to_le32(i32 %564)
  %566 = load %struct.iwl_fw_error_dump_smem_cfg*, %struct.iwl_fw_error_dump_smem_cfg** %9, align 8
  %567 = getelementptr inbounds %struct.iwl_fw_error_dump_smem_cfg, %struct.iwl_fw_error_dump_smem_cfg* %566, i32 0, i32 1
  store i8* %565, i8** %567, align 8
  store i32 0, i32* %21, align 4
  br label %568

568:                                              ; preds = %587, %555
  %569 = load i32, i32* %21, align 4
  %570 = load i32, i32* @TX_FIFO_INTERNAL_MAX_NUM, align 4
  %571 = icmp slt i32 %569, %570
  br i1 %571, label %572, label %590

572:                                              ; preds = %568
  %573 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %14, align 8
  %574 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %573, i32 0, i32 4
  %575 = load i32*, i32** %574, align 8
  %576 = load i32, i32* %21, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32, i32* %575, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = call i8* @cpu_to_le32(i32 %579)
  %581 = load %struct.iwl_fw_error_dump_smem_cfg*, %struct.iwl_fw_error_dump_smem_cfg** %9, align 8
  %582 = getelementptr inbounds %struct.iwl_fw_error_dump_smem_cfg, %struct.iwl_fw_error_dump_smem_cfg* %581, i32 0, i32 0
  %583 = load i8**, i8*** %582, align 8
  %584 = load i32, i32* %21, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i8*, i8** %583, i64 %585
  store i8* %580, i8** %586, align 8
  br label %587

587:                                              ; preds = %572
  %588 = load i32, i32* %21, align 4
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %21, align 4
  br label %568

590:                                              ; preds = %568
  %591 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %592 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %591)
  store %struct.iwl_fw_error_dump_data* %592, %struct.iwl_fw_error_dump_data** %7, align 8
  br label %593

593:                                              ; preds = %590, %467
  %594 = load i32, i32* %16, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %601

596:                                              ; preds = %593
  %597 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %598 = call i32 @iwl_fw_dump_rxf(%struct.iwl_fw_runtime* %597, %struct.iwl_fw_error_dump_data** %7)
  %599 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %600 = call i32 @iwl_fw_dump_txf(%struct.iwl_fw_runtime* %599, %struct.iwl_fw_error_dump_data** %7)
  br label %601

601:                                              ; preds = %596, %593
  %602 = load i32, i32* %18, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %601
  %605 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %606 = call i32 @iwl_read_radio_regs(%struct.iwl_fw_runtime* %605, %struct.iwl_fw_error_dump_data** %7)
  br label %607

607:                                              ; preds = %604, %601
  %608 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %609 = load i32, i32* @IWL_FW_ERROR_DUMP_ERROR_INFO, align 4
  %610 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %608, i32 %609)
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %657

612:                                              ; preds = %607
  %613 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %614 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %613, i32 0, i32 3
  %615 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %614, i32 0, i32 4
  %616 = load %struct.TYPE_22__*, %struct.TYPE_22__** %615, align 8
  %617 = icmp ne %struct.TYPE_22__* %616, null
  br i1 %617, label %618, label %657

618:                                              ; preds = %612
  %619 = load i32, i32* @IWL_FW_ERROR_DUMP_ERROR_INFO, align 4
  %620 = call i8* @cpu_to_le32(i32 %619)
  %621 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %622 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %621, i32 0, i32 2
  store i8* %620, i8** %622, align 8
  %623 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %624 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %623, i32 0, i32 3
  %625 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %624, i32 0, i32 4
  %626 = load %struct.TYPE_22__*, %struct.TYPE_22__** %625, align 8
  %627 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 4
  %629 = sext i32 %628 to i64
  %630 = add i64 4, %629
  %631 = trunc i64 %630 to i32
  %632 = call i8* @cpu_to_le32(i32 %631)
  %633 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %634 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %633, i32 0, i32 1
  store i8* %632, i8** %634, align 8
  %635 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %636 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %635, i32 0, i32 0
  %637 = load %struct.iwl_fw_error_dump_trigger_desc*, %struct.iwl_fw_error_dump_trigger_desc** %636, align 8
  %638 = bitcast %struct.iwl_fw_error_dump_trigger_desc* %637 to i8*
  %639 = bitcast i8* %638 to %struct.iwl_fw_error_dump_trigger_desc*
  store %struct.iwl_fw_error_dump_trigger_desc* %639, %struct.iwl_fw_error_dump_trigger_desc** %10, align 8
  %640 = load %struct.iwl_fw_error_dump_trigger_desc*, %struct.iwl_fw_error_dump_trigger_desc** %10, align 8
  %641 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %642 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %641, i32 0, i32 3
  %643 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %642, i32 0, i32 4
  %644 = load %struct.TYPE_22__*, %struct.TYPE_22__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %644, i32 0, i32 1
  %646 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %647 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %646, i32 0, i32 3
  %648 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %647, i32 0, i32 4
  %649 = load %struct.TYPE_22__*, %struct.TYPE_22__** %648, align 8
  %650 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 4
  %652 = sext i32 %651 to i64
  %653 = add i64 4, %652
  %654 = call i32 @memcpy(%struct.iwl_fw_error_dump_trigger_desc* %640, i32* %645, i64 %653)
  %655 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %656 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %655)
  store %struct.iwl_fw_error_dump_data* %656, %struct.iwl_fw_error_dump_data** %7, align 8
  br label %657

657:                                              ; preds = %618, %612, %607
  %658 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %659 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %658, i32 0, i32 3
  %660 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %659, i32 0, i32 3
  %661 = load i64, i64* %660, align 8
  %662 = icmp ne i64 %661, 0
  br i1 %662, label %663, label %664

663:                                              ; preds = %657
  br label %832

664:                                              ; preds = %657
  %665 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %666 = load i32, i32* @IWL_FW_ERROR_DUMP_MEM, align 4
  %667 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %665, i32 %666)
  %668 = icmp ne i64 %667, 0
  br i1 %668, label %669, label %751

669:                                              ; preds = %664
  %670 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %671 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %670, i32 0, i32 4
  %672 = load %struct.TYPE_24__*, %struct.TYPE_24__** %671, align 8
  %673 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %672, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %673, i32 0, i32 1
  %675 = load %struct.iwl_fw_dbg_mem_seg_tlv*, %struct.iwl_fw_dbg_mem_seg_tlv** %674, align 8
  store %struct.iwl_fw_dbg_mem_seg_tlv* %675, %struct.iwl_fw_dbg_mem_seg_tlv** %26, align 8
  %676 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %677 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %676, i32 0, i32 4
  %678 = load %struct.TYPE_24__*, %struct.TYPE_24__** %677, align 8
  %679 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %678, i32 0, i32 0
  %680 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 8
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %689, label %683

683:                                              ; preds = %669
  %684 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %685 = load i32, i32* %11, align 4
  %686 = load i32, i32* %12, align 4
  %687 = load i32, i32* @IWL_FW_ERROR_DUMP_MEM_SRAM, align 4
  %688 = call i32 @iwl_fw_dump_mem(%struct.iwl_fw_runtime* %684, %struct.iwl_fw_error_dump_data** %7, i32 %685, i32 %686, i32 %687)
  br label %689

689:                                              ; preds = %683, %669
  store i32 0, i32* %21, align 4
  br label %690

690:                                              ; preds = %725, %689
  %691 = load i32, i32* %21, align 4
  %692 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %693 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %692, i32 0, i32 4
  %694 = load %struct.TYPE_24__*, %struct.TYPE_24__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %694, i32 0, i32 0
  %696 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 8
  %698 = icmp slt i32 %691, %697
  br i1 %698, label %699, label %728

699:                                              ; preds = %690
  %700 = load %struct.iwl_fw_dbg_mem_seg_tlv*, %struct.iwl_fw_dbg_mem_seg_tlv** %26, align 8
  %701 = load i32, i32* %21, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds %struct.iwl_fw_dbg_mem_seg_tlv, %struct.iwl_fw_dbg_mem_seg_tlv* %700, i64 %702
  %704 = getelementptr inbounds %struct.iwl_fw_dbg_mem_seg_tlv, %struct.iwl_fw_dbg_mem_seg_tlv* %703, i32 0, i32 2
  %705 = load i32, i32* %704, align 4
  %706 = call i32 @le32_to_cpu(i32 %705)
  store i32 %706, i32* %27, align 4
  %707 = load %struct.iwl_fw_dbg_mem_seg_tlv*, %struct.iwl_fw_dbg_mem_seg_tlv** %26, align 8
  %708 = load i32, i32* %21, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds %struct.iwl_fw_dbg_mem_seg_tlv, %struct.iwl_fw_dbg_mem_seg_tlv* %707, i64 %709
  %711 = getelementptr inbounds %struct.iwl_fw_dbg_mem_seg_tlv, %struct.iwl_fw_dbg_mem_seg_tlv* %710, i32 0, i32 1
  %712 = load i32, i32* %711, align 4
  %713 = call i32 @le32_to_cpu(i32 %712)
  store i32 %713, i32* %28, align 4
  %714 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %715 = load i32, i32* %27, align 4
  %716 = load i32, i32* %28, align 4
  %717 = load %struct.iwl_fw_dbg_mem_seg_tlv*, %struct.iwl_fw_dbg_mem_seg_tlv** %26, align 8
  %718 = load i32, i32* %21, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds %struct.iwl_fw_dbg_mem_seg_tlv, %struct.iwl_fw_dbg_mem_seg_tlv* %717, i64 %719
  %721 = getelementptr inbounds %struct.iwl_fw_dbg_mem_seg_tlv, %struct.iwl_fw_dbg_mem_seg_tlv* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 4
  %723 = call i32 @le32_to_cpu(i32 %722)
  %724 = call i32 @iwl_fw_dump_mem(%struct.iwl_fw_runtime* %714, %struct.iwl_fw_error_dump_data** %7, i32 %715, i32 %716, i32 %723)
  br label %725

725:                                              ; preds = %699
  %726 = load i32, i32* %21, align 4
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %21, align 4
  br label %690

728:                                              ; preds = %690
  %729 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %730 = load i32, i32* %19, align 4
  %731 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %732 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %731, i32 0, i32 2
  %733 = load %struct.TYPE_15__*, %struct.TYPE_15__** %732, align 8
  %734 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %733, i32 0, i32 0
  %735 = load %struct.TYPE_13__*, %struct.TYPE_13__** %734, align 8
  %736 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %735, i32 0, i32 5
  %737 = load i32, i32* %736, align 4
  %738 = load i32, i32* @IWL_FW_ERROR_DUMP_MEM_SMEM, align 4
  %739 = call i32 @iwl_fw_dump_mem(%struct.iwl_fw_runtime* %729, %struct.iwl_fw_error_dump_data** %7, i32 %730, i32 %737, i32 %738)
  %740 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %741 = load i32, i32* %20, align 4
  %742 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %743 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %742, i32 0, i32 2
  %744 = load %struct.TYPE_15__*, %struct.TYPE_15__** %743, align 8
  %745 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %744, i32 0, i32 0
  %746 = load %struct.TYPE_13__*, %struct.TYPE_13__** %745, align 8
  %747 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %746, i32 0, i32 6
  %748 = load i32, i32* %747, align 4
  %749 = load i32, i32* @IWL_FW_ERROR_DUMP_MEM_SRAM, align 4
  %750 = call i32 @iwl_fw_dump_mem(%struct.iwl_fw_runtime* %740, %struct.iwl_fw_error_dump_data** %7, i32 %741, i32 %748, i32 %749)
  br label %751

751:                                              ; preds = %728, %664
  %752 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %753 = call i64 @iwl_fw_dbg_is_d3_debug_enabled(%struct.iwl_fw_runtime* %752)
  %754 = icmp ne i64 %753, 0
  br i1 %754, label %755, label %817

755:                                              ; preds = %751
  %756 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %757 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %756, i32 0, i32 3
  %758 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %757, i32 0, i32 2
  %759 = load i32*, i32** %758, align 8
  %760 = icmp ne i32* %759, null
  br i1 %760, label %761, label %817

761:                                              ; preds = %755
  %762 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %763 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %762, i32 0, i32 2
  %764 = load %struct.TYPE_15__*, %struct.TYPE_15__** %763, align 8
  %765 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %764, i32 0, i32 0
  %766 = load %struct.TYPE_13__*, %struct.TYPE_13__** %765, align 8
  %767 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %766, i32 0, i32 7
  %768 = load i32, i32* %767, align 4
  store i32 %768, i32* %29, align 4
  %769 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %770 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %769, i32 0, i32 2
  %771 = load %struct.TYPE_15__*, %struct.TYPE_15__** %770, align 8
  %772 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %771, i32 0, i32 0
  %773 = load %struct.TYPE_13__*, %struct.TYPE_13__** %772, align 8
  %774 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %773, i32 0, i32 4
  %775 = load i32, i32* %774, align 4
  %776 = sext i32 %775 to i64
  store i64 %776, i64* %30, align 8
  %777 = load i32, i32* @IWL_FW_ERROR_DUMP_D3_DEBUG_DATA, align 4
  %778 = call i8* @cpu_to_le32(i32 %777)
  %779 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %780 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %779, i32 0, i32 2
  store i8* %778, i8** %780, align 8
  %781 = load i64, i64* %30, align 8
  %782 = mul i64 %781, 2
  %783 = trunc i64 %782 to i32
  %784 = call i8* @cpu_to_le32(i32 %783)
  %785 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %786 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %785, i32 0, i32 1
  store i8* %784, i8** %786, align 8
  %787 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %788 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %787, i32 0, i32 0
  %789 = load %struct.iwl_fw_error_dump_trigger_desc*, %struct.iwl_fw_error_dump_trigger_desc** %788, align 8
  %790 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %791 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %790, i32 0, i32 3
  %792 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %791, i32 0, i32 2
  %793 = load i32*, i32** %792, align 8
  %794 = load i64, i64* %30, align 8
  %795 = call i32 @memcpy(%struct.iwl_fw_error_dump_trigger_desc* %789, i32* %793, i64 %794)
  %796 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %797 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %796, i32 0, i32 3
  %798 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %797, i32 0, i32 2
  %799 = load i32*, i32** %798, align 8
  %800 = call i32 @kfree(i32* %799)
  %801 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %802 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %801, i32 0, i32 3
  %803 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %802, i32 0, i32 2
  store i32* null, i32** %803, align 8
  %804 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %805 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %804, i32 0, i32 2
  %806 = load %struct.TYPE_15__*, %struct.TYPE_15__** %805, align 8
  %807 = load i32, i32* %29, align 4
  %808 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %809 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %808, i32 0, i32 0
  %810 = load %struct.iwl_fw_error_dump_trigger_desc*, %struct.iwl_fw_error_dump_trigger_desc** %809, align 8
  %811 = load i64, i64* %30, align 8
  %812 = getelementptr inbounds %struct.iwl_fw_error_dump_trigger_desc, %struct.iwl_fw_error_dump_trigger_desc* %810, i64 %811
  %813 = load i64, i64* %30, align 8
  %814 = call i32 @iwl_trans_read_mem_bytes(%struct.TYPE_15__* %806, i32 %807, %struct.iwl_fw_error_dump_trigger_desc* %812, i64 %813)
  %815 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %7, align 8
  %816 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %815)
  store %struct.iwl_fw_error_dump_data* %816, %struct.iwl_fw_error_dump_data** %7, align 8
  br label %817

817:                                              ; preds = %761, %755, %751
  %818 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %819 = call i64 @iwl_fw_dbg_is_paging_enabled(%struct.iwl_fw_runtime* %818)
  %820 = icmp ne i64 %819, 0
  br i1 %820, label %821, label %824

821:                                              ; preds = %817
  %822 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %823 = call i32 @iwl_dump_paging(%struct.iwl_fw_runtime* %822, %struct.iwl_fw_error_dump_data** %7)
  br label %824

824:                                              ; preds = %821, %817
  %825 = load i32, i32* %17, align 4
  %826 = icmp ne i32 %825, 0
  br i1 %826, label %827, label %831

827:                                              ; preds = %824
  %828 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %829 = load i32, i32* @iwl_dump_prph, align 4
  %830 = call i32 (%struct.iwl_fw_runtime*, ...) @iwl_fw_prph_handler(%struct.iwl_fw_runtime* %828, %struct.iwl_fw_error_dump_data** %7, i32 %829)
  br label %831

831:                                              ; preds = %827, %824
  br label %832

832:                                              ; preds = %831, %663
  %833 = load i32, i32* %15, align 4
  %834 = call i8* @cpu_to_le32(i32 %833)
  %835 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %6, align 8
  %836 = getelementptr inbounds %struct.iwl_fw_error_dump_file, %struct.iwl_fw_error_dump_file* %835, i32 0, i32 0
  store i8* %834, i8** %836, align 8
  %837 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %6, align 8
  store %struct.iwl_fw_error_dump_file* %837, %struct.iwl_fw_error_dump_file** %3, align 8
  br label %838

838:                                              ; preds = %832, %343, %98
  %839 = load %struct.iwl_fw_error_dump_file*, %struct.iwl_fw_error_dump_file** %3, align 8
  ret %struct.iwl_fw_error_dump_file* %839
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_fw_rxf_len(%struct.iwl_fw_runtime*, %struct.iwl_fwrt_shared_mem_cfg*) #1

declare dso_local i32 @iwl_fw_txf_len(%struct.iwl_fw_runtime*, %struct.iwl_fwrt_shared_mem_cfg*) #1

declare dso_local i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i32 @iwl_fw_prph_handler(%struct.iwl_fw_runtime*, ...) #1

declare dso_local i32 @ADD_LEN(i32, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @iwl_fw_dbg_is_paging_enabled(%struct.iwl_fw_runtime*) #1

declare dso_local i64 @iwl_fw_dbg_is_d3_debug_enabled(%struct.iwl_fw_runtime*) #1

declare dso_local %struct.iwl_fw_error_dump_file* @vzalloc(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @CSR_HW_REV_TYPE(i32) #1

declare dso_local i32 @CSR_HW_REV_STEP(i32) #1

declare dso_local i32 @memcpy(%struct.iwl_fw_error_dump_trigger_desc*, i32*, i64) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

declare dso_local i32 @iwl_fw_dump_rxf(%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**) #1

declare dso_local i32 @iwl_fw_dump_txf(%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**) #1

declare dso_local i32 @iwl_read_radio_regs(%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**) #1

declare dso_local i32 @iwl_fw_dump_mem(%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iwl_trans_read_mem_bytes(%struct.TYPE_15__*, i32, %struct.iwl_fw_error_dump_trigger_desc*, i64) #1

declare dso_local i32 @iwl_dump_paging(%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
