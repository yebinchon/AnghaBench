; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_buffer_risc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-risc.c_bttv_buffer_risc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_tvnorm = type { i32, i32 }
%struct.bttv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bttv_buffer = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.videobuf_dmabuf = type { i32 }

@bttv_tvnorms = common dso_local global %struct.bttv_tvnorm* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"%d: buffer field: %s  format: 0x%08x  size: %dx%d\0A\00", align 1
@v4l2_field_names = common dso_local global i32* null, align 8
@FORMAT_FLAGS_PACKED = common dso_local global i32 0, align 4
@FORMAT_FLAGS_PLANAR = common dso_local global i32 0, align 4
@FORMAT_FLAGS_CrCb = common dso_local global i32 0, align 4
@FORMAT_FLAGS_RAW = common dso_local global i32 0, align 4
@RAW_BPL = common dso_local global i32 0, align 4
@RAW_LINES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_buffer_risc(%struct.bttv* %0, %struct.bttv_buffer* %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca %struct.bttv_buffer*, align 8
  %5 = alloca %struct.bttv_tvnorm*, align 8
  %6 = alloca %struct.videobuf_dmabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store %struct.bttv_buffer* %1, %struct.bttv_buffer** %4, align 8
  %14 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** @bttv_tvnorms, align 8
  %15 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %14, i64 %18
  store %struct.bttv_tvnorm* %19, %struct.bttv_tvnorm** %5, align 8
  %20 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %20, i32 0, i32 3
  %22 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_6__* %21)
  store %struct.videobuf_dmabuf* %22, %struct.videobuf_dmabuf** %6, align 8
  %23 = load %struct.bttv*, %struct.bttv** %3, align 8
  %24 = getelementptr inbounds %struct.bttv, %struct.bttv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @v4l2_field_names, align 8
  %28 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %33, i32 %38, i32 %42, i32 %46)
  %48 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FORMAT_FLAGS_PACKED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %187

56:                                               ; preds = %2
  %57 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %58 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 3
  %63 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %64 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %62, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %70 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 1
  %74 = mul nsw i32 %68, %73
  store i32 %74, i32* %8, align 4
  %75 = load %struct.bttv*, %struct.bttv** %3, align 8
  %76 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %77 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %76, i32 0, i32 7
  %78 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %83 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %87 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @V4L2_FIELD_HAS_BOTH(i32 %90)
  %92 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %93 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %94 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %93, i32 0, i32 6
  %95 = call i32 @bttv_calc_geo(%struct.bttv* %75, i32* %77, i32 %81, i32 %85, i32 %91, %struct.bttv_tvnorm* %92, i32* %94)
  %96 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %97 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  switch i64 %99, label %184 [
    i64 128, label %100
    i64 131, label %113
    i64 130, label %126
    i64 129, label %156
  ]

100:                                              ; preds = %56
  %101 = load %struct.bttv*, %struct.bttv** %3, align 8
  %102 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %103 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %102, i32 0, i32 5
  %104 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %105 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %109 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @bttv_risc_packed(%struct.bttv* %101, i32* %103, i32 %106, i32 0, i32 %107, i32 0, i32 0, i32 %111)
  br label %186

113:                                              ; preds = %56
  %114 = load %struct.bttv*, %struct.bttv** %3, align 8
  %115 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %116 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %115, i32 0, i32 4
  %117 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %118 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %122 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @bttv_risc_packed(%struct.bttv* %114, i32* %116, i32 %119, i32 0, i32 %120, i32 0, i32 0, i32 %124)
  br label %186

126:                                              ; preds = %56
  %127 = load %struct.bttv*, %struct.bttv** %3, align 8
  %128 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %129 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %128, i32 0, i32 5
  %130 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %131 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %136 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = ashr i32 %138, 1
  %140 = call i32 @bttv_risc_packed(%struct.bttv* %127, i32* %129, i32 %132, i32 0, i32 %133, i32 %134, i32 0, i32 %139)
  %141 = load %struct.bttv*, %struct.bttv** %3, align 8
  %142 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %143 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %142, i32 0, i32 4
  %144 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %145 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %151 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 1
  %155 = call i32 @bttv_risc_packed(%struct.bttv* %141, i32* %143, i32 %146, i32 %147, i32 %148, i32 %149, i32 0, i32 %154)
  br label %186

156:                                              ; preds = %56
  %157 = load %struct.bttv*, %struct.bttv** %3, align 8
  %158 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %159 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %158, i32 0, i32 5
  %160 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %161 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %165 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = ashr i32 %167, 1
  %169 = call i32 @bttv_risc_packed(%struct.bttv* %157, i32* %159, i32 %162, i32 0, i32 %163, i32 0, i32 0, i32 %168)
  %170 = load %struct.bttv*, %struct.bttv** %3, align 8
  %171 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %172 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %171, i32 0, i32 4
  %173 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %174 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %179 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %181, 1
  %183 = call i32 @bttv_risc_packed(%struct.bttv* %170, i32* %172, i32 %175, i32 %176, i32 %177, i32 0, i32 0, i32 %182)
  br label %186

184:                                              ; preds = %56
  %185 = call i32 (...) @BUG()
  br label %186

186:                                              ; preds = %184, %156, %126, %113, %100
  br label %187

187:                                              ; preds = %186, %2
  %188 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %189 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %188, i32 0, i32 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @FORMAT_FLAGS_PLANAR, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %543

196:                                              ; preds = %187
  %197 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %198 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %202 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %200, %204
  store i32 %205, i32* %9, align 4
  %206 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %207 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %211 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %209, %213
  store i32 %214, i32* %10, align 4
  %215 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %216 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %215, i32 0, i32 0
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @FORMAT_FLAGS_CrCb, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %196
  %224 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %225 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %224, i32 0, i32 0
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %9, align 4
  %230 = ashr i32 %229, %228
  store i32 %230, i32* %9, align 4
  %231 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %232 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %231, i32 0, i32 0
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %9, align 4
  %237 = ashr i32 %236, %235
  store i32 %237, i32* %9, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %9, align 4
  br label %259

241:                                              ; preds = %196
  %242 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %243 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %242, i32 0, i32 0
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %10, align 4
  %248 = ashr i32 %247, %246
  store i32 %248, i32* %10, align 4
  %249 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %250 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %249, i32 0, i32 0
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %10, align 4
  %255 = ashr i32 %254, %253
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %10, align 4
  br label %259

259:                                              ; preds = %241, %223
  %260 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %261 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  switch i64 %263, label %540 [
    i64 128, label %264
    i64 131, label %307
    i64 130, label %350
    i64 129, label %442
  ]

264:                                              ; preds = %259
  %265 = load %struct.bttv*, %struct.bttv** %3, align 8
  %266 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %267 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %266, i32 0, i32 7
  %268 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %269 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %273 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %277 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %278 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %277, i32 0, i32 6
  %279 = call i32 @bttv_calc_geo(%struct.bttv* %265, i32* %267, i32 %271, i32 %275, i32 0, %struct.bttv_tvnorm* %276, i32* %278)
  %280 = load %struct.bttv*, %struct.bttv** %3, align 8
  %281 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %282 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %281, i32 0, i32 5
  %283 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %284 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %287 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %291 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %297 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %296, i32 0, i32 0
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %302 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %301, i32 0, i32 0
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @bttv_risc_planar(%struct.bttv* %280, i32* %282, i32 %285, i32 0, i32 %289, i32 0, i32 %293, i32 %294, i32 %295, i32 %300, i32 %305, i32 0)
  br label %542

307:                                              ; preds = %259
  %308 = load %struct.bttv*, %struct.bttv** %3, align 8
  %309 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %310 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %309, i32 0, i32 7
  %311 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %312 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %316 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %320 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %321 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %320, i32 0, i32 6
  %322 = call i32 @bttv_calc_geo(%struct.bttv* %308, i32* %310, i32 %314, i32 %318, i32 0, %struct.bttv_tvnorm* %319, i32* %321)
  %323 = load %struct.bttv*, %struct.bttv** %3, align 8
  %324 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %325 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %324, i32 0, i32 4
  %326 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %327 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %330 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %334 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* %10, align 4
  %339 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %340 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %339, i32 0, i32 0
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %345 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %344, i32 0, i32 0
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @bttv_risc_planar(%struct.bttv* %323, i32* %325, i32 %328, i32 0, i32 %332, i32 0, i32 %336, i32 %337, i32 %338, i32 %343, i32 %348, i32 0)
  br label %542

350:                                              ; preds = %259
  %351 = load %struct.bttv*, %struct.bttv** %3, align 8
  %352 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %353 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %352, i32 0, i32 7
  %354 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %355 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %359 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %363 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %364 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %363, i32 0, i32 6
  %365 = call i32 @bttv_calc_geo(%struct.bttv* %351, i32* %353, i32 %357, i32 %361, i32 1, %struct.bttv_tvnorm* %362, i32* %364)
  %366 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %367 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = ashr i32 %369, 1
  store i32 %370, i32* %13, align 4
  %371 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %372 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  store i32 %374, i32* %11, align 4
  %375 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %376 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %380 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %379, i32 0, i32 0
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = ashr i32 %378, %383
  store i32 %384, i32* %12, align 4
  %385 = load %struct.bttv*, %struct.bttv** %3, align 8
  %386 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %387 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %386, i32 0, i32 5
  %388 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %389 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %392 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %391, i32 0, i32 3
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* %11, align 4
  %396 = load i32, i32* %13, align 4
  %397 = load i32, i32* %9, align 4
  %398 = load i32, i32* %10, align 4
  %399 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %400 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %399, i32 0, i32 0
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %405 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %404, i32 0, i32 0
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %12, align 4
  %410 = call i32 @bttv_risc_planar(%struct.bttv* %385, i32* %387, i32 %390, i32 0, i32 %394, i32 %395, i32 %396, i32 %397, i32 %398, i32 %403, i32 %408, i32 %409)
  %411 = load %struct.bttv*, %struct.bttv** %3, align 8
  %412 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %413 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %412, i32 0, i32 4
  %414 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %415 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %11, align 4
  %418 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %419 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %418, i32 0, i32 3
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* %11, align 4
  %423 = load i32, i32* %13, align 4
  %424 = load i32, i32* %9, align 4
  %425 = load i32, i32* %12, align 4
  %426 = add nsw i32 %424, %425
  %427 = load i32, i32* %10, align 4
  %428 = load i32, i32* %12, align 4
  %429 = add nsw i32 %427, %428
  %430 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %431 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %430, i32 0, i32 0
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %436 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %435, i32 0, i32 0
  %437 = load %struct.TYPE_5__*, %struct.TYPE_5__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %12, align 4
  %441 = call i32 @bttv_risc_planar(%struct.bttv* %411, i32* %413, i32 %416, i32 %417, i32 %421, i32 %422, i32 %423, i32 %426, i32 %429, i32 %434, i32 %439, i32 %440)
  br label %542

442:                                              ; preds = %259
  %443 = load %struct.bttv*, %struct.bttv** %3, align 8
  %444 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %445 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %444, i32 0, i32 7
  %446 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %447 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %446, i32 0, i32 3
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %451 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %450, i32 0, i32 3
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %455 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %456 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %455, i32 0, i32 6
  %457 = call i32 @bttv_calc_geo(%struct.bttv* %443, i32* %445, i32 %449, i32 %453, i32 1, %struct.bttv_tvnorm* %454, i32* %456)
  %458 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %459 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 4
  %462 = ashr i32 %461, 1
  store i32 %462, i32* %13, align 4
  %463 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %464 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %463, i32 0, i32 3
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  store i32 %466, i32* %11, align 4
  %467 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %468 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %467, i32 0, i32 3
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %472 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %471, i32 0, i32 0
  %473 = load %struct.TYPE_5__*, %struct.TYPE_5__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 4
  %476 = ashr i32 %470, %475
  store i32 %476, i32* %12, align 4
  %477 = load %struct.bttv*, %struct.bttv** %3, align 8
  %478 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %479 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %478, i32 0, i32 5
  %480 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %481 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %484 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %483, i32 0, i32 3
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* %13, align 4
  %488 = load i32, i32* %9, align 4
  %489 = ashr i32 %488, 1
  %490 = load i32, i32* %10, align 4
  %491 = ashr i32 %490, 1
  %492 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %493 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %492, i32 0, i32 0
  %494 = load %struct.TYPE_5__*, %struct.TYPE_5__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %498 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %497, i32 0, i32 0
  %499 = load %struct.TYPE_5__*, %struct.TYPE_5__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %499, i32 0, i32 3
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @bttv_risc_planar(%struct.bttv* %477, i32* %479, i32 %482, i32 0, i32 %486, i32 0, i32 %487, i32 %489, i32 %491, i32 %496, i32 %501, i32 0)
  %503 = load %struct.bttv*, %struct.bttv** %3, align 8
  %504 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %505 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %504, i32 0, i32 4
  %506 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %507 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* %13, align 4
  %510 = load i32, i32* %11, align 4
  %511 = mul nsw i32 %509, %510
  %512 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %513 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %512, i32 0, i32 3
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* %13, align 4
  %517 = load i32, i32* %13, align 4
  %518 = load i32, i32* %11, align 4
  %519 = mul nsw i32 %517, %518
  %520 = load i32, i32* %9, align 4
  %521 = ashr i32 %520, 1
  %522 = add nsw i32 %519, %521
  %523 = load i32, i32* %13, align 4
  %524 = load i32, i32* %11, align 4
  %525 = mul nsw i32 %523, %524
  %526 = load i32, i32* %10, align 4
  %527 = ashr i32 %526, 1
  %528 = add nsw i32 %525, %527
  %529 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %530 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %529, i32 0, i32 0
  %531 = load %struct.TYPE_5__*, %struct.TYPE_5__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %535 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %534, i32 0, i32 0
  %536 = load %struct.TYPE_5__*, %struct.TYPE_5__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 4
  %539 = call i32 @bttv_risc_planar(%struct.bttv* %503, i32* %505, i32 %508, i32 %511, i32 %515, i32 0, i32 %516, i32 %522, i32 %528, i32 %533, i32 %538, i32 0)
  br label %542

540:                                              ; preds = %259
  %541 = call i32 (...) @BUG()
  br label %542

542:                                              ; preds = %540, %442, %350, %307, %264
  br label %543

543:                                              ; preds = %542, %187
  %544 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %545 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %544, i32 0, i32 0
  %546 = load %struct.TYPE_5__*, %struct.TYPE_5__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @FORMAT_FLAGS_RAW, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %592

552:                                              ; preds = %543
  %553 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %554 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %553, i32 0, i32 3
  %555 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %554, i32 0, i32 0
  store i64 129, i64* %555, align 8
  %556 = load %struct.bttv*, %struct.bttv** %3, align 8
  %557 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %558 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %557, i32 0, i32 7
  %559 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %560 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %563 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 4
  %565 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %566 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %567 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %566, i32 0, i32 6
  %568 = call i32 @bttv_calc_geo(%struct.bttv* %556, i32* %558, i32 %561, i32 %564, i32 1, %struct.bttv_tvnorm* %565, i32* %567)
  %569 = load %struct.bttv*, %struct.bttv** %3, align 8
  %570 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %571 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %570, i32 0, i32 5
  %572 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %573 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = load i32, i32* @RAW_BPL, align 4
  %576 = load i32, i32* @RAW_LINES, align 4
  %577 = call i32 @bttv_risc_packed(%struct.bttv* %569, i32* %571, i32 %574, i32 0, i32 %575, i32 0, i32 0, i32 %576)
  %578 = load %struct.bttv*, %struct.bttv** %3, align 8
  %579 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %580 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %579, i32 0, i32 4
  %581 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %582 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %585 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %584, i32 0, i32 3
  %586 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %585, i32 0, i32 3
  %587 = load i32, i32* %586, align 8
  %588 = sdiv i32 %587, 2
  %589 = load i32, i32* @RAW_BPL, align 4
  %590 = load i32, i32* @RAW_LINES, align 4
  %591 = call i32 @bttv_risc_packed(%struct.bttv* %578, i32* %580, i32 %583, i32 %588, i32 %589, i32 0, i32 0, i32 %590)
  br label %592

592:                                              ; preds = %552, %543
  %593 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %594 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %593, i32 0, i32 0
  %595 = load %struct.TYPE_5__*, %struct.TYPE_5__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %595, i32 0, i32 5
  %597 = load i32, i32* %596, align 4
  %598 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %599 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %598, i32 0, i32 2
  store i32 %597, i32* %599, align 4
  %600 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %601 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %600, i32 0, i32 0
  %602 = load %struct.TYPE_5__*, %struct.TYPE_5__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %602, i32 0, i32 4
  %604 = load i32, i32* %603, align 4
  %605 = load %struct.bttv_buffer*, %struct.bttv_buffer** %4, align 8
  %606 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %605, i32 0, i32 1
  store i32 %604, i32* %606, align 8
  ret i32 0
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_6__*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bttv_calc_geo(%struct.bttv*, i32*, i32, i32, i32, %struct.bttv_tvnorm*, i32*) #1

declare dso_local i32 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @bttv_risc_packed(%struct.bttv*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @bttv_risc_planar(%struct.bttv*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
