; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_txsch_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_txsch_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32 }
%struct.nix_txsch_alloc_req = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nix_txsch_alloc_rsp = type { i32*, i32*, i64**, i64** }
%struct.nix_txsch = type { i32, i32* }
%struct.rvu_pfvf = type { i32 }
%struct.nix_hw = type { %struct.nix_txsch* }

@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_CNT = common dso_local global i32 0, align 4
@NIX_TXSCH_LVL_TL1 = common dso_local global i32 0, align 4
@MAX_TXSCHQ_PER_FUNC = common dso_local global i32 0, align 4
@NIX_AF_ERR_TLX_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_txsch_alloc(%struct.rvu* %0, %struct.nix_txsch_alloc_req* %1, %struct.nix_txsch_alloc_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_txsch_alloc_req*, align 8
  %7 = alloca %struct.nix_txsch_alloc_rsp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nix_txsch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rvu_pfvf*, align 8
  %14 = alloca %struct.nix_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_txsch_alloc_req* %1, %struct.nix_txsch_alloc_req** %6, align 8
  store %struct.nix_txsch_alloc_rsp* %2, %struct.nix_txsch_alloc_rsp** %7, align 8
  %19 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %20 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.rvu*, %struct.rvu** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %23, i64 %24)
  store %struct.rvu_pfvf* %25, %struct.rvu_pfvf** %13, align 8
  %26 = load %struct.rvu*, %struct.rvu** %5, align 8
  %27 = load i32, i32* @BLKTYPE_NIX, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @rvu_get_blkaddr(%struct.rvu* %26, i32 %27, i64 %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %31 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %3
  %38 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %38, i32* %4, align 4
  br label %361

39:                                               ; preds = %34
  %40 = load %struct.rvu*, %struct.rvu** %5, align 8
  %41 = getelementptr inbounds %struct.rvu, %struct.rvu* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call %struct.nix_hw* @get_nix_hw(i32 %42, i32 %43)
  store %struct.nix_hw* %44, %struct.nix_hw** %14, align 8
  %45 = load %struct.nix_hw*, %struct.nix_hw** %14, align 8
  %46 = icmp ne %struct.nix_hw* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %361

50:                                               ; preds = %39
  %51 = load %struct.rvu*, %struct.rvu** %5, align 8
  %52 = getelementptr inbounds %struct.rvu, %struct.rvu* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %151, %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @NIX_TXSCH_LVL_CNT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %154

58:                                               ; preds = %54
  %59 = load %struct.nix_hw*, %struct.nix_hw** %14, align 8
  %60 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %59, i32 0, i32 0
  %61 = load %struct.nix_txsch*, %struct.nix_txsch** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %61, i64 %63
  store %struct.nix_txsch* %64, %struct.nix_txsch** %9, align 8
  %65 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %66 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %73 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %71, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.nix_txsch*, %struct.nix_txsch** %9, align 8
  %81 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %17, align 8
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %58
  br label %151

86:                                               ; preds = %58
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @NIX_TXSCH_LVL_TL1, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %92 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %90
  %100 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %101 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 2
  br i1 %107, label %114, label %108

108:                                              ; preds = %99
  %109 = load %struct.rvu*, %struct.rvu** %5, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i64, i64* %8, align 8
  %112 = call i64 @rvu_get_tl1_schqs(%struct.rvu* %109, i32 %110, i64 %111, i64* null, i32* null)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %99, %90
  br label %354

115:                                              ; preds = %108
  br label %151

116:                                              ; preds = %86
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @MAX_TXSCHQ_PER_FUNC, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %354

121:                                              ; preds = %116
  %122 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %123 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %121
  %131 = load %struct.nix_txsch*, %struct.nix_txsch** %9, align 8
  %132 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %131, i32 0, i32 0
  %133 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %134 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @rvu_rsrc_check_contig(i32* %132, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %130
  br label %354

143:                                              ; preds = %130, %121
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.nix_txsch*, %struct.nix_txsch** %9, align 8
  %146 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %145, i32 0, i32 0
  %147 = call i32 @rvu_rsrc_free_count(i32* %146)
  %148 = icmp sge i32 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %354

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %115, %85
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %54

154:                                              ; preds = %54
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %350, %154
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @NIX_TXSCH_LVL_CNT, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %353

159:                                              ; preds = %155
  %160 = load %struct.nix_hw*, %struct.nix_hw** %14, align 8
  %161 = getelementptr inbounds %struct.nix_hw, %struct.nix_hw* %160, i32 0, i32 0
  %162 = load %struct.nix_txsch*, %struct.nix_txsch** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %162, i64 %164
  store %struct.nix_txsch* %165, %struct.nix_txsch** %9, align 8
  %166 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %167 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.nix_txsch_alloc_rsp*, %struct.nix_txsch_alloc_rsp** %7, align 8
  %174 = getelementptr inbounds %struct.nix_txsch_alloc_rsp, %struct.nix_txsch_alloc_rsp* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  %179 = load %struct.nix_txsch*, %struct.nix_txsch** %9, align 8
  %180 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  store i32* %181, i32** %17, align 8
  %182 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %183 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.nix_txsch_alloc_rsp*, %struct.nix_txsch_alloc_rsp** %7, align 8
  %190 = getelementptr inbounds %struct.nix_txsch_alloc_rsp, %struct.nix_txsch_alloc_rsp* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  %195 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %196 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %159
  %204 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %205 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %203
  br label %350

213:                                              ; preds = %203, %159
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @NIX_TXSCH_LVL_TL1, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %242

217:                                              ; preds = %213
  %218 = load %struct.nix_txsch_alloc_rsp*, %struct.nix_txsch_alloc_rsp** %7, align 8
  %219 = getelementptr inbounds %struct.nix_txsch_alloc_rsp, %struct.nix_txsch_alloc_rsp* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 0, i32* %223, align 4
  %224 = load %struct.rvu*, %struct.rvu** %5, align 8
  %225 = load i32, i32* %15, align 4
  %226 = load i64, i64* %8, align 8
  %227 = load %struct.nix_txsch_alloc_rsp*, %struct.nix_txsch_alloc_rsp** %7, align 8
  %228 = getelementptr inbounds %struct.nix_txsch_alloc_rsp, %struct.nix_txsch_alloc_rsp* %227, i32 0, i32 2
  %229 = load i64**, i64*** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64*, i64** %229, i64 %231
  %233 = load i64*, i64** %232, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 0
  %235 = load %struct.nix_txsch_alloc_rsp*, %struct.nix_txsch_alloc_rsp** %7, align 8
  %236 = getelementptr inbounds %struct.nix_txsch_alloc_rsp, %struct.nix_txsch_alloc_rsp* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = call i64 @rvu_get_tl1_schqs(%struct.rvu* %224, i32 %225, i64 %226, i64* %234, i32* %240)
  br label %350

242:                                              ; preds = %213
  %243 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %244 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %305

251:                                              ; preds = %242
  %252 = load %struct.nix_txsch*, %struct.nix_txsch** %9, align 8
  %253 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %252, i32 0, i32 0
  %254 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %255 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @rvu_alloc_rsrc_contig(i32* %253, i32 %260)
  store i64 %261, i64* %18, align 8
  store i32 0, i32* %11, align 4
  br label %262

262:                                              ; preds = %301, %251
  %263 = load i32, i32* %11, align 4
  %264 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %265 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %263, %270
  br i1 %271, label %272, label %304

272:                                              ; preds = %262
  %273 = load i64, i64* %8, align 8
  %274 = call i32 @TXSCH_MAP(i64 %273, i32 0)
  %275 = load i32*, i32** %17, align 8
  %276 = load i64, i64* %18, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32 %274, i32* %277, align 4
  %278 = load %struct.rvu*, %struct.rvu** %5, align 8
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* %10, align 4
  %281 = load i64, i64* %18, align 8
  %282 = call i32 @nix_reset_tx_linkcfg(%struct.rvu* %278, i32 %279, i32 %280, i64 %281)
  %283 = load %struct.rvu*, %struct.rvu** %5, align 8
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* %10, align 4
  %286 = load i64, i64* %18, align 8
  %287 = call i32 @nix_reset_tx_shaping(%struct.rvu* %283, i32 %284, i32 %285, i64 %286)
  %288 = load i64, i64* %18, align 8
  %289 = load %struct.nix_txsch_alloc_rsp*, %struct.nix_txsch_alloc_rsp** %7, align 8
  %290 = getelementptr inbounds %struct.nix_txsch_alloc_rsp, %struct.nix_txsch_alloc_rsp* %289, i32 0, i32 3
  %291 = load i64**, i64*** %290, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64*, i64** %291, i64 %293
  %295 = load i64*, i64** %294, align 8
  %296 = load i32, i32* %11, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  store i64 %288, i64* %298, align 8
  %299 = load i64, i64* %18, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %18, align 8
  br label %301

301:                                              ; preds = %272
  %302 = load i32, i32* %11, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %11, align 4
  br label %262

304:                                              ; preds = %262
  br label %305

305:                                              ; preds = %304, %242
  store i32 0, i32* %11, align 4
  br label %306

306:                                              ; preds = %346, %305
  %307 = load i32, i32* %11, align 4
  %308 = load %struct.nix_txsch_alloc_req*, %struct.nix_txsch_alloc_req** %6, align 8
  %309 = getelementptr inbounds %struct.nix_txsch_alloc_req, %struct.nix_txsch_alloc_req* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %10, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = icmp slt i32 %307, %314
  br i1 %315, label %316, label %349

316:                                              ; preds = %306
  %317 = load %struct.nix_txsch*, %struct.nix_txsch** %9, align 8
  %318 = getelementptr inbounds %struct.nix_txsch, %struct.nix_txsch* %317, i32 0, i32 0
  %319 = call i64 @rvu_alloc_rsrc(i32* %318)
  store i64 %319, i64* %18, align 8
  %320 = load i64, i64* %8, align 8
  %321 = call i32 @TXSCH_MAP(i64 %320, i32 0)
  %322 = load i32*, i32** %17, align 8
  %323 = load i64, i64* %18, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32 %321, i32* %324, align 4
  %325 = load %struct.rvu*, %struct.rvu** %5, align 8
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* %10, align 4
  %328 = load i64, i64* %18, align 8
  %329 = call i32 @nix_reset_tx_linkcfg(%struct.rvu* %325, i32 %326, i32 %327, i64 %328)
  %330 = load %struct.rvu*, %struct.rvu** %5, align 8
  %331 = load i32, i32* %15, align 4
  %332 = load i32, i32* %10, align 4
  %333 = load i64, i64* %18, align 8
  %334 = call i32 @nix_reset_tx_shaping(%struct.rvu* %330, i32 %331, i32 %332, i64 %333)
  %335 = load i64, i64* %18, align 8
  %336 = load %struct.nix_txsch_alloc_rsp*, %struct.nix_txsch_alloc_rsp** %7, align 8
  %337 = getelementptr inbounds %struct.nix_txsch_alloc_rsp, %struct.nix_txsch_alloc_rsp* %336, i32 0, i32 2
  %338 = load i64**, i64*** %337, align 8
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64*, i64** %338, i64 %340
  %342 = load i64*, i64** %341, align 8
  %343 = load i32, i32* %11, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %342, i64 %344
  store i64 %335, i64* %345, align 8
  br label %346

346:                                              ; preds = %316
  %347 = load i32, i32* %11, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %11, align 4
  br label %306

349:                                              ; preds = %306
  br label %350

350:                                              ; preds = %349, %217, %212
  %351 = load i32, i32* %10, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %10, align 4
  br label %155

353:                                              ; preds = %155
  br label %356

354:                                              ; preds = %149, %142, %120, %114
  %355 = load i32, i32* @NIX_AF_ERR_TLX_ALLOC_FAIL, align 4
  store i32 %355, i32* %16, align 4
  br label %356

356:                                              ; preds = %354, %353
  %357 = load %struct.rvu*, %struct.rvu** %5, align 8
  %358 = getelementptr inbounds %struct.rvu, %struct.rvu* %357, i32 0, i32 0
  %359 = call i32 @mutex_unlock(i32* %358)
  %360 = load i32, i32* %16, align 4
  store i32 %360, i32* %4, align 4
  br label %361

361:                                              ; preds = %356, %47, %37
  %362 = load i32, i32* %4, align 4
  ret i32 %362
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i64) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i64) #1

declare dso_local %struct.nix_hw* @get_nix_hw(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rvu_get_tl1_schqs(%struct.rvu*, i32, i64, i64*, i32*) #1

declare dso_local i32 @rvu_rsrc_check_contig(i32*, i32) #1

declare dso_local i32 @rvu_rsrc_free_count(i32*) #1

declare dso_local i64 @rvu_alloc_rsrc_contig(i32*, i32) #1

declare dso_local i32 @TXSCH_MAP(i64, i32) #1

declare dso_local i32 @nix_reset_tx_linkcfg(%struct.rvu*, i32, i32, i64) #1

declare dso_local i32 @nix_reset_tx_shaping(%struct.rvu*, i32, i32, i64) #1

declare dso_local i64 @rvu_alloc_rsrc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
