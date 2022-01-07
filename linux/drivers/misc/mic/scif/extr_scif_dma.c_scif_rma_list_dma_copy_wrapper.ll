; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_rma_list_dma_copy_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_rma_list_dma_copy_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i32 }
%struct.scif_copy_work = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.scif_dma_comp_cb*, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.scif_dma_comp_cb = type { i32, i32, i32, %struct.scif_dma_comp_cb*, i32, i32, %struct.scif_dma_comp_cb*, i32, i32, i32*, %struct.scif_dma_comp_cb* }
%struct.dma_chan = type { i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@SCIF_WINDOW_SELF = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@scif_rma_completion_cb = common dso_local global i32 0, align 4
@SCIF_KMEM_UNALIGNED_BUF_SIZE = common dso_local global i64 0, align 8
@unaligned_cache = common dso_local global i32 0, align 4
@SCIF_DMA_INTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scif_endpt*, %struct.scif_copy_work*, %struct.dma_chan*, i32)* @scif_rma_list_dma_copy_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_rma_list_dma_copy_wrapper(%struct.scif_endpt* %0, %struct.scif_copy_work* %1, %struct.dma_chan* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scif_endpt*, align 8
  %7 = alloca %struct.scif_copy_work*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scif_dma_comp_cb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.scif_dma_comp_cb*, align 8
  %17 = alloca i32, align 4
  store %struct.scif_endpt* %0, %struct.scif_endpt** %6, align 8
  store %struct.scif_copy_work* %1, %struct.scif_copy_work** %7, align 8
  store %struct.dma_chan* %2, %struct.dma_chan** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %19 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %22 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  store %struct.scif_dma_comp_cb* null, %struct.scif_dma_comp_cb** %14, align 8
  store i32 1, i32* %15, align 4
  %24 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %25 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @is_dma_copy_aligned(i32 %26, i32 1, i32 1, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %31 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %32 = call i32 @_scif_rma_list_dma_copy_aligned(%struct.scif_copy_work* %30, %struct.dma_chan* %31)
  store i32 %32, i32* %5, align 4
  br label %243

33:                                               ; preds = %4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @L1_CACHE_BYTES, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @L1_CACHE_BYTES, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %47 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %48 = call i32 @scif_rma_list_dma_copy_aligned(%struct.scif_copy_work* %46, %struct.dma_chan* %47)
  store i32 %48, i32* %5, align 4
  br label %243

49:                                               ; preds = %33
  %50 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %51 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %56 = call i32 @scif_rma_list_cpu_copy(%struct.scif_copy_work* %55)
  store i32 %56, i32* %5, align 4
  br label %243

57:                                               ; preds = %49
  %58 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %59 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %58, i32 0, i32 6
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SCIF_WINDOW_SELF, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.scif_dma_comp_cb* @kzalloc(i32 64, i32 %66)
  store %struct.scif_dma_comp_cb* %67, %struct.scif_dma_comp_cb** %16, align 8
  %68 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %69 = icmp ne %struct.scif_dma_comp_cb* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %57
  br label %240

71:                                               ; preds = %57
  %72 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %73 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %74 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %73, i32 0, i32 7
  store %struct.scif_dma_comp_cb* %72, %struct.scif_dma_comp_cb** %74, align 8
  %75 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %76 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %77 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %76, i32 0, i32 10
  store %struct.scif_dma_comp_cb* %75, %struct.scif_dma_comp_cb** %77, align 8
  %78 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %79 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %78, i32 0, i32 9
  store i32* @scif_rma_completion_cb, i32** %79, align 8
  %80 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %81 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @L1_CACHE_BYTES, align 4
  %84 = shl i32 %83, 1
  %85 = add nsw i32 %82, %84
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @SCIF_KMEM_UNALIGNED_BUF_SIZE, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %71
  %90 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %91 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %93 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @L1_CACHE_BYTES, align 4
  %96 = shl i32 %95, 1
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.scif_dma_comp_cb* @kmalloc(i32 %97, i32 %98)
  store %struct.scif_dma_comp_cb* %99, %struct.scif_dma_comp_cb** %14, align 8
  %100 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %101 = icmp ne %struct.scif_dma_comp_cb* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %89
  br label %237

103:                                              ; preds = %89
  %104 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %105 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %106 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %105, i32 0, i32 3
  store %struct.scif_dma_comp_cb* %104, %struct.scif_dma_comp_cb** %106, align 8
  %107 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %108 = ptrtoint %struct.scif_dma_comp_cb* %107 to i32
  %109 = load i32, i32* @L1_CACHE_BYTES, align 4
  %110 = call i32 @IS_ALIGNED(i32 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %103
  %113 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %114 = load i32, i32* @L1_CACHE_BYTES, align 4
  %115 = call %struct.scif_dma_comp_cb* @PTR_ALIGN(%struct.scif_dma_comp_cb* %113, i32 %114)
  store %struct.scif_dma_comp_cb* %115, %struct.scif_dma_comp_cb** %14, align 8
  br label %116

116:                                              ; preds = %112, %103
  br label %130

117:                                              ; preds = %71
  %118 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %119 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* @unaligned_cache, align 4
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call %struct.scif_dma_comp_cb* @kmem_cache_alloc(i32 %120, i32 %121)
  store %struct.scif_dma_comp_cb* %122, %struct.scif_dma_comp_cb** %14, align 8
  %123 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %124 = icmp ne %struct.scif_dma_comp_cb* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  br label %237

126:                                              ; preds = %117
  %127 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %128 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %129 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %128, i32 0, i32 3
  store %struct.scif_dma_comp_cb* %127, %struct.scif_dma_comp_cb** %129, align 8
  br label %130

130:                                              ; preds = %126, %116
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %135, i64 %136
  store %struct.scif_dma_comp_cb* %137, %struct.scif_dma_comp_cb** %14, align 8
  %138 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %139 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %142 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %141, i32 0, i32 6
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %145 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %146 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @scif_rma_local_cpu_copy(i32 %140, %struct.TYPE_2__* %143, %struct.scif_dma_comp_cb* %144, i32 %147, i32 1)
  br label %184

149:                                              ; preds = %130
  %150 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %151 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %154 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %153, i32 0, i32 8
  store i32 %152, i32* %154, align 4
  %155 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %156 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %159 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %161 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %166 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %168 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %171 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 8
  %172 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %173 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* @L1_CACHE_BYTES, align 4
  %178 = call i32 @ALIGN(i32 %176, i32 %177)
  %179 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %180 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %183 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %149, %133
  %185 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %186 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %187 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %186, i32 0, i32 6
  store %struct.scif_dma_comp_cb* %185, %struct.scif_dma_comp_cb** %187, align 8
  %188 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %189 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %188, i32 0, i32 5
  %190 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %191 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %192 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* @SCIF_KMEM_UNALIGNED_BUF_SIZE, align 8
  %195 = call i32 @scif_map_single(i32* %189, %struct.scif_dma_comp_cb* %190, i32 %193, i64 %194)
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %184
  br label %220

199:                                              ; preds = %184
  %200 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %201 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %204 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %206 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %14, align 8
  %207 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %208 = load i32, i32* %15, align 4
  %209 = call i64 @scif_rma_list_dma_copy_unaligned(%struct.scif_copy_work* %205, %struct.scif_dma_comp_cb* %206, %struct.dma_chan* %207, i32 %208)
  %210 = icmp slt i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %199
  br label %220

212:                                              ; preds = %199
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* @SCIF_DMA_INTR, align 4
  %217 = load %struct.scif_copy_work*, %struct.scif_copy_work** %7, align 8
  %218 = getelementptr inbounds %struct.scif_copy_work, %struct.scif_copy_work* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %215, %212
  store i32 0, i32* %5, align 4
  br label %243

220:                                              ; preds = %211, %198
  %221 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %222 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i32, i32* @unaligned_cache, align 4
  %227 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %228 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %227, i32 0, i32 3
  %229 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %228, align 8
  %230 = call i32 @kmem_cache_free(i32 %226, %struct.scif_dma_comp_cb* %229)
  br label %236

231:                                              ; preds = %220
  %232 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %233 = getelementptr inbounds %struct.scif_dma_comp_cb, %struct.scif_dma_comp_cb* %232, i32 0, i32 3
  %234 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %233, align 8
  %235 = call i32 @kfree(%struct.scif_dma_comp_cb* %234)
  br label %236

236:                                              ; preds = %231, %225
  br label %237

237:                                              ; preds = %236, %125, %102
  %238 = load %struct.scif_dma_comp_cb*, %struct.scif_dma_comp_cb** %16, align 8
  %239 = call i32 @kfree(%struct.scif_dma_comp_cb* %238)
  br label %240

240:                                              ; preds = %237, %70
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %240, %219, %54, %45, %29
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i64 @is_dma_copy_aligned(i32, i32, i32, i32) #1

declare dso_local i32 @_scif_rma_list_dma_copy_aligned(%struct.scif_copy_work*, %struct.dma_chan*) #1

declare dso_local i32 @scif_rma_list_dma_copy_aligned(%struct.scif_copy_work*, %struct.dma_chan*) #1

declare dso_local i32 @scif_rma_list_cpu_copy(%struct.scif_copy_work*) #1

declare dso_local %struct.scif_dma_comp_cb* @kzalloc(i32, i32) #1

declare dso_local %struct.scif_dma_comp_cb* @kmalloc(i32, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.scif_dma_comp_cb* @PTR_ALIGN(%struct.scif_dma_comp_cb*, i32) #1

declare dso_local %struct.scif_dma_comp_cb* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @scif_rma_local_cpu_copy(i32, %struct.TYPE_2__*, %struct.scif_dma_comp_cb*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @scif_map_single(i32*, %struct.scif_dma_comp_cb*, i32, i64) #1

declare dso_local i64 @scif_rma_list_dma_copy_unaligned(%struct.scif_copy_work*, %struct.scif_dma_comp_cb*, %struct.dma_chan*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.scif_dma_comp_cb*) #1

declare dso_local i32 @kfree(%struct.scif_dma_comp_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
