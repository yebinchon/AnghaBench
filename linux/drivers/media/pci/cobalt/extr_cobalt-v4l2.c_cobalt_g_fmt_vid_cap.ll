; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cobalt_stream = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cobalt_g_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_g_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.cobalt_stream*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca %struct.v4l2_subdev_format, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %10)
  store %struct.cobalt_stream* %11, %struct.cobalt_stream** %7, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %8, align 8
  %15 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %16 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %19 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %21 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %26 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %34 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %39 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  br label %57

41:                                               ; preds = %3
  %42 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %43 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %49 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @pad, align 4
  %52 = load i32, i32* @get_fmt, align 4
  %53 = call i32 @v4l2_subdev_call(i32 %50, i32 %51, i32 %52, i32* null, %struct.v4l2_subdev_format* %9)
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 0
  %56 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %54, i32* %55)
  br label %57

57:                                               ; preds = %41, %37
  %58 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %59 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %71 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  ret i32 0
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
