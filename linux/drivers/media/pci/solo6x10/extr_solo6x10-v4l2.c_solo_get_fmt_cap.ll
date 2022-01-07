; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_get_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_get_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.solo_dev = type { i32 }

@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @solo_get_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_get_fmt_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.solo_dev*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.solo_dev* @video_drvdata(%struct.file* %9)
  store %struct.solo_dev* %10, %struct.solo_dev** %7, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_pix_format* %13, %struct.v4l2_pix_format** %8, align 8
  %14 = load %struct.solo_dev*, %struct.solo_dev** %7, align 8
  %15 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load %struct.solo_dev*, %struct.solo_dev** %7, align 8
  %20 = call i32 @solo_vlines(%struct.solo_dev* %19)
  %21 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %22 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  %24 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.solo_dev*, %struct.solo_dev** %7, align 8
  %30 = call i32 @solo_image_size(%struct.solo_dev* %29)
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %34 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.solo_dev*, %struct.solo_dev** %7, align 8
  %37 = call i32 @solo_bytesperline(%struct.solo_dev* %36)
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret i32 0
}

declare dso_local %struct.solo_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @solo_vlines(%struct.solo_dev*) #1

declare dso_local i32 @solo_image_size(%struct.solo_dev*) #1

declare dso_local i32 @solo_bytesperline(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
