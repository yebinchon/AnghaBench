; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_s_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_s_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.cobalt_stream = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@COBALT_BYTES_PER_PIXEL_YUYV = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_1X16 = common dso_local global i32 0, align 4
@COBALT_BYTES_PER_PIXEL_RGB32 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_RGB888_1X24 = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cobalt_s_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_s_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cobalt_stream*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.v4l2_subdev_format, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %12)
  store %struct.cobalt_stream* %13, %struct.cobalt_stream** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %9, align 8
  %17 = bitcast %struct.v4l2_subdev_format* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 12, i1 false)
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = call i64 @cobalt_try_fmt_vid_out(%struct.file* %18, i8* %19, %struct.v4l2_format* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %136

26:                                               ; preds = %3
  %27 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %28 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %27, i32 0, i32 10
  %29 = call i64 @vb2_is_busy(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %36 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %63, label %39

39:                                               ; preds = %31
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %44 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %39
  %48 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %49 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %52 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %60 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55, %47, %39, %31
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %136

66:                                               ; preds = %55, %26
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %80 [
    i32 128, label %70
    i32 129, label %75
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* @COBALT_BYTES_PER_PIXEL_YUYV, align 4
  %72 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %73 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %72, i32 0, i32 9
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_1X16, align 4
  store i32 %74, i32* %11, align 4
  br label %83

75:                                               ; preds = %66
  %76 = load i32, i32* @COBALT_BYTES_PER_PIXEL_RGB32, align 4
  %77 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %78 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X24, align 4
  store i32 %79, i32* %11, align 4
  br label %83

80:                                               ; preds = %66
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %136

83:                                               ; preds = %75, %70
  %84 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %88 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %93 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %98 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %103 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %108 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 8
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %113 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %118 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %123 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %125 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %127 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @v4l2_fill_mbus_format(i32* %126, %struct.v4l2_pix_format* %127, i32 %128)
  %130 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %131 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @pad, align 4
  %134 = load i32, i32* @set_fmt, align 4
  %135 = call i32 @v4l2_subdev_call(i32 %132, i32 %133, i32 %134, i32* null, %struct.v4l2_subdev_format* %10)
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %83, %80, %63, %23
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @cobalt_try_fmt_vid_out(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
