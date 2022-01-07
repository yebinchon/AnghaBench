; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.v4l2_format = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.v4l2_meta_format }
%struct.v4l2_meta_format = type { i32, i32 }
%struct.uvc_streaming = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UVC_METATADA_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @uvc_meta_v4l2_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_meta_v4l2_get_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  %10 = alloca %struct.v4l2_meta_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  store %struct.v4l2_fh* %13, %struct.v4l2_fh** %8, align 8
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %15 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call %struct.uvc_streaming* @video_get_drvdata(%struct.TYPE_8__* %16)
  store %struct.uvc_streaming* %17, %struct.uvc_streaming** %9, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.v4l2_meta_format* %20, %struct.v4l2_meta_format** %10, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %23, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %3
  %36 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %10, align 8
  %37 = call i32 @memset(%struct.v4l2_meta_format* %36, i32 0, i32 8)
  %38 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %39 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %10, align 8
  %43 = getelementptr inbounds %struct.v4l2_meta_format, %struct.v4l2_meta_format* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @UVC_METATADA_BUF_SIZE, align 4
  %45 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %10, align 8
  %46 = getelementptr inbounds %struct.v4l2_meta_format, %struct.v4l2_meta_format* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %35, %32
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.uvc_streaming* @video_get_drvdata(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.v4l2_meta_format*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
