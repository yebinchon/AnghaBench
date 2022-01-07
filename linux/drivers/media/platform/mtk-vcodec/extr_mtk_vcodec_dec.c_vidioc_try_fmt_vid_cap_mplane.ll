; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_try_fmt_vid_cap_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_try_fmt_vid_cap_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_video_fmt = type { i32 }

@mtk_video_formats = common dso_local global %struct.TYPE_6__* null, align 8
@CAP_FMT_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.mtk_video_fmt*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %8 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %9 = call %struct.mtk_video_fmt* @mtk_vdec_find_format(%struct.v4l2_format* %8)
  store %struct.mtk_video_fmt* %9, %struct.mtk_video_fmt** %7, align 8
  %10 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %7, align 8
  %11 = icmp ne %struct.mtk_video_fmt* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mtk_video_formats, align 8
  %14 = load i64, i64* @CAP_FMT_IDX, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %23 = call %struct.mtk_video_fmt* @mtk_vdec_find_format(%struct.v4l2_format* %22)
  store %struct.mtk_video_fmt* %23, %struct.mtk_video_fmt** %7, align 8
  br label %24

24:                                               ; preds = %12, %3
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %7, align 8
  %27 = call i32 @vidioc_try_fmt(%struct.v4l2_format* %25, %struct.mtk_video_fmt* %26)
  ret i32 %27
}

declare dso_local %struct.mtk_video_fmt* @mtk_vdec_find_format(%struct.v4l2_format*) #1

declare dso_local i32 @vidioc_try_fmt(%struct.v4l2_format*, %struct.mtk_video_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
