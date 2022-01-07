; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dump_txf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dump_txf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.TYPE_4__* }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_fw_error_dump_data = type { i8*, i8*, i64 }
%struct.iwl_fw_error_dump_fifo = type { i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"WRT TX FIFO dump\0A\00", align 1
@IWL_FW_ERROR_DUMP_TXF = common dso_local global i32 0, align 4
@TXF_LARC_NUM = common dso_local global i64 0, align 8
@LMAC2_PRPH_OFFSET = common dso_local global i64 0, align 8
@IWL_FW_ERROR_DUMP_INTERNAL_TXF = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG = common dso_local global i32 0, align 4
@TXF_CPU2_NUM = common dso_local global i64 0, align 8
@TXF_CPU2_FIFO_ITEM_CNT = common dso_local global i32 0, align 4
@TXF_CPU2_WR_PTR = common dso_local global i32 0, align 4
@TXF_CPU2_RD_PTR = common dso_local global i32 0, align 4
@TXF_CPU2_FENCE_PTR = common dso_local global i32 0, align 4
@TXF_CPU2_LOCK_FENCE = common dso_local global i32 0, align 4
@TXF_CPU2_READ_MODIFY_ADDR = common dso_local global i64 0, align 8
@TXF_CPU2_READ_MODIFY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**)* @iwl_fw_dump_txf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_dump_txf(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_error_dump_data** %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %5 = alloca %struct.iwl_fw_error_dump_fifo*, align 8
  %6 = alloca %struct.iwl_fwrt_shared_mem_cfg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %4, align 8
  %12 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %12, i32 0, i32 1
  store %struct.iwl_fwrt_shared_mem_cfg* %13, %struct.iwl_fwrt_shared_mem_cfg** %6, align 8
  %14 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %15 = call i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @iwl_trans_grab_nic_access(i32 %18, i64* %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %266

22:                                               ; preds = %2
  %23 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %24 = load i32, i32* @IWL_FW_ERROR_DUMP_TXF, align 4
  %25 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %106

27:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %31 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @TXF_LARC_NUM, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @iwl_trans_write_prph(i32 %38, i64 %39, i32 %40)
  %42 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %43 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %44 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @iwl_fwrt_dump_txf(%struct.iwl_fw_runtime* %42, %struct.iwl_fw_error_dump_data** %43, i32 %53, i64 0, i32 %54)
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %28

59:                                               ; preds = %28
  %60 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %61 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %105

65:                                               ; preds = %59
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %101, %65
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %69 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %66
  %74 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @TXF_LARC_NUM, align 8
  %78 = load i64, i64* @LMAC2_PRPH_OFFSET, align 8
  %79 = add nsw i64 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @iwl_trans_write_prph(i32 %76, i64 %79, i32 %80)
  %82 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %83 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %84 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %6, align 8
  %85 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %84, i32 0, i32 3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @LMAC2_PRPH_OFFSET, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %6, align 8
  %97 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  %100 = call i32 @iwl_fwrt_dump_txf(%struct.iwl_fw_runtime* %82, %struct.iwl_fw_error_dump_data** %83, i32 %93, i64 %94, i32 %99)
  br label %101

101:                                              ; preds = %73
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %66

104:                                              ; preds = %66
  br label %105

105:                                              ; preds = %104, %59
  br label %106

106:                                              ; preds = %105, %22
  %107 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %108 = load i32, i32* @IWL_FW_ERROR_DUMP_INTERNAL_TXF, align 4
  %109 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %261

111:                                              ; preds = %106
  %112 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %113 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* @IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG, align 4
  %117 = call i64 @fw_has_capa(i32* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %261

119:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  br label %120

120:                                              ; preds = %257, %119
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %123 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @ARRAY_SIZE(i32* %125)
  %127 = icmp slt i32 %121, %126
  br i1 %127, label %128, label %260

128:                                              ; preds = %120
  %129 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %130 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %129, align 8
  %131 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = bitcast i8* %133 to %struct.iwl_fw_error_dump_fifo*
  store %struct.iwl_fw_error_dump_fifo* %134, %struct.iwl_fw_error_dump_fifo** %5, align 8
  %135 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %5, align 8
  %136 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i8*
  %139 = bitcast i8* %138 to i32*
  store i32* %139, i32** %7, align 8
  %140 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %141 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %128
  br label %257

151:                                              ; preds = %128
  %152 = load i32, i32* @IWL_FW_ERROR_DUMP_INTERNAL_TXF, align 4
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %155 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %154, align 8
  %156 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %155, i32 0, i32 1
  store i8* %153, i8** %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %158, 56
  %160 = trunc i64 %159 to i32
  %161 = call i8* @cpu_to_le32(i32 %160)
  %162 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %163 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %162, align 8
  %164 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %163, i32 0, i32 0
  store i8* %161, i8** %164, align 8
  %165 = load i32, i32* %10, align 4
  %166 = call i8* @cpu_to_le32(i32 %165)
  %167 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %5, align 8
  %168 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %167, i32 0, i32 5
  store i8* %166, i8** %168, align 8
  %169 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %170 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i64, i64* @TXF_CPU2_NUM, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %175 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %173, %177
  %179 = call i32 @iwl_trans_write_prph(i32 %171, i64 %172, i32 %178)
  %180 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %181 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @TXF_CPU2_FIFO_ITEM_CNT, align 4
  %184 = call i32 @iwl_trans_read_prph(i32 %182, i32 %183)
  %185 = call i8* @cpu_to_le32(i32 %184)
  %186 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %5, align 8
  %187 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  %188 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %189 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @TXF_CPU2_WR_PTR, align 4
  %192 = call i32 @iwl_trans_read_prph(i32 %190, i32 %191)
  %193 = call i8* @cpu_to_le32(i32 %192)
  %194 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %5, align 8
  %195 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  %196 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %197 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @TXF_CPU2_RD_PTR, align 4
  %200 = call i32 @iwl_trans_read_prph(i32 %198, i32 %199)
  %201 = call i8* @cpu_to_le32(i32 %200)
  %202 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %5, align 8
  %203 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %202, i32 0, i32 2
  store i8* %201, i8** %203, align 8
  %204 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %205 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @TXF_CPU2_FENCE_PTR, align 4
  %208 = call i32 @iwl_trans_read_prph(i32 %206, i32 %207)
  %209 = call i8* @cpu_to_le32(i32 %208)
  %210 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %5, align 8
  %211 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %210, i32 0, i32 1
  store i8* %209, i8** %211, align 8
  %212 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %213 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @TXF_CPU2_LOCK_FENCE, align 4
  %216 = call i32 @iwl_trans_read_prph(i32 %214, i32 %215)
  %217 = call i8* @cpu_to_le32(i32 %216)
  %218 = load %struct.iwl_fw_error_dump_fifo*, %struct.iwl_fw_error_dump_fifo** %5, align 8
  %219 = getelementptr inbounds %struct.iwl_fw_error_dump_fifo, %struct.iwl_fw_error_dump_fifo* %218, i32 0, i32 0
  store i8* %217, i8** %219, align 8
  %220 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %221 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i64, i64* @TXF_CPU2_READ_MODIFY_ADDR, align 8
  %224 = load i32, i32* @TXF_CPU2_WR_PTR, align 4
  %225 = call i32 @iwl_trans_write_prph(i32 %222, i64 %223, i32 %224)
  %226 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %227 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @TXF_CPU2_READ_MODIFY_DATA, align 4
  %230 = call i32 @iwl_trans_read_prph(i32 %228, i32 %229)
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = udiv i64 %232, 4
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %235

235:                                              ; preds = %249, %151
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %252

239:                                              ; preds = %235
  %240 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %241 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @TXF_CPU2_READ_MODIFY_DATA, align 4
  %244 = call i32 @iwl_trans_read_prph(i32 %242, i32 %243)
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  br label %249

249:                                              ; preds = %239
  %250 = load i32, i32* %11, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %11, align 4
  br label %235

252:                                              ; preds = %235
  %253 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %254 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %253, align 8
  %255 = call %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data* %254)
  %256 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  store %struct.iwl_fw_error_dump_data* %255, %struct.iwl_fw_error_dump_data** %256, align 8
  br label %257

257:                                              ; preds = %252, %150
  %258 = load i32, i32* %10, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %10, align 4
  br label %120

260:                                              ; preds = %120
  br label %261

261:                                              ; preds = %260, %111, %106
  %262 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %263 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @iwl_trans_release_nic_access(i32 %264, i64* %9)
  br label %266

266:                                              ; preds = %261, %21
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime*, i8*) #1

declare dso_local i32 @iwl_trans_grab_nic_access(i32, i64*) #1

declare dso_local i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i32 @iwl_trans_write_prph(i32, i64, i32) #1

declare dso_local i32 @iwl_fwrt_dump_txf(%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**, i32, i64, i32) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_trans_read_prph(i32, i32) #1

declare dso_local %struct.iwl_fw_error_dump_data* @iwl_fw_error_next_data(%struct.iwl_fw_error_dump_data*) #1

declare dso_local i32 @iwl_trans_release_nic_access(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
