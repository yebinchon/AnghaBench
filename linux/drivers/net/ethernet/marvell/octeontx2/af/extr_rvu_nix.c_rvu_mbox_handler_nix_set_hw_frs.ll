; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_set_hw_frs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_set_hw_frs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32*, i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32, i32, i32, i32 }
%struct.nix_frs_cfg = type { i32, i32, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.msg_rsp = type { i32 }
%struct.nix_txsch = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nix_hw = type { %struct.nix_txsch* }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIC_HW_MAX_FRS = common dso_local global i32 0, align 4
@NIX_AF_ERR_FRS_INVALID = common dso_local global i32 0, align 4
@NIC_HW_MIN_FRS = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_SMQ = common dso_local global i64 0, align 8
@NIX_AF_ERR_RX_LINK_INVALID = common dso_local global i32 0, align 4
@CGX_FIFO_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_set_hw_frs(%struct.rvu* %0, %struct.nix_frs_cfg* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_frs_cfg*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca %struct.rvu_hwinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nix_txsch*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nix_hw*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_frs_cfg* %1, %struct.nix_frs_cfg** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = getelementptr inbounds %struct.rvu, %struct.rvu* %20, i32 0, i32 2
  %22 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %21, align 8
  store %struct.rvu_hwinfo* %22, %struct.rvu_hwinfo** %8, align 8
  %23 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %24 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @rvu_get_pf(i64 %27)
  store i32 %28, i32* %10, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load %struct.rvu*, %struct.rvu** %5, align 8
  %30 = load i32, i32* @BLKTYPE_NIX, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @rvu_get_blkaddr(%struct.rvu* %29, i32 %30, i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %36, i32* %4, align 4
  br label %294

37:                                               ; preds = %3
  %38 = load %struct.rvu*, %struct.rvu** %5, align 8
  %39 = getelementptr inbounds %struct.rvu, %struct.rvu* %38, i32 0, i32 2
  %40 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo* %40, i32 %41)
  store %struct.nix_hw* %42, %struct.nix_hw** %17, align 8
  %43 = load %struct.nix_hw*, %struct.nix_hw** %17, align 8
  %44 = icmp ne %struct.nix_hw* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %294

48:                                               ; preds = %37
  %49 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %50 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %55 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @NIX_AF_ERR_FRS_INVALID, align 4
  store i32 %60, i32* %4, align 4
  br label %294

61:                                               ; preds = %53, %48
  %62 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %63 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %68 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NIC_HW_MIN_FRS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @NIX_AF_ERR_FRS_INVALID, align 4
  store i32 %73, i32* %4, align 4
  br label %294

74:                                               ; preds = %66, %61
  %75 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %76 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %153

80:                                               ; preds = %74
  %81 = load %struct.nix_hw*, %struct.nix_hw** %17, align 8
  %82 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %81, i32 0, i32 0
  %83 = load %struct.nix_txsch*, %struct.nix_txsch** %82, align 8
  %84 = load i64, i64* @NIX_TXSCH_LVL_SMQ, align 8
  %85 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %83, i64 %84
  store %struct.nix_txsch* %85, %struct.nix_txsch** %14, align 8
  %86 = load %struct.rvu*, %struct.rvu** %5, align 8
  %87 = getelementptr inbounds %struct.rvu, %struct.rvu* %86, i32 0, i32 1
  %88 = call i32 @mutex_lock(i32* %87)
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %146, %80
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.nix_txsch*, %struct.nix_txsch** %14, align 8
  %92 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %149

96:                                               ; preds = %89
  %97 = load %struct.nix_txsch*, %struct.nix_txsch** %14, align 8
  %98 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @TXSCH_MAP_FUNC(i32 %103)
  %105 = load i64, i64* %9, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %146

108:                                              ; preds = %96
  %109 = load %struct.rvu*, %struct.rvu** %5, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @NIX_AF_SMQX_CFG(i32 %111)
  %113 = call i32 @rvu_read64(%struct.rvu* %109, i32 %110, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = and i64 %115, -16776961
  %117 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %118 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %119, 8
  %121 = sext i32 %120 to i64
  %122 = or i64 %116, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %15, align 4
  %124 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %125 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %108
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = and i64 %130, -128
  %132 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %133 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 127
  %136 = sext i32 %135 to i64
  %137 = or i64 %131, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %128, %108
  %140 = load %struct.rvu*, %struct.rvu** %5, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @NIX_AF_SMQX_CFG(i32 %142)
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @rvu_write64(%struct.rvu* %140, i32 %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %139, %107
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %89

149:                                              ; preds = %89
  %150 = load %struct.rvu*, %struct.rvu** %5, align 8
  %151 = getelementptr inbounds %struct.rvu, %struct.rvu* %150, i32 0, i32 1
  %152 = call i32 @mutex_unlock(i32* %151)
  br label %153

153:                                              ; preds = %149, %79
  %154 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %155 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %153
  %159 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %160 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* @NIX_AF_ERR_RX_LINK_INVALID, align 4
  store i32 %164, i32* %4, align 4
  br label %294

165:                                              ; preds = %158
  %166 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %167 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %170 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %168, %171
  store i32 %172, i32* %13, align 4
  br label %212

173:                                              ; preds = %153
  %174 = load %struct.rvu*, %struct.rvu** %5, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i64 @is_pf_cgxmapped(%struct.rvu* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %173
  %179 = load %struct.rvu*, %struct.rvu** %5, align 8
  %180 = getelementptr inbounds %struct.rvu, %struct.rvu* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @rvu_get_cgx_lmac_id(i32 %185, i32* %18, i32* %19)
  %187 = load i32, i32* %18, align 4
  %188 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %189 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %187, %190
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %191, %192
  store i32 %193, i32* %13, align 4
  br label %202

194:                                              ; preds = %173
  %195 = load i32, i32* %10, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %199 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %197, %194
  br label %202

202:                                              ; preds = %201, %178
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, i32* @NIX_AF_ERR_RX_LINK_INVALID, align 4
  store i32 %206, i32* %4, align 4
  br label %294

207:                                              ; preds = %202
  %208 = load %struct.rvu*, %struct.rvu** %5, align 8
  %209 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %210 = load i64, i64* %9, align 8
  %211 = call i32 @nix_find_link_frs(%struct.rvu* %208, %struct.nix_frs_cfg* %209, i64 %210)
  br label %212

212:                                              ; preds = %207, %165
  %213 = load %struct.rvu*, %struct.rvu** %5, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @NIX_AF_RX_LINKX_CFG(i32 %215)
  %217 = call i32 @rvu_read64(%struct.rvu* %213, i32 %214, i32 %216)
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = and i64 %219, -4294901761
  %221 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %222 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = shl i32 %223, 16
  %225 = sext i32 %224 to i64
  %226 = or i64 %220, %225
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %15, align 4
  %228 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %229 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %212
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = and i64 %234, -65536
  %236 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %237 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = or i64 %235, %239
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %15, align 4
  br label %242

242:                                              ; preds = %232, %212
  %243 = load %struct.rvu*, %struct.rvu** %5, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @NIX_AF_RX_LINKX_CFG(i32 %245)
  %247 = load i32, i32* %15, align 4
  %248 = call i32 @rvu_write64(%struct.rvu* %243, i32 %244, i32 %246, i32 %247)
  %249 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %250 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %242
  %254 = load i32, i32* %10, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %253, %242
  store i32 0, i32* %4, align 4
  br label %294

257:                                              ; preds = %253
  %258 = load i32, i32* @CGX_FIFO_LEN, align 4
  %259 = load i32, i32* %18, align 4
  %260 = load %struct.rvu*, %struct.rvu** %5, align 8
  %261 = call i32 @rvu_cgx_pdata(i32 %259, %struct.rvu* %260)
  %262 = call i32 @cgx_get_lmac_cnt(i32 %261)
  %263 = sdiv i32 %258, %262
  store i32 %263, i32* %16, align 4
  %264 = load %struct.rvu*, %struct.rvu** %5, align 8
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @NIX_AF_TX_LINKX_NORM_CREDIT(i32 %266)
  %268 = call i32 @rvu_read64(%struct.rvu* %264, i32 %265, i32 %267)
  store i32 %268, i32* %15, align 4
  %269 = load i32, i32* %15, align 4
  %270 = sext i32 %269 to i64
  %271 = and i64 %270, -4294963201
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* %16, align 4
  %274 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %6, align 8
  %275 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sub nsw i32 %273, %276
  %278 = sdiv i32 %277, 16
  %279 = shl i32 %278, 12
  %280 = load i32, i32* %15, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %15, align 4
  %282 = load %struct.rvu*, %struct.rvu** %5, align 8
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* %13, align 4
  %285 = call i32 @NIX_AF_TX_LINKX_NORM_CREDIT(i32 %284)
  %286 = load i32, i32* %15, align 4
  %287 = call i32 @rvu_write64(%struct.rvu* %282, i32 %283, i32 %285, i32 %286)
  %288 = load %struct.rvu*, %struct.rvu** %5, align 8
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %13, align 4
  %291 = call i32 @NIX_AF_TX_LINKX_EXPR_CREDIT(i32 %290)
  %292 = load i32, i32* %15, align 4
  %293 = call i32 @rvu_write64(%struct.rvu* %288, i32 %289, i32 %291, i32 %292)
  store i32 0, i32* %4, align 4
  br label %294

294:                                              ; preds = %257, %256, %205, %163, %72, %59, %45, %35
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i32 @rvu_get_pf(i64) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i64) #1

declare dso_local %struct.nix_hw* @get_nix_hw(%struct.rvu_hwinfo*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @TXSCH_MAP_FUNC(i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @NIX_AF_SMQX_CFG(i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_pf_cgxmapped(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_cgx_lmac_id(i32, i32*, i32*) #1

declare dso_local i32 @nix_find_link_frs(%struct.rvu*, %struct.nix_frs_cfg*, i64) #1

declare dso_local i32 @NIX_AF_RX_LINKX_CFG(i32) #1

declare dso_local i32 @cgx_get_lmac_cnt(i32) #1

declare dso_local i32 @rvu_cgx_pdata(i32, %struct.rvu*) #1

declare dso_local i32 @NIX_AF_TX_LINKX_NORM_CREDIT(i32) #1

declare dso_local i32 @NIX_AF_TX_LINKX_EXPR_CREDIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
