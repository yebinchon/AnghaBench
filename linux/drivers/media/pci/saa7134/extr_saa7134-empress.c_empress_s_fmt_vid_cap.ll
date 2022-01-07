; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-empress.c_empress_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-empress.c_empress_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.saa7134_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_MPEG = common dso_local global i32 0, align 4
@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @empress_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empress_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.saa7134_dev*, align 8
  %8 = alloca %struct.v4l2_subdev_format, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %9)
  store %struct.saa7134_dev* %10, %struct.saa7134_dev** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 1
  %13 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %19 = call i32 @v4l2_fill_mbus_format(i32* %14, %struct.TYPE_7__* %17, i32 %18)
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %21 = load i32, i32* @pad, align 4
  %22 = load i32, i32* @set_fmt, align 4
  %23 = call i32 @saa_call_all(%struct.saa7134_dev* %20, i32 %21, i32 %22, i32* null, %struct.v4l2_subdev_format* %8)
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %8, i32 0, i32 0
  %28 = call i32 @v4l2_fill_pix_format(%struct.TYPE_7__* %26, i32* %27)
  %29 = load i32, i32* @V4L2_PIX_FMT_MPEG, align 4
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* @TS_PACKET_SIZE, align 4
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %34, %38
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  ret i32 0
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
