; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_try_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_display.c_vpif_try_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.video_device = type { i32 }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpif_try_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_try_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %8, align 8
  %14 = load %struct.video_device*, %struct.video_device** %8, align 8
  %15 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %14)
  store %struct.channel_obj* %15, %struct.channel_obj** %9, align 8
  %16 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %17 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %16, i32 0, i32 0
  %18 = load %struct.common_obj*, %struct.common_obj** %17, align 8
  %19 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %20 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i64 %19
  store %struct.common_obj* %20, %struct.common_obj** %10, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store %struct.v4l2_pix_format* %23, %struct.v4l2_pix_format** %11, align 8
  %24 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_PIX_FMT_YUV422P, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %31 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %3
  %39 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %40 = call i64 @vpif_update_resolution(%struct.channel_obj* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %96

45:                                               ; preds = %38
  %46 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %47 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %55 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %63 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %71 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %79 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %88, %91
  %93 = mul nsw i32 %92, 2
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %45, %42
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i64 @vpif_update_resolution(%struct.channel_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
