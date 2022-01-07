; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32, i32 }
%struct.pxa_camera_dev = type { i32 }
%struct.pxa_camera_format_xlate = type { i32, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Format %x not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Field type %d unsupported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @pxac_vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxac_vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.pxa_camera_dev*, align 8
  %9 = alloca %struct.pxa_camera_format_xlate*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca %struct.v4l2_subdev_pad_config, align 4
  %12 = alloca %struct.v4l2_subdev_format, align 4
  %13 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.pxa_camera_dev* @video_drvdata(%struct.file* %16)
  store %struct.pxa_camera_dev* %17, %struct.pxa_camera_dev** %8, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.v4l2_pix_format* %20, %struct.v4l2_pix_format** %10, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 0
  %22 = bitcast %struct.v4l2_mbus_framefmt* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 1
  %24 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 0
  store %struct.v4l2_mbus_framefmt* %25, %struct.v4l2_mbus_framefmt** %13, align 8
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %30 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %14, align 8
  %33 = call %struct.pxa_camera_format_xlate* @pxa_mbus_xlate_by_fourcc(i32 %31, i64 %32)
  store %struct.pxa_camera_format_xlate* %33, %struct.pxa_camera_format_xlate** %9, align 8
  %34 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %9, align 8
  %35 = icmp ne %struct.pxa_camera_format_xlate* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %3
  %37 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %38 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %37)
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %121

43:                                               ; preds = %3
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 5
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 4
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @V4L2_PIX_FMT_YUV422P, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 4, i32 0
  %53 = call i32 @v4l_bound_align_image(i32* %45, i32 48, i32 2048, i32 1, i32* %47, i32 32, i32 2048, i32 0, i32 %52)
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %56 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %9, align 8
  %57 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt* %54, %struct.v4l2_pix_format* %55, i32 %58)
  %60 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %61 = load i32, i32* @pad, align 4
  %62 = load i32, i32* @set_fmt, align 4
  %63 = call i32 @sensor_call(%struct.pxa_camera_dev* %60, i32 %61, i32 %62, %struct.v4l2_subdev_pad_config* %11, %struct.v4l2_subdev_format* %12)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %43
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %4, align 4
  br label %121

68:                                               ; preds = %43
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %71 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %69, %struct.v4l2_mbus_framefmt* %70)
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %78 [
    i32 129, label %75
    i32 128, label %75
  ]

75:                                               ; preds = %68, %68
  %76 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %76, i32 0, i32 1
  store i32 128, i32* %77, align 8
  br label %87

78:                                               ; preds = %68
  %79 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %80 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %79)
  %81 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %82 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %121

87:                                               ; preds = %75
  %88 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %9, align 8
  %92 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pxa_mbus_bytes_per_line(i32 %90, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %4, align 4
  br label %121

99:                                               ; preds = %87
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %102 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %9, align 8
  %104 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %107 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pxa_mbus_image_size(i32 %105, i32 %108, i32 %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %99
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %4, align 4
  br label %121

117:                                              ; preds = %99
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %117, %115, %97, %78, %66, %36
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.pxa_camera_dev* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.pxa_camera_format_xlate* @pxa_mbus_xlate_by_fourcc(i32, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @sensor_call(%struct.pxa_camera_dev*, i32, i32, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pxa_mbus_bytes_per_line(i32, i32) #1

declare dso_local i32 @pxa_mbus_image_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
