; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npa.c_rvu_mbox_handler_npa_lf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npa.c_rvu_mbox_handler_npa_lf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i32 }
%struct.npa_lf_alloc_req = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.npa_lf_alloc_rsp = type { i32, i32, i32 }
%struct.rvu_pfvf = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i8*, %struct.TYPE_4__*, i8*, i32 }
%struct.TYPE_4__ = type { i64 }

@NPA_AURA_SZ_MAX = common dso_local global i32 0, align 4
@NPA_AURA_SZ_0 = common dso_local global i32 0, align 4
@NPA_AF_ERR_PARAM = common dso_local global i32 0, align 4
@BLKTYPE_NPA = common dso_local global i32 0, align 4
@NPA_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to reset NPALF%d\0A\00", align 1
@NPA_AF_ERR_LF_RESET = common dso_local global i32 0, align 4
@NPA_AF_CONST1 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NPA_AF_CONST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_npa_lf_alloc(%struct.rvu* %0, %struct.npa_lf_alloc_req* %1, %struct.npa_lf_alloc_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.npa_lf_alloc_req*, align 8
  %7 = alloca %struct.npa_lf_alloc_rsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rvu_hwinfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rvu_block*, align 8
  %16 = alloca %struct.rvu_pfvf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.npa_lf_alloc_req* %1, %struct.npa_lf_alloc_req** %6, align 8
  store %struct.npa_lf_alloc_rsp* %2, %struct.npa_lf_alloc_rsp** %7, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = getelementptr inbounds %struct.rvu, %struct.rvu* %20, i32 0, i32 1
  %22 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %21, align 8
  store %struct.rvu_hwinfo* %22, %struct.rvu_hwinfo** %13, align 8
  %23 = load %struct.npa_lf_alloc_req*, %struct.npa_lf_alloc_req** %6, align 8
  %24 = getelementptr inbounds %struct.npa_lf_alloc_req, %struct.npa_lf_alloc_req* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.npa_lf_alloc_req*, %struct.npa_lf_alloc_req** %6, align 8
  %28 = getelementptr inbounds %struct.npa_lf_alloc_req, %struct.npa_lf_alloc_req* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NPA_AURA_SZ_MAX, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %3
  %33 = load %struct.npa_lf_alloc_req*, %struct.npa_lf_alloc_req** %6, align 8
  %34 = getelementptr inbounds %struct.npa_lf_alloc_req, %struct.npa_lf_alloc_req* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NPA_AURA_SZ_0, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.npa_lf_alloc_req*, %struct.npa_lf_alloc_req** %6, align 8
  %40 = getelementptr inbounds %struct.npa_lf_alloc_req, %struct.npa_lf_alloc_req* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38, %32, %3
  %44 = load i32, i32* @NPA_AF_ERR_PARAM, align 4
  store i32 %44, i32* %4, align 4
  br label %267

45:                                               ; preds = %38
  %46 = load %struct.rvu*, %struct.rvu** %5, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %46, i32 %47)
  store %struct.rvu_pfvf* %48, %struct.rvu_pfvf** %16, align 8
  %49 = load %struct.rvu*, %struct.rvu** %5, align 8
  %50 = load i32, i32* @BLKTYPE_NPA, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @rvu_get_blkaddr(%struct.rvu* %49, i32 %50, i32 %51)
  store i32 %52, i32* %19, align 4
  %53 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %54 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* %19, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %45
  %61 = load i32, i32* @NPA_AF_ERR_AF_LF_INVALID, align 4
  store i32 %61, i32* %4, align 4
  br label %267

62:                                               ; preds = %57
  %63 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %13, align 8
  %64 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %63, i32 0, i32 0
  %65 = load %struct.rvu_block*, %struct.rvu_block** %64, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %65, i64 %67
  store %struct.rvu_block* %68, %struct.rvu_block** %15, align 8
  %69 = load %struct.rvu*, %struct.rvu** %5, align 8
  %70 = load %struct.rvu_block*, %struct.rvu_block** %15, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @rvu_get_lf(%struct.rvu* %69, %struct.rvu_block* %70, i32 %71, i32 0)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* @NPA_AF_ERR_AF_LF_INVALID, align 4
  store i32 %76, i32* %4, align 4
  br label %267

77:                                               ; preds = %62
  %78 = load %struct.rvu*, %struct.rvu** %5, align 8
  %79 = load %struct.rvu_block*, %struct.rvu_block** %15, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @rvu_lf_reset(%struct.rvu* %78, %struct.rvu_block* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.rvu*, %struct.rvu** %5, align 8
  %86 = getelementptr inbounds %struct.rvu, %struct.rvu* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @NPA_AF_ERR_LF_RESET, align 4
  store i32 %90, i32* %4, align 4
  br label %267

91:                                               ; preds = %77
  %92 = load %struct.rvu*, %struct.rvu** %5, align 8
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* @NPA_AF_CONST1, align 4
  %95 = call i32 @rvu_read64(%struct.rvu* %92, i32 %93, i32 %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = and i32 %96, 15
  %98 = zext i32 %97 to i64
  %99 = shl i64 1, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %10, align 4
  %101 = load %struct.rvu*, %struct.rvu** %5, align 8
  %102 = getelementptr inbounds %struct.rvu, %struct.rvu* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %105 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %104, i32 0, i32 1
  %106 = load %struct.npa_lf_alloc_req*, %struct.npa_lf_alloc_req** %6, align 8
  %107 = getelementptr inbounds %struct.npa_lf_alloc_req, %struct.npa_lf_alloc_req* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @NPA_AURA_COUNT(i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @qmem_alloc(i32 %103, %struct.TYPE_4__** %105, i32 %109, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %91
  br label %241

115:                                              ; preds = %91
  %116 = load %struct.npa_lf_alloc_req*, %struct.npa_lf_alloc_req** %6, align 8
  %117 = getelementptr inbounds %struct.npa_lf_alloc_req, %struct.npa_lf_alloc_req* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @NPA_AURA_COUNT(i32 %118)
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @kcalloc(i32 %119, i32 8, i32 %120)
  %122 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %123 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  %124 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %125 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %115
  br label %241

129:                                              ; preds = %115
  %130 = load i32, i32* %18, align 4
  %131 = ashr i32 %130, 4
  %132 = and i32 %131, 15
  %133 = zext i32 %132 to i64
  %134 = shl i64 1, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %10, align 4
  %136 = load %struct.rvu*, %struct.rvu** %5, align 8
  %137 = getelementptr inbounds %struct.rvu, %struct.rvu* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %140 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %139, i32 0, i32 3
  %141 = load %struct.npa_lf_alloc_req*, %struct.npa_lf_alloc_req** %6, align 8
  %142 = getelementptr inbounds %struct.npa_lf_alloc_req, %struct.npa_lf_alloc_req* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @qmem_alloc(i32 %138, %struct.TYPE_4__** %140, i32 %143, i32 %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %129
  br label %241

149:                                              ; preds = %129
  %150 = load %struct.npa_lf_alloc_req*, %struct.npa_lf_alloc_req** %6, align 8
  %151 = getelementptr inbounds %struct.npa_lf_alloc_req, %struct.npa_lf_alloc_req* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @NPA_AURA_COUNT(i32 %152)
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call i8* @kcalloc(i32 %153, i32 8, i32 %154)
  %156 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %157 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %159 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %149
  br label %241

163:                                              ; preds = %149
  %164 = load %struct.rvu*, %struct.rvu** %5, align 8
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* @NPA_AF_CONST, align 4
  %167 = call i32 @rvu_read64(%struct.rvu* %164, i32 %165, i32 %166)
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = ashr i32 %168, 28
  %170 = and i32 %169, 4095
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %18, align 4
  %172 = ashr i32 %171, 8
  %173 = and i32 %172, 15
  %174 = zext i32 %173 to i64
  %175 = shl i64 1, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %10, align 4
  %177 = load %struct.rvu*, %struct.rvu** %5, align 8
  %178 = getelementptr inbounds %struct.rvu, %struct.rvu* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %181 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %180, i32 0, i32 0
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @qmem_alloc(i32 %179, %struct.TYPE_4__** %181, i32 %182, i32 %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %163
  br label %241

188:                                              ; preds = %163
  %189 = load %struct.rvu*, %struct.rvu** %5, align 8
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @NPA_AF_LFX_AURAS_CFG(i32 %191)
  %193 = call i32 @rvu_read64(%struct.rvu* %189, i32 %190, i32 %192)
  store i32 %193, i32* %17, align 4
  %194 = call i32 @BIT_ULL(i32 34)
  %195 = sub nsw i32 %194, 1
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %17, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %17, align 4
  %199 = load %struct.npa_lf_alloc_req*, %struct.npa_lf_alloc_req** %6, align 8
  %200 = getelementptr inbounds %struct.npa_lf_alloc_req, %struct.npa_lf_alloc_req* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = shl i32 %201, 16
  %203 = call i32 @BIT_ULL(i32 34)
  %204 = or i32 %202, %203
  %205 = load i32, i32* %17, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %17, align 4
  %207 = load %struct.rvu*, %struct.rvu** %5, align 8
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @NPA_AF_LFX_AURAS_CFG(i32 %209)
  %211 = load i32, i32* %17, align 4
  %212 = call i32 @rvu_write64(%struct.rvu* %207, i32 %208, i32 %210, i32 %211)
  %213 = load %struct.rvu*, %struct.rvu** %5, align 8
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @NPA_AF_LFX_LOC_AURAS_BASE(i32 %215)
  %217 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %218 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %217, i32 0, i32 1
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32 @rvu_write64(%struct.rvu* %213, i32 %214, i32 %216, i32 %222)
  %224 = load %struct.rvu*, %struct.rvu** %5, align 8
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @NPA_AF_LFX_QINTS_CFG(i32 %226)
  %228 = call i32 @BIT_ULL(i32 36)
  %229 = call i32 @rvu_write64(%struct.rvu* %224, i32 %225, i32 %227, i32 %228)
  %230 = load %struct.rvu*, %struct.rvu** %5, align 8
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @NPA_AF_LFX_QINTS_BASE(i32 %232)
  %234 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %235 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %234, i32 0, i32 0
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = trunc i64 %238 to i32
  %240 = call i32 @rvu_write64(%struct.rvu* %230, i32 %231, i32 %233, i32 %239)
  br label %247

241:                                              ; preds = %187, %162, %148, %128, %114
  %242 = load %struct.rvu*, %struct.rvu** %5, align 8
  %243 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %16, align 8
  %244 = call i32 @npa_ctx_free(%struct.rvu* %242, %struct.rvu_pfvf* %243)
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %12, align 4
  br label %247

247:                                              ; preds = %241, %188
  %248 = load %struct.rvu*, %struct.rvu** %5, align 8
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* @NPA_AF_CONST, align 4
  %251 = call i32 @rvu_read64(%struct.rvu* %248, i32 %249, i32 %250)
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %17, align 4
  %253 = ashr i32 %252, 8
  %254 = and i32 %253, 255
  %255 = load %struct.npa_lf_alloc_rsp*, %struct.npa_lf_alloc_rsp** %7, align 8
  %256 = getelementptr inbounds %struct.npa_lf_alloc_rsp, %struct.npa_lf_alloc_rsp* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 4
  %257 = load i32, i32* %17, align 4
  %258 = and i32 %257, 255
  %259 = load %struct.npa_lf_alloc_rsp*, %struct.npa_lf_alloc_rsp** %7, align 8
  %260 = getelementptr inbounds %struct.npa_lf_alloc_rsp, %struct.npa_lf_alloc_rsp* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* %17, align 4
  %262 = ashr i32 %261, 28
  %263 = and i32 %262, 4095
  %264 = load %struct.npa_lf_alloc_rsp*, %struct.npa_lf_alloc_rsp** %7, align 8
  %265 = getelementptr inbounds %struct.npa_lf_alloc_rsp, %struct.npa_lf_alloc_rsp* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %12, align 4
  store i32 %266, i32* %4, align 4
  br label %267

267:                                              ; preds = %247, %84, %75, %60, %43
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, %struct.rvu_block*, i32, i32) #1

declare dso_local i32 @rvu_lf_reset(%struct.rvu*, %struct.rvu_block*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @qmem_alloc(i32, %struct.TYPE_4__**, i32, i32) #1

declare dso_local i32 @NPA_AURA_COUNT(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @NPA_AF_LFX_AURAS_CFG(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NPA_AF_LFX_LOC_AURAS_BASE(i32) #1

declare dso_local i32 @NPA_AF_LFX_QINTS_CFG(i32) #1

declare dso_local i32 @NPA_AF_LFX_QINTS_BASE(i32) #1

declare dso_local i32 @npa_ctx_free(%struct.rvu*, %struct.rvu_pfvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
