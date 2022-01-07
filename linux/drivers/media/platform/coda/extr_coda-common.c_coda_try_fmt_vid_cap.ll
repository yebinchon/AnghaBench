; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.coda_ctx = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.coda_q_data = type { i32, i32, i32 }
%struct.coda_codec = type { i64 }
%struct.vb2_queue = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @coda_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca %struct.coda_q_data*, align 8
  %10 = alloca %struct.coda_codec*, align 8
  %11 = alloca %struct.vb2_queue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.coda_ctx* @fh_to_ctx(i8* %14)
  store %struct.coda_ctx* %15, %struct.coda_ctx** %8, align 8
  %16 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = call i32 @coda_try_pixelformat(%struct.coda_ctx* %16, %struct.v4l2_format* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %206

23:                                               ; preds = %3
  %24 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %25 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %26 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %24, i32 %25)
  store %struct.coda_q_data* %26, %struct.coda_q_data** %9, align 8
  %27 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %32 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %30, i32 %31)
  store %struct.vb2_queue* %32, %struct.vb2_queue** %11, align 8
  %33 = load %struct.vb2_queue*, %struct.vb2_queue** %11, align 8
  %34 = call i64 @vb2_is_streaming(%struct.vb2_queue* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %23
  %37 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %38 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %45 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %36, %23
  %52 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 8
  store i32 %54, i32* %58, align 4
  %59 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 7
  store i32 %61, i32* %65, align 4
  %66 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 6
  store i32 %68, i32* %72, align 4
  %73 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 5
  store i32 %75, i32* %79, align 4
  %80 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %81 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %82 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %80, i32 %81)
  store %struct.coda_q_data* %82, %struct.coda_q_data** %9, align 8
  %83 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %87 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call %struct.coda_codec* @coda_find_codec(i32 %85, i32 %88, i32 %93)
  store %struct.coda_codec* %94, %struct.coda_codec** %10, align 8
  %95 = load %struct.coda_codec*, %struct.coda_codec** %10, align 8
  %96 = icmp ne %struct.coda_codec* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %51
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %206

100:                                              ; preds = %51
  %101 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %102 = load %struct.coda_codec*, %struct.coda_codec** %10, align 8
  %103 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %104 = call i32 @coda_try_fmt(%struct.coda_ctx* %101, %struct.coda_codec* %102, %struct.v4l2_format* %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %4, align 4
  br label %206

109:                                              ; preds = %100
  %110 = load %struct.coda_codec*, %struct.coda_codec** %10, align 8
  %111 = icmp ne %struct.coda_codec* %110, null
  br i1 %111, label %112, label %205

112:                                              ; preds = %109
  %113 = load %struct.coda_codec*, %struct.coda_codec** %10, align 8
  %114 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %205

118:                                              ; preds = %112
  %119 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %120 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @round_up(i32 %123, i32 16)
  %125 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %126 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @round_up(i32 %133, i32 16)
  %135 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %136 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 4
  %139 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %140 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %145 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %143, %148
  %150 = mul nsw i32 %149, 3
  %151 = sdiv i32 %150, 2
  %152 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %153 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  store i32 %151, i32* %155, align 4
  %156 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %157 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %158 = call i32 @coda_try_fmt_vdoa(%struct.coda_ctx* %156, %struct.v4l2_format* %157, i32* %13)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %118
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %4, align 4
  br label %206

163:                                              ; preds = %118
  %164 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %165 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %204

171:                                              ; preds = %163
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  br label %206

177:                                              ; preds = %171
  %178 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %179 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @round_up(i32 %182, i32 16)
  %184 = mul nsw i32 %183, 2
  %185 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %186 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  store i32 %184, i32* %188, align 4
  %189 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %190 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %195 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %193, %198
  %200 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %201 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 3
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %177, %163
  br label %205

205:                                              ; preds = %204, %112, %109
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %205, %174, %161, %107, %97, %21
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @coda_try_pixelformat(%struct.coda_ctx*, %struct.v4l2_format*) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_streaming(%struct.vb2_queue*) #1

declare dso_local %struct.coda_codec* @coda_find_codec(i32, i32, i32) #1

declare dso_local i32 @coda_try_fmt(%struct.coda_ctx*, %struct.coda_codec*, %struct.v4l2_format*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @coda_try_fmt_vdoa(%struct.coda_ctx*, %struct.v4l2_format*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
