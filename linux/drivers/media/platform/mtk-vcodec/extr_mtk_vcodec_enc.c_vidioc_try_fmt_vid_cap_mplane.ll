; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_try_fmt_vid_cap_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_try_fmt_vid_cap_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mtk_video_fmt = type { i32 }
%struct.mtk_vcodec_ctx = type { i32, i32, i32, i32 }

@mtk_video_formats = common dso_local global %struct.TYPE_8__* null, align 8
@CAP_FMT_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.mtk_video_fmt*, align 8
  %8 = alloca %struct.mtk_vcodec_ctx*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.mtk_vcodec_ctx* @fh_to_ctx(i8* %9)
  store %struct.mtk_vcodec_ctx* %10, %struct.mtk_vcodec_ctx** %8, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %12 = call %struct.mtk_video_fmt* @mtk_venc_find_format(%struct.v4l2_format* %11)
  store %struct.mtk_video_fmt* %12, %struct.mtk_video_fmt** %7, align 8
  %13 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %7, align 8
  %14 = icmp ne %struct.mtk_video_fmt* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mtk_video_formats, align 8
  %17 = load i64, i64* @CAP_FMT_IDX, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = call %struct.mtk_video_fmt* @mtk_venc_find_format(%struct.v4l2_format* %25)
  store %struct.mtk_video_fmt* %26, %struct.mtk_video_fmt** %7, align 8
  br label %27

27:                                               ; preds = %15, %3
  %28 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 4
  %35 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  %42 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %57 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %7, align 8
  %58 = call i32 @vidioc_try_fmt(%struct.v4l2_format* %56, %struct.mtk_video_fmt* %57)
  ret i32 %58
}

declare dso_local %struct.mtk_vcodec_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.mtk_video_fmt* @mtk_venc_find_format(%struct.v4l2_format*) #1

declare dso_local i32 @vidioc_try_fmt(%struct.v4l2_format*, %struct.mtk_video_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
