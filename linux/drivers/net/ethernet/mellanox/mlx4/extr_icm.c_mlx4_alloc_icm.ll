; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_alloc_icm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_icm.c_mlx4_alloc_icm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_icm = type { i32, i64 }
%struct.mlx4_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_icm_chunk = type { i32, i64, i64, i32*, i32*, i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@MLX4_ICM_ALLOC_SIZE = common dso_local global i32 0, align 4
@MLX4_ICM_CHUNK_LEN = common dso_local global i64 0, align 8
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx4_icm* @mlx4_alloc_icm(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_icm*, align 8
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_icm*, align 8
  %11 = alloca %struct.mlx4_icm_chunk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mlx4_icm_chunk* null, %struct.mlx4_icm_chunk** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @__GFP_HIGHMEM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %17, %4
  %23 = phi i1 [ false, %4 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @__GFP_HIGHMEM, align 4
  %28 = load i32, i32* @__GFP_NOWARN, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.mlx4_icm* @kmalloc_node(i32 16, i32 %31, i32 %34)
  store %struct.mlx4_icm* %35, %struct.mlx4_icm** %10, align 8
  %36 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %37 = icmp ne %struct.mlx4_icm* %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @__GFP_HIGHMEM, align 4
  %41 = load i32, i32* @__GFP_NOWARN, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  %45 = call %struct.mlx4_icm* @kmalloc(i32 16, i32 %44)
  store %struct.mlx4_icm* %45, %struct.mlx4_icm** %10, align 8
  %46 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %47 = icmp ne %struct.mlx4_icm* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  store %struct.mlx4_icm* null, %struct.mlx4_icm** %5, align 8
  br label %260

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %22
  %51 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %52 = getelementptr inbounds %struct.mlx4_icm, %struct.mlx4_icm* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_icm, %struct.mlx4_icm* %53, i32 0, i32 0
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load i32, i32* @MLX4_ICM_ALLOC_SIZE, align 4
  %57 = call i32 @get_order(i32 %56)
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %218, %167, %50
  %59 = load i32, i32* %7, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %223

61:                                               ; preds = %58
  %62 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %63 = icmp ne %struct.mlx4_icm_chunk* %62, null
  br i1 %63, label %107, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @__GFP_HIGHMEM, align 4
  %67 = load i32, i32* @__GFP_NOWARN, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %65, %69
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %72 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.mlx4_icm_chunk* @kzalloc_node(i32 48, i32 %70, i32 %73)
  store %struct.mlx4_icm_chunk* %74, %struct.mlx4_icm_chunk** %11, align 8
  %75 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %76 = icmp ne %struct.mlx4_icm_chunk* %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @__GFP_HIGHMEM, align 4
  %80 = load i32, i32* @__GFP_NOWARN, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = and i32 %78, %82
  %84 = call %struct.mlx4_icm_chunk* @kzalloc(i32 48, i32 %83)
  store %struct.mlx4_icm_chunk* %84, %struct.mlx4_icm_chunk** %11, align 8
  %85 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %86 = icmp ne %struct.mlx4_icm_chunk* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %255

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %92 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %97 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @MLX4_ICM_CHUNK_LEN, align 8
  %100 = call i32 @sg_init_table(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %103 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %102, i32 0, i32 5
  %104 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %105 = getelementptr inbounds %struct.mlx4_icm, %struct.mlx4_icm* %104, i32 0, i32 0
  %106 = call i32 @list_add_tail(i32* %103, i32* %105)
  br label %107

107:                                              ; preds = %101, %61
  br label %108

108:                                              ; preds = %113, %107
  %109 = load i32, i32* %12, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* %7, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %12, align 4
  br label %108

116:                                              ; preds = %108
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %120, %116
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %130 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %136 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %139 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @mlx4_alloc_icm_coherent(i32* %134, i32* %141, i32 %142, i32 %143)
  store i32 %144, i32* %14, align 4
  br label %159

145:                                              ; preds = %125
  %146 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %147 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %150 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %156 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @mlx4_alloc_icm_pages(i32* %152, i32 %153, i32 %154, i32 %157)
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %145, %128
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %12, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %255

167:                                              ; preds = %162
  br label %58

168:                                              ; preds = %159
  %169 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %170 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %170, align 8
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %177 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8
  br label %211

180:                                              ; preds = %168
  %181 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %182 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @MLX4_ICM_CHUNK_LEN, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %210

186:                                              ; preds = %180
  %187 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %188 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %194 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %197 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %200 = call i8* @dma_map_sg(i32* %192, i32* %195, i64 %198, i32 %199)
  %201 = ptrtoint i8* %200 to i64
  %202 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %203 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %205 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp sle i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %186
  br label %255

209:                                              ; preds = %186
  br label %210

210:                                              ; preds = %209, %180
  br label %211

211:                                              ; preds = %210, %175
  %212 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %213 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @MLX4_ICM_CHUNK_LEN, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  store %struct.mlx4_icm_chunk* null, %struct.mlx4_icm_chunk** %11, align 8
  br label %218

218:                                              ; preds = %217, %211
  %219 = load i32, i32* %12, align 4
  %220 = shl i32 1, %219
  %221 = load i32, i32* %7, align 4
  %222 = sub nsw i32 %221, %220
  store i32 %222, i32* %7, align 4
  br label %58

223:                                              ; preds = %58
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %253, label %226

226:                                              ; preds = %223
  %227 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %228 = icmp ne %struct.mlx4_icm_chunk* %227, null
  br i1 %228, label %229, label %253

229:                                              ; preds = %226
  %230 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %231 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %230, i32 0, i32 0
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %237 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %240 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %243 = call i8* @dma_map_sg(i32* %235, i32* %238, i64 %241, i32 %242)
  %244 = ptrtoint i8* %243 to i64
  %245 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %246 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %245, i32 0, i32 2
  store i64 %244, i64* %246, align 8
  %247 = load %struct.mlx4_icm_chunk*, %struct.mlx4_icm_chunk** %11, align 8
  %248 = getelementptr inbounds %struct.mlx4_icm_chunk, %struct.mlx4_icm_chunk* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp sle i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %229
  br label %255

252:                                              ; preds = %229
  br label %253

253:                                              ; preds = %252, %226, %223
  %254 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  store %struct.mlx4_icm* %254, %struct.mlx4_icm** %5, align 8
  br label %260

255:                                              ; preds = %251, %208, %166, %87
  %256 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %257 = load %struct.mlx4_icm*, %struct.mlx4_icm** %10, align 8
  %258 = load i32, i32* %9, align 4
  %259 = call i32 @mlx4_free_icm(%struct.mlx4_dev* %256, %struct.mlx4_icm* %257, i32 %258)
  store %struct.mlx4_icm* null, %struct.mlx4_icm** %5, align 8
  br label %260

260:                                              ; preds = %255, %253, %48
  %261 = load %struct.mlx4_icm*, %struct.mlx4_icm** %5, align 8
  ret %struct.mlx4_icm* %261
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.mlx4_icm* @kmalloc_node(i32, i32, i32) #1

declare dso_local %struct.mlx4_icm* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.mlx4_icm_chunk* @kzalloc_node(i32, i32, i32) #1

declare dso_local %struct.mlx4_icm_chunk* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_init_table(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mlx4_alloc_icm_coherent(i32*, i32*, i32, i32) #1

declare dso_local i32 @mlx4_alloc_icm_pages(i32*, i32, i32, i32) #1

declare dso_local i8* @dma_map_sg(i32*, i32*, i64, i32) #1

declare dso_local i32 @mlx4_free_icm(%struct.mlx4_dev*, %struct.mlx4_icm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
