; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c___ceu_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c___ceu_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceu_device = type { %struct.ceu_subdev* }
%struct.ceu_subdev = type { %struct.TYPE_6__, %struct.v4l2_subdev* }
%struct.TYPE_6__ = type { i8* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.ceu_fmt = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8* }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV8_2X8 = common dso_local global i8* null, align 8
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i8* null, align 8
@MEDIA_BUS_FMT_YVYU8_2X8 = common dso_local global i8* null, align 8
@MEDIA_BUS_FMT_VYUY8_2X8 = common dso_local global i8* null, align 8
@CEU_MAX_WIDTH = common dso_local global i32 0, align 4
@CEU_MAX_HEIGHT = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceu_device*, %struct.v4l2_format*, i8**)* @__ceu_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ceu_try_fmt(%struct.ceu_device* %0, %struct.v4l2_format* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ceu_device*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ceu_subdev*, align 8
  %9 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.v4l2_subdev_pad_config, align 4
  %12 = alloca %struct.ceu_fmt*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.v4l2_subdev_format, align 8
  store %struct.ceu_device* %0, %struct.ceu_device** %5, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %6, align 8
  store i8** %2, i8*** %7, align 8
  %17 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %18 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %17, i32 0, i32 0
  %19 = load %struct.ceu_subdev*, %struct.ceu_subdev** %18, align 8
  store %struct.ceu_subdev* %19, %struct.ceu_subdev** %8, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %22, %struct.v4l2_pix_format_mplane** %9, align 8
  %23 = load %struct.ceu_subdev*, %struct.ceu_subdev** %8, align 8
  %24 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %23, i32 0, i32 1
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %24, align 8
  store %struct.v4l2_subdev* %25, %struct.v4l2_subdev** %10, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %27 = bitcast %struct.TYPE_7__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false)
  %28 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 1
  %29 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  store i32 %29, i32* %28, align 8
  %30 = load %struct.ceu_subdev*, %struct.ceu_subdev** %8, align 8
  %31 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %13, align 8
  %34 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %50 [
    i32 129, label %37
    i32 131, label %39
    i32 128, label %41
    i32 130, label %43
    i32 134, label %45
    i32 132, label %45
    i32 135, label %45
    i32 133, label %45
  ]

37:                                               ; preds = %3
  %38 = load i8*, i8** @MEDIA_BUS_FMT_YUYV8_2X8, align 8
  store i8* %38, i8** %14, align 8
  br label %57

39:                                               ; preds = %3
  %40 = load i8*, i8** @MEDIA_BUS_FMT_UYVY8_2X8, align 8
  store i8* %40, i8** %14, align 8
  br label %57

41:                                               ; preds = %3
  %42 = load i8*, i8** @MEDIA_BUS_FMT_YVYU8_2X8, align 8
  store i8* %42, i8** %14, align 8
  br label %57

43:                                               ; preds = %3
  %44 = load i8*, i8** @MEDIA_BUS_FMT_VYUY8_2X8, align 8
  store i8* %44, i8** %14, align 8
  br label %57

45:                                               ; preds = %3, %3, %3, %3
  %46 = load %struct.ceu_subdev*, %struct.ceu_subdev** %8, align 8
  %47 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %14, align 8
  br label %57

50:                                               ; preds = %3
  %51 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %51, i32 0, i32 0
  store i32 134, i32* %52, align 4
  %53 = load %struct.ceu_subdev*, %struct.ceu_subdev** %8, align 8
  %54 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %14, align 8
  br label %57

57:                                               ; preds = %50, %45, %43, %41, %39, %37
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.ceu_fmt* @get_ceu_fmt_from_fourcc(i32 %60)
  store %struct.ceu_fmt* %61, %struct.ceu_fmt** %12, align 8
  %62 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 2
  %64 = load i32, i32* @CEU_MAX_WIDTH, align 4
  %65 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %65, i32 0, i32 1
  %67 = load i32, i32* @CEU_MAX_HEIGHT, align 4
  %68 = call i32 @v4l_bound_align_image(i32* %63, i32 2, i32 %64, i32 4, i32* %66, i32 4, i32 %67, i32 4, i32 0)
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %70 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %71 = call i32 @v4l2_fill_mbus_format_mplane(%struct.TYPE_7__* %69, %struct.v4l2_pix_format_mplane* %70)
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %76 = load i32, i32* @pad, align 4
  %77 = load i32, i32* @set_fmt, align 4
  %78 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %75, i32 %76, i32 %77, %struct.v4l2_subdev_pad_config* %11, %struct.v4l2_subdev_format* %16)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %57
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i8*, i8** %13, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %91 = load i32, i32* @pad, align 4
  %92 = load i32, i32* @set_fmt, align 4
  %93 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %90, i32 %91, i32 %92, %struct.v4l2_subdev_pad_config* %11, %struct.v4l2_subdev_format* %16)
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %86, %81
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %4, align 4
  br label %112

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %57
  %101 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %102 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %103 = call i32 @v4l2_fill_pix_format_mplane(%struct.v4l2_pix_format_mplane* %101, %struct.TYPE_7__* %102)
  %104 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %105 = load %struct.ceu_fmt*, %struct.ceu_fmt** %12, align 8
  %106 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %107 = call i32 @ceu_calc_plane_sizes(%struct.ceu_device* %104, %struct.ceu_fmt* %105, %struct.v4l2_pix_format_mplane* %106)
  %108 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %7, align 8
  store i8* %110, i8** %111, align 8
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %100, %97
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ceu_fmt* @get_ceu_fmt_from_fourcc(i32) #2

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @v4l2_fill_mbus_format_mplane(%struct.TYPE_7__*, %struct.v4l2_pix_format_mplane*) #2

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #2

declare dso_local i32 @v4l2_fill_pix_format_mplane(%struct.v4l2_pix_format_mplane*, %struct.TYPE_7__*) #2

declare dso_local i32 @ceu_calc_plane_sizes(%struct.ceu_device*, %struct.ceu_fmt*, %struct.v4l2_pix_format_mplane*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
