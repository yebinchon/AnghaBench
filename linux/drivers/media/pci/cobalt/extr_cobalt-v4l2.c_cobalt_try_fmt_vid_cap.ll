; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cobalt_stream = type { i32, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, i32 }

@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@COBALT_BYTES_PER_PIXEL_YUYV = common dso_local global i32 0, align 4
@COBALT_BYTES_PER_PIXEL_RGB24 = common dso_local global i32 0, align 4
@COBALT_BYTES_PER_PIXEL_RGB32 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cobalt_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
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
  %15 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 176
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 144
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %3
  %25 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %25, i32 0, i32 0
  store i32 176, i32* %26, align 4
  %27 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %27, i32 0, i32 1
  store i32 144, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 1920
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 1080
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %29
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 0
  store i32 1920, i32* %41, align 4
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 1
  store i32 1080, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, -4
  store i32 %48, i32* %46, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -2
  store i32 %52, i32* %50, align 4
  %53 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %54 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %58, i32 0, i32 0
  store i32 1920, i32* %59, align 4
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %60, i32 0, i32 1
  store i32 1080, i32* %61, align 4
  %62 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %63 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  br label %81

65:                                               ; preds = %44
  %66 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %67 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %71 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.cobalt_stream*, %struct.cobalt_stream** %7, align 8
  %73 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @pad, align 4
  %76 = load i32, i32* @get_fmt, align 4
  %77 = call i32 @v4l2_subdev_call(i32 %74, i32 %75, i32 %76, i32* null, %struct.v4l2_subdev_format* %9)
  %78 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 0
  %80 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %78, i32* %79)
  br label %81

81:                                               ; preds = %65, %57
  %82 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %86 [
    i32 128, label %85
    i32 129, label %102
    i32 130, label %116
  ]

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %81, %85
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, -4
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @COBALT_BYTES_PER_PIXEL_YUYV, align 4
  %95 = mul nsw i32 %93, %94
  %96 = call i8* @max(i32 %90, i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 2
  store i32 128, i32* %101, align 4
  br label %130

102:                                              ; preds = %81
  %103 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, -4
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @COBALT_BYTES_PER_PIXEL_RGB24, align 4
  %111 = mul nsw i32 %109, %110
  %112 = call i8* @max(i32 %106, i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %130

116:                                              ; preds = %81
  %117 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %118 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, -4
  %121 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %122 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @COBALT_BYTES_PER_PIXEL_RGB32, align 4
  %125 = mul nsw i32 %123, %124
  %126 = call i8* @max(i32 %120, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %116, %102, %86
  %131 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %132 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %139 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %141 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %142 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  ret i32 0
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, i32*) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
