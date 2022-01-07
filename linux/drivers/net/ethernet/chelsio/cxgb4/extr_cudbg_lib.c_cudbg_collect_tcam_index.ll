; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_tcam_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_tcam_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.cudbg_mps_tcam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i8**, i32, i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.fw_ldst_mps_rplc }
%struct.fw_ldst_mps_rplc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CHELSIO_T6 = common dso_local global i64 0, align 8
@MPS_CLS_TCAM_DATA2_CTL_A = common dso_local global i32 0, align 4
@MPS_CLS_TCAM_RDATA1_REQ_ID1_A = common dso_local global i32 0, align 4
@MPS_CLS_TCAM_RDATA0_REQ_ID1_A = common dso_local global i32 0, align 4
@MPS_CLS_TCAM_RDATA2_REQ_ID1_A = common dso_local global i32 0, align 4
@DATALKPTYPE_M = common dso_local global i32 0, align 4
@DATAVIDH2_F = common dso_local global i32 0, align 4
@DATADIPHIT_F = common dso_local global i32 0, align 4
@REPLICATE_F = common dso_local global i32 0, align 4
@T6_REPLICATE_F = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_MPS = common dso_local global i32 0, align 4
@FW_LDST_MPS_RPLC = common dso_local global i32 0, align 4
@CUDBG_MAX_RPLC_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_mps_tcam*, i32)* @cudbg_collect_tcam_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_collect_tcam_index(%struct.cudbg_init* %0, %struct.cudbg_mps_tcam* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_mps_tcam*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fw_ldst_cmd, align 8
  %16 = alloca %struct.fw_ldst_mps_rplc, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_mps_tcam* %1, %struct.cudbg_mps_tcam** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %18 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %8, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.adapter*, %struct.adapter** %8, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @CHELSIO_CHIP_VERSION(i32 %23)
  %25 = load i64, i64* @CHELSIO_T6, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %171

27:                                               ; preds = %3
  %28 = call i32 @CTLREQID_V(i32 1)
  %29 = call i32 @CTLCMDTYPE_V(i32 0)
  %30 = or i32 %28, %29
  %31 = call i32 @CTLXYBITSEL_V(i32 0)
  %32 = or i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @CTLTCAMINDEX_V(i32 %36)
  %38 = call i32 @CTLTCAMSEL_V(i32 0)
  %39 = or i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  br label %50

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 256
  %45 = call i32 @CTLTCAMINDEX_V(i32 %44)
  %46 = call i32 @CTLTCAMSEL_V(i32 1)
  %47 = or i32 %45, %46
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %42, %35
  %51 = load %struct.adapter*, %struct.adapter** %8, align 8
  %52 = load i32, i32* @MPS_CLS_TCAM_DATA2_CTL_A, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @t4_write_reg(%struct.adapter* %51, i32 %52, i32 %53)
  %55 = load %struct.adapter*, %struct.adapter** %8, align 8
  %56 = load i32, i32* @MPS_CLS_TCAM_RDATA1_REQ_ID1_A, align 4
  %57 = call i32 @t4_read_reg(%struct.adapter* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @DMACH_G(i32 %58)
  %60 = shl i32 %59, 32
  store i32 %60, i32* %9, align 4
  %61 = load %struct.adapter*, %struct.adapter** %8, align 8
  %62 = load i32, i32* @MPS_CLS_TCAM_RDATA0_REQ_ID1_A, align 4
  %63 = call i32 @t4_read_reg(%struct.adapter* %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.adapter*, %struct.adapter** %8, align 8
  %67 = load i32, i32* @MPS_CLS_TCAM_RDATA2_REQ_ID1_A, align 4
  %68 = call i32 @t4_read_reg(%struct.adapter* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @DATALKPTYPE_G(i32 %69)
  %71 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %72 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %71, i32 0, i32 13
  store i32 %70, i32* %72, align 8
  %73 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %74 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %50
  %78 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %79 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %78, i32 0, i32 13
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DATALKPTYPE_M, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %77
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @DATAVIDH2_F, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @DATAVIDH1_G(i32 %87)
  %89 = or i32 %86, %88
  %90 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %91 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %93 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 %94, 16
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @VIDL_G(i32 %96)
  %98 = or i32 %95, %97
  %99 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %100 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @DATADIPHIT_F, align 4
  %103 = and i32 %101, %102
  %104 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %105 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %116

106:                                              ; preds = %77, %50
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @DATAVIDH2_F, align 4
  %109 = and i32 %107, %108
  %110 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %111 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @VIDL_G(i32 %112)
  %114 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %115 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %106, %83
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @DATAPORTNUM_G(i32 %117)
  %119 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %120 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %119, i32 0, i32 14
  store i32 %118, i32* %120, align 4
  %121 = call i32 @CTLXYBITSEL_V(i32 1)
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %12, align 4
  %124 = load %struct.adapter*, %struct.adapter** %8, align 8
  %125 = load i32, i32* @MPS_CLS_TCAM_DATA2_CTL_A, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @t4_write_reg(%struct.adapter* %124, i32 %125, i32 %126)
  %128 = load %struct.adapter*, %struct.adapter** %8, align 8
  %129 = load i32, i32* @MPS_CLS_TCAM_RDATA1_REQ_ID1_A, align 4
  %130 = call i32 @t4_read_reg(%struct.adapter* %128, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @DMACH_G(i32 %131)
  %133 = shl i32 %132, 32
  store i32 %133, i32* %10, align 4
  %134 = load %struct.adapter*, %struct.adapter** %8, align 8
  %135 = load i32, i32* @MPS_CLS_TCAM_RDATA0_REQ_ID1_A, align 4
  %136 = call i32 @t4_read_reg(%struct.adapter* %134, i32 %135)
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %10, align 4
  %139 = load %struct.adapter*, %struct.adapter** %8, align 8
  %140 = load i32, i32* @MPS_CLS_TCAM_RDATA2_REQ_ID1_A, align 4
  %141 = call i32 @t4_read_reg(%struct.adapter* %139, i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %143 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %142, i32 0, i32 13
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %116
  %147 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %148 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %147, i32 0, i32 13
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @DATALKPTYPE_M, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %146
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @DATAVIDH2_F, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @DATAVIDH1_G(i32 %156)
  %158 = or i32 %155, %157
  %159 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %160 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %162 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = shl i32 %163, 16
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @VIDL_G(i32 %165)
  %167 = or i32 %164, %166
  %168 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %169 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %152, %146, %116
  br label %180

171:                                              ; preds = %3
  %172 = load %struct.adapter*, %struct.adapter** %8, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @MPS_CLS_TCAM_Y_L(i32 %173)
  %175 = call i32 @t4_read_reg64(%struct.adapter* %172, i32 %174)
  store i32 %175, i32* %9, align 4
  %176 = load %struct.adapter*, %struct.adapter** %8, align 8
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @MPS_CLS_TCAM_X_L(i32 %177)
  %179 = call i32 @t4_read_reg64(%struct.adapter* %176, i32 %178)
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %171, %170
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %9, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %14, align 4
  store i32 %186, i32* %4, align 4
  br label %372

187:                                              ; preds = %180
  %188 = load %struct.adapter*, %struct.adapter** %8, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @MPS_CLS_SRAM_L(i32 %189)
  %191 = call i32 @t4_read_reg(%struct.adapter* %188, i32 %190)
  %192 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %193 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  %194 = load %struct.adapter*, %struct.adapter** %8, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @MPS_CLS_SRAM_H(i32 %195)
  %197 = call i32 @t4_read_reg(%struct.adapter* %194, i32 %196)
  %198 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %199 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 8
  %200 = load %struct.adapter*, %struct.adapter** %8, align 8
  %201 = getelementptr inbounds %struct.adapter, %struct.adapter* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @is_t5(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %187
  %207 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %208 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @REPLICATE_F, align 4
  %211 = and i32 %209, %210
  %212 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %213 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %212, i32 0, i32 7
  store i32 %211, i32* %213, align 4
  br label %230

214:                                              ; preds = %187
  %215 = load %struct.adapter*, %struct.adapter** %8, align 8
  %216 = getelementptr inbounds %struct.adapter, %struct.adapter* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i64 @is_t6(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %214
  %222 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %223 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @T6_REPLICATE_F, align 4
  %226 = and i32 %224, %225
  %227 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %228 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %227, i32 0, i32 7
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %221, %214
  br label %230

230:                                              ; preds = %229, %206
  %231 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %232 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %352

235:                                              ; preds = %230
  %236 = call i32 @memset(%struct.fw_ldst_cmd* %15, i32 0, i32 56)
  %237 = load i32, i32* @FW_LDST_CMD, align 4
  %238 = call i32 @FW_CMD_OP_V(i32 %237)
  %239 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @FW_CMD_READ_F, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @FW_LDST_ADDRSPC_MPS, align 4
  %244 = call i32 @FW_LDST_CMD_ADDRSPACE_V(i32 %243)
  %245 = or i32 %242, %244
  %246 = call i8* @htonl(i32 %245)
  %247 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %15, i32 0, i32 2
  store i8* %246, i8** %247, align 8
  %248 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %15)
  %249 = call i8* @htonl(i32 %248)
  %250 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %15, i32 0, i32 1
  store i8* %249, i8** %250, align 8
  %251 = load i32, i32* @FW_LDST_MPS_RPLC, align 4
  %252 = call i32 @FW_LDST_CMD_FID_V(i32 %251)
  %253 = load i32, i32* %7, align 4
  %254 = call i32 @FW_LDST_CMD_IDX_V(i32 %253)
  %255 = or i32 %252, %254
  %256 = call i32 @htons(i32 %255)
  %257 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %15, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %259, i32 0, i32 8
  store i32 %256, i32* %260, align 8
  %261 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %262 = call i64 @is_fw_attached(%struct.cudbg_init* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %235
  %265 = load %struct.adapter*, %struct.adapter** %8, align 8
  %266 = load %struct.adapter*, %struct.adapter** %8, align 8
  %267 = getelementptr inbounds %struct.adapter, %struct.adapter* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @t4_wr_mbox(%struct.adapter* %265, i32 %268, %struct.fw_ldst_cmd* %15, i32 56, %struct.fw_ldst_cmd* %15)
  store i32 %269, i32* %14, align 4
  br label %270

270:                                              ; preds = %264, %235
  %271 = load i32, i32* %14, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %270
  %274 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %275 = call i64 @is_fw_attached(%struct.cudbg_init* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %273, %270
  %278 = load %struct.adapter*, %struct.adapter** %8, align 8
  %279 = call i32 @cudbg_mps_rpl_backdoor(%struct.adapter* %278, %struct.fw_ldst_mps_rplc* %16)
  store i32 0, i32* %14, align 4
  br label %286

280:                                              ; preds = %273
  %281 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %15, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = bitcast %struct.fw_ldst_mps_rplc* %16 to i8*
  %285 = bitcast %struct.fw_ldst_mps_rplc* %283 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %284, i8* align 8 %285, i64 36, i1 false)
  br label %286

286:                                              ; preds = %280, %277
  %287 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %16, i32 0, i32 7
  %288 = load i32, i32* %287, align 4
  %289 = call i8* @ntohl(i32 %288)
  %290 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %291 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %290, i32 0, i32 12
  %292 = load i8**, i8*** %291, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 0
  store i8* %289, i8** %293, align 8
  %294 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %16, i32 0, i32 6
  %295 = load i32, i32* %294, align 4
  %296 = call i8* @ntohl(i32 %295)
  %297 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %298 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %297, i32 0, i32 12
  %299 = load i8**, i8*** %298, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 1
  store i8* %296, i8** %300, align 8
  %301 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %16, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @ntohl(i32 %302)
  %304 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %305 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %304, i32 0, i32 12
  %306 = load i8**, i8*** %305, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i64 2
  store i8* %303, i8** %307, align 8
  %308 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %16, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = call i8* @ntohl(i32 %309)
  %311 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %312 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %311, i32 0, i32 12
  %313 = load i8**, i8*** %312, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 3
  store i8* %310, i8** %314, align 8
  %315 = load %struct.adapter*, %struct.adapter** %8, align 8
  %316 = getelementptr inbounds %struct.adapter, %struct.adapter* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @CUDBG_MAX_RPLC_SIZE, align 8
  %321 = icmp sgt i64 %319, %320
  br i1 %321, label %322, label %351

322:                                              ; preds = %286
  %323 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %16, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = call i8* @ntohl(i32 %324)
  %326 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %327 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %326, i32 0, i32 12
  %328 = load i8**, i8*** %327, align 8
  %329 = getelementptr inbounds i8*, i8** %328, i64 4
  store i8* %325, i8** %329, align 8
  %330 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %16, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = call i8* @ntohl(i32 %331)
  %333 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %334 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %333, i32 0, i32 12
  %335 = load i8**, i8*** %334, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i64 5
  store i8* %332, i8** %336, align 8
  %337 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %16, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = call i8* @ntohl(i32 %338)
  %340 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %341 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %340, i32 0, i32 12
  %342 = load i8**, i8*** %341, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i64 6
  store i8* %339, i8** %343, align 8
  %344 = getelementptr inbounds %struct.fw_ldst_mps_rplc, %struct.fw_ldst_mps_rplc* %16, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i8* @ntohl(i32 %345)
  %347 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %348 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %347, i32 0, i32 12
  %349 = load i8**, i8*** %348, align 8
  %350 = getelementptr inbounds i8*, i8** %349, i64 7
  store i8* %346, i8** %350, align 8
  br label %351

351:                                              ; preds = %322, %286
  br label %352

352:                                              ; preds = %351, %230
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* %9, align 4
  %355 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %356 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %355, i32 0, i32 11
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %359 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %358, i32 0, i32 10
  %360 = call i32 @cudbg_tcamxy2valmask(i32 %353, i32 %354, i32 %357, i32* %359)
  %361 = load i32, i32* %7, align 4
  %362 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %363 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %362, i32 0, i32 8
  store i32 %361, i32* %363, align 8
  %364 = load %struct.adapter*, %struct.adapter** %8, align 8
  %365 = getelementptr inbounds %struct.adapter, %struct.adapter* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.cudbg_mps_tcam*, %struct.cudbg_mps_tcam** %6, align 8
  %370 = getelementptr inbounds %struct.cudbg_mps_tcam, %struct.cudbg_mps_tcam* %369, i32 0, i32 9
  store i64 %368, i64* %370, align 8
  %371 = load i32, i32* %14, align 4
  store i32 %371, i32* %4, align 4
  br label %372

372:                                              ; preds = %352, %185
  %373 = load i32, i32* %4, align 4
  ret i32 %373
}

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @CTLREQID_V(i32) #1

declare dso_local i32 @CTLCMDTYPE_V(i32) #1

declare dso_local i32 @CTLXYBITSEL_V(i32) #1

declare dso_local i32 @CTLTCAMINDEX_V(i32) #1

declare dso_local i32 @CTLTCAMSEL_V(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @DMACH_G(i32) #1

declare dso_local i32 @DATALKPTYPE_G(i32) #1

declare dso_local i32 @DATAVIDH1_G(i32) #1

declare dso_local i32 @VIDL_G(i32) #1

declare dso_local i32 @DATAPORTNUM_G(i32) #1

declare dso_local i32 @t4_read_reg64(%struct.adapter*, i32) #1

declare dso_local i32 @MPS_CLS_TCAM_Y_L(i32) #1

declare dso_local i32 @MPS_CLS_TCAM_X_L(i32) #1

declare dso_local i32 @MPS_CLS_SRAM_L(i32) #1

declare dso_local i32 @MPS_CLS_SRAM_H(i32) #1

declare dso_local i64 @is_t5(i32) #1

declare dso_local i64 @is_t6(i32) #1

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LDST_CMD_ADDRSPACE_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @FW_LDST_CMD_FID_V(i32) #1

declare dso_local i32 @FW_LDST_CMD_IDX_V(i32) #1

declare dso_local i64 @is_fw_attached(%struct.cudbg_init*) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

declare dso_local i32 @cudbg_mps_rpl_backdoor(%struct.adapter*, %struct.fw_ldst_mps_rplc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @cudbg_tcamxy2valmask(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
