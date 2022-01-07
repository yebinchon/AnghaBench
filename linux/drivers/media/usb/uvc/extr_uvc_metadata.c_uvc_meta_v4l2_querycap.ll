; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.uvc_streaming = type { %struct.TYPE_3__*, %struct.uvc_video_chain* }
%struct.TYPE_3__ = type { i32 }
%struct.uvc_video_chain = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"uvcvideo\00", align 1
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @uvc_meta_v4l2_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_meta_v4l2_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.v4l2_fh*, align 8
  %8 = alloca %struct.uvc_streaming*, align 8
  %9 = alloca %struct.uvc_video_chain*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %11, align 8
  store %struct.v4l2_fh* %12, %struct.v4l2_fh** %7, align 8
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call %struct.uvc_streaming* @video_get_drvdata(%struct.TYPE_4__* %15)
  store %struct.uvc_streaming* %16, %struct.uvc_streaming** %8, align 8
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %18 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %17, i32 0, i32 1
  %19 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %18, align 8
  store %struct.uvc_video_chain* %19, %struct.uvc_video_chain** %9, align 8
  %20 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strscpy(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %24 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_fh*, %struct.v4l2_fh** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strscpy(i32 %26, i8* %31, i32 4)
  %33 = load %struct.uvc_streaming*, %struct.uvc_streaming** %8, align 8
  %34 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_make_path(i32 %37, i32 %40, i32 4)
  %42 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %43 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %46 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  ret i32 0
}

declare dso_local %struct.uvc_streaming* @video_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
