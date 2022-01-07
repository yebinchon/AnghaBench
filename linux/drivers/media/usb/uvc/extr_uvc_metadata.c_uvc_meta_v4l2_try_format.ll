; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.v4l2_format = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_meta_format }
%struct.v4l2_meta_format = type { i64, i32 }
%struct.uvc_streaming = type { %struct.uvc_device* }
%struct.uvc_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_META_FMT_UVC = common dso_local global i64 0, align 8
@UVC_METATADA_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @uvc_meta_v4l2_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_meta_v4l2_try_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  %10 = alloca %struct.uvc_device*, align 8
  %11 = alloca %struct.v4l2_meta_format*, align 8
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.v4l2_fh*, %struct.v4l2_fh** %14, align 8
  store %struct.v4l2_fh* %15, %struct.v4l2_fh** %8, align 8
  %16 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = call %struct.uvc_streaming* @video_get_drvdata(%struct.TYPE_8__* %18)
  store %struct.uvc_streaming* %19, %struct.uvc_streaming** %9, align 8
  %20 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %21 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %20, i32 0, i32 0
  %22 = load %struct.uvc_device*, %struct.uvc_device** %21, align 8
  store %struct.uvc_device* %22, %struct.uvc_device** %10, align 8
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.v4l2_meta_format* %25, %struct.v4l2_meta_format** %11, align 8
  %26 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %11, align 8
  %27 = getelementptr inbounds %struct.v4l2_meta_format, %struct.v4l2_meta_format* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %33 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %31, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %64

43:                                               ; preds = %3
  %44 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %11, align 8
  %45 = call i32 @memset(%struct.v4l2_meta_format* %44, i32 0, i32 16)
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.uvc_device*, %struct.uvc_device** %10, align 8
  %48 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %46, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i64, i64* %12, align 8
  br label %57

55:                                               ; preds = %43
  %56 = load i64, i64* @V4L2_META_FMT_UVC, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %11, align 8
  %60 = getelementptr inbounds %struct.v4l2_meta_format, %struct.v4l2_meta_format* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @UVC_METATADA_BUF_SIZE, align 4
  %62 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %11, align 8
  %63 = getelementptr inbounds %struct.v4l2_meta_format, %struct.v4l2_meta_format* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %40
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.uvc_streaming* @video_get_drvdata(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.v4l2_meta_format*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
