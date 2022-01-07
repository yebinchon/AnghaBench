; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_vidioc_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_vidioc_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.camif_vp = type { i32, %struct.camif_fmt*, %struct.camif_frame }
%struct.camif_fmt = type { i32, i32 }
%struct.camif_frame = type { i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_JPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @s3c_camif_vidioc_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_camif_vidioc_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.camif_vp*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca %struct.camif_frame*, align 8
  %10 = alloca %struct.camif_fmt*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.camif_vp* @video_drvdata(%struct.file* %11)
  store %struct.camif_vp* %12, %struct.camif_vp** %7, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format* %15, %struct.v4l2_pix_format** %8, align 8
  %16 = load %struct.camif_vp*, %struct.camif_vp** %7, align 8
  %17 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %16, i32 0, i32 2
  store %struct.camif_frame* %17, %struct.camif_frame** %9, align 8
  %18 = load %struct.camif_vp*, %struct.camif_vp** %7, align 8
  %19 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %18, i32 0, i32 1
  %20 = load %struct.camif_fmt*, %struct.camif_fmt** %19, align 8
  store %struct.camif_fmt* %20, %struct.camif_fmt** %10, align 8
  %21 = load %struct.camif_frame*, %struct.camif_frame** %9, align 8
  %22 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.camif_fmt*, %struct.camif_fmt** %10, align 8
  %25 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.camif_vp*, %struct.camif_vp** %7, align 8
  %31 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.camif_fmt*, %struct.camif_fmt** %10, align 8
  %36 = getelementptr inbounds %struct.camif_fmt, %struct.camif_fmt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.camif_frame*, %struct.camif_frame** %9, align 8
  %41 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.camif_frame*, %struct.camif_frame** %9, align 8
  %46 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %49 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @V4L2_COLORSPACE_JPEG, align 4
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  ret i32 0
}

declare dso_local %struct.camif_vp* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
