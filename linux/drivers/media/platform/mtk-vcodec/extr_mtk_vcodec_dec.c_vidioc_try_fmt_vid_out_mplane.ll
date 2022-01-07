; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_try_fmt_vid_out_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_try_fmt_vid_out_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.v4l2_pix_format_mplane }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_pix_format_mplane = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.mtk_video_fmt = type { i32 }

@mtk_video_formats = common dso_local global %struct.TYPE_8__* null, align 8
@OUT_FMT_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"sizeimage of output format must be given\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_out_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_out_mplane(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.mtk_video_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %12, %struct.v4l2_pix_format_mplane** %8, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = call %struct.mtk_video_fmt* @mtk_vdec_find_format(%struct.v4l2_format* %13)
  store %struct.mtk_video_fmt* %14, %struct.mtk_video_fmt** %9, align 8
  %15 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %9, align 8
  %16 = icmp ne %struct.mtk_video_fmt* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mtk_video_formats, align 8
  %19 = load i64, i64* @OUT_FMT_IDX, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = call %struct.mtk_video_fmt* @mtk_vdec_find_format(%struct.v4l2_format* %27)
  store %struct.mtk_video_fmt* %28, %struct.mtk_video_fmt** %9, align 8
  br label %29

29:                                               ; preds = %17, %3
  %30 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %29
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %9, align 8
  %44 = call i32 @vidioc_try_fmt(%struct.v4l2_format* %42, %struct.mtk_video_fmt* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.mtk_video_fmt* @mtk_vdec_find_format(%struct.v4l2_format*) #1

declare dso_local i32 @mtk_v4l2_err(i8*) #1

declare dso_local i32 @vidioc_try_fmt(%struct.v4l2_format*, %struct.mtk_video_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
