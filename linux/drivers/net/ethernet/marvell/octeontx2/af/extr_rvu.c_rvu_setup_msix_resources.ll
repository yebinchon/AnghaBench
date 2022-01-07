; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_setup_msix_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_setup_msix_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i64, i32, %struct.rvu_pfvf*, %struct.rvu_pfvf*, %struct.rvu_hwinfo* }
%struct.rvu_pfvf = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.rvu_hwinfo = type { i32 }

@BLKADDR_RVUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RVU_PRIV_CONST = common dso_local global i32 0, align 4
@RVU_AF_MSIXTR_BASE = common dso_local global i32 0, align 4
@PCI_MSIX_ENTRY_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*)* @rvu_setup_msix_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_setup_msix_resources(%struct.rvu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca %struct.rvu_hwinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rvu_pfvf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  %17 = load %struct.rvu*, %struct.rvu** %3, align 8
  %18 = getelementptr inbounds %struct.rvu, %struct.rvu* %17, i32 0, i32 4
  %19 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %18, align 8
  store %struct.rvu_hwinfo* %19, %struct.rvu_hwinfo** %4, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %214, %1
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %23 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %217

26:                                               ; preds = %20
  %27 = load %struct.rvu*, %struct.rvu** %3, align 8
  %28 = load i32, i32* @BLKADDR_RVUM, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @RVU_PRIV_PFX_CFG(i32 %29)
  %31 = call i32 @rvu_read64(%struct.rvu* %27, i32 %28, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = ashr i32 %32, 20
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %214

37:                                               ; preds = %26
  %38 = load %struct.rvu*, %struct.rvu** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @rvu_get_pf_numvfs(%struct.rvu* %38, i32 %39, i32* %7, i32* %8)
  %41 = load %struct.rvu*, %struct.rvu** %3, align 8
  %42 = getelementptr inbounds %struct.rvu, %struct.rvu* %41, i32 0, i32 3
  %43 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %43, i64 %45
  store %struct.rvu_pfvf* %46, %struct.rvu_pfvf** %13, align 8
  %47 = load %struct.rvu*, %struct.rvu** %3, align 8
  %48 = load i32, i32* @BLKADDR_RVUM, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @RVU_PRIV_PFX_MSIX_CFG(i32 %49)
  %51 = call i32 @rvu_read64(%struct.rvu* %47, i32 %48, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = ashr i32 %52, 32
  %54 = and i32 %53, 4095
  %55 = add nsw i32 %54, 1
  %56 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %57 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.rvu*, %struct.rvu** %3, align 8
  %60 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %61 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @rvu_check_min_msix_vec(%struct.rvu* %59, i32 %63, i32 %64, i32 0)
  %66 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %67 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %66, i32 0, i32 0
  %68 = call i32 @rvu_alloc_bitmap(%struct.TYPE_3__* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %37
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %2, align 4
  br label %256

73:                                               ; preds = %37
  %74 = load %struct.rvu*, %struct.rvu** %3, align 8
  %75 = getelementptr inbounds %struct.rvu, %struct.rvu* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %78 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @devm_kcalloc(i32 %76, i32 %80, i32 4, i32 %81)
  %83 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %84 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %86 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %73
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %256

92:                                               ; preds = %73
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %121

96:                                               ; preds = %92
  %97 = load %struct.rvu*, %struct.rvu** %3, align 8
  %98 = load i32, i32* @BLKADDR_RVUM, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @RVU_PRIV_PFX_INT_CFG(i32 %99)
  %101 = call i32 @rvu_read64(%struct.rvu* %97, i32 %98, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = ashr i32 %102, 12
  %104 = and i32 %103, 255
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = and i64 %106, -2048
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %110 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %109, i32 0, i32 0
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @rvu_alloc_rsrc_contig(%struct.TYPE_3__* %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.rvu*, %struct.rvu** %3, align 8
  %114 = load i32, i32* @BLKADDR_RVUM, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @RVU_PRIV_PFX_INT_CFG(i32 %115)
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @rvu_write64(%struct.rvu* %113, i32 %114, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %96, %95
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %210, %121
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %213

126:                                              ; preds = %122
  %127 = load %struct.rvu*, %struct.rvu** %3, align 8
  %128 = getelementptr inbounds %struct.rvu, %struct.rvu* %127, i32 0, i32 2
  %129 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %129, i64 %133
  store %struct.rvu_pfvf* %134, %struct.rvu_pfvf** %13, align 8
  %135 = load %struct.rvu*, %struct.rvu** %3, align 8
  %136 = load i32, i32* @BLKADDR_RVUM, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @RVU_PRIV_PFX_MSIX_CFG(i32 %137)
  %139 = call i32 @rvu_read64(%struct.rvu* %135, i32 %136, i32 %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = and i32 %140, 4095
  %142 = add nsw i32 %141, 1
  %143 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %144 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.rvu*, %struct.rvu** %3, align 8
  %147 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %148 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  %154 = call i32 @rvu_check_min_msix_vec(%struct.rvu* %146, i32 %150, i32 %151, i32 %153)
  %155 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %156 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %155, i32 0, i32 0
  %157 = call i32 @rvu_alloc_bitmap(%struct.TYPE_3__* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %126
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %2, align 4
  br label %256

162:                                              ; preds = %126
  %163 = load %struct.rvu*, %struct.rvu** %3, align 8
  %164 = getelementptr inbounds %struct.rvu, %struct.rvu* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %167 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i8* @devm_kcalloc(i32 %165, i32 %169, i32 4, i32 %170)
  %172 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %173 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %175 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %162
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %2, align 4
  br label %256

181:                                              ; preds = %162
  %182 = load %struct.rvu*, %struct.rvu** %3, align 8
  %183 = load i32, i32* @BLKADDR_RVUM, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %184, %185
  %187 = call i32 @RVU_PRIV_HWVFX_INT_CFG(i32 %186)
  %188 = call i32 @rvu_read64(%struct.rvu* %182, i32 %183, i32 %187)
  store i32 %188, i32* %14, align 4
  %189 = load i32, i32* %14, align 4
  %190 = ashr i32 %189, 12
  %191 = and i32 %190, 255
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = and i64 %193, -2048
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %14, align 4
  %196 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %13, align 8
  %197 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %196, i32 0, i32 0
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @rvu_alloc_rsrc_contig(%struct.TYPE_3__* %197, i32 %198)
  store i32 %199, i32* %11, align 4
  %200 = load %struct.rvu*, %struct.rvu** %3, align 8
  %201 = load i32, i32* @BLKADDR_RVUM, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %202, %203
  %205 = call i32 @RVU_PRIV_HWVFX_INT_CFG(i32 %204)
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %11, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @rvu_write64(%struct.rvu* %200, i32 %201, i32 %205, i32 %208)
  br label %210

210:                                              ; preds = %181
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %122

213:                                              ; preds = %122
  br label %214

214:                                              ; preds = %213, %36
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  br label %20

217:                                              ; preds = %20
  %218 = load %struct.rvu*, %struct.rvu** %3, align 8
  %219 = load i32, i32* @BLKADDR_RVUM, align 4
  %220 = load i32, i32* @RVU_PRIV_CONST, align 4
  %221 = call i32 @rvu_read64(%struct.rvu* %218, i32 %219, i32 %220)
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %14, align 4
  %223 = and i32 %222, 1048575
  store i32 %223, i32* %12, align 4
  %224 = load %struct.rvu*, %struct.rvu** %3, align 8
  %225 = load i32, i32* @BLKADDR_RVUM, align 4
  %226 = load i32, i32* @RVU_AF_MSIXTR_BASE, align 4
  %227 = call i32 @rvu_read64(%struct.rvu* %224, i32 %225, i32 %226)
  store i32 %227, i32* %15, align 4
  %228 = load %struct.rvu*, %struct.rvu** %3, align 8
  %229 = getelementptr inbounds %struct.rvu, %struct.rvu* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @PCI_MSIX_ENTRY_SIZE, align 4
  %234 = mul nsw i32 %232, %233
  %235 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %236 = call i64 @dma_map_resource(i32 %230, i32 %231, i32 %234, i32 %235, i32 0)
  store i64 %236, i64* %16, align 8
  %237 = load %struct.rvu*, %struct.rvu** %3, align 8
  %238 = getelementptr inbounds %struct.rvu, %struct.rvu* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i64, i64* %16, align 8
  %241 = call i64 @dma_mapping_error(i32 %239, i64 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %217
  %244 = load i32, i32* @ENOMEM, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %2, align 4
  br label %256

246:                                              ; preds = %217
  %247 = load %struct.rvu*, %struct.rvu** %3, align 8
  %248 = load i32, i32* @BLKADDR_RVUM, align 4
  %249 = load i32, i32* @RVU_AF_MSIXTR_BASE, align 4
  %250 = load i64, i64* %16, align 8
  %251 = trunc i64 %250 to i32
  %252 = call i32 @rvu_write64(%struct.rvu* %247, i32 %248, i32 %249, i32 %251)
  %253 = load i64, i64* %16, align 8
  %254 = load %struct.rvu*, %struct.rvu** %3, align 8
  %255 = getelementptr inbounds %struct.rvu, %struct.rvu* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  store i32 0, i32* %2, align 4
  br label %256

256:                                              ; preds = %246, %243, %178, %160, %89, %71
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @RVU_PRIV_PFX_CFG(i32) #1

declare dso_local i32 @rvu_get_pf_numvfs(%struct.rvu*, i32, i32*, i32*) #1

declare dso_local i32 @RVU_PRIV_PFX_MSIX_CFG(i32) #1

declare dso_local i32 @rvu_check_min_msix_vec(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @rvu_alloc_bitmap(%struct.TYPE_3__*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @RVU_PRIV_PFX_INT_CFG(i32) #1

declare dso_local i32 @rvu_alloc_rsrc_contig(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @RVU_PRIV_HWVFX_INT_CFG(i32) #1

declare dso_local i64 @dma_map_resource(i32, i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
