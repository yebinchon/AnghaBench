; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxac_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32 }
%struct.pxa_camera_dev = type { %struct.v4l2_pix_format, %struct.pxa_camera_format_xlate*, i32, i32, i32, i64 }
%struct.pxa_camera_format_xlate = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"s_fmt_vid_cap(pix=%dx%d:%x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to configure for format %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Camera driver produced an unsupported frame %dx%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @pxac_vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxac_vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.pxa_camera_dev*, align 8
  %9 = alloca %struct.pxa_camera_format_xlate*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca %struct.v4l2_subdev_format, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.pxa_camera_dev* @video_drvdata(%struct.file* %15)
  store %struct.pxa_camera_dev* %16, %struct.pxa_camera_dev** %8, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.v4l2_pix_format* %19, %struct.v4l2_pix_format** %10, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 1
  %22 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %24 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %23)
  %25 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33)
  %35 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %36 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %35, i32 0, i32 3
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %40 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %3
  %44 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %45 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %44, i32 0, i32 4
  %46 = call i64 @vb2_is_busy(i32* %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %3
  %49 = phi i1 [ true, %3 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %52 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %51, i32 0, i32 3
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %130

60:                                               ; preds = %48
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %64 = call i32 @pxac_vidioc_try_fmt_vid_cap(%struct.file* %61, i8* %62, %struct.v4l2_format* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %4, align 4
  br label %130

69:                                               ; preds = %60
  %70 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %71 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.pxa_camera_format_xlate* @pxa_mbus_xlate_by_fourcc(i32 %72, i32 %75)
  store %struct.pxa_camera_format_xlate* %76, %struct.pxa_camera_format_xlate** %9, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %78 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %79 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %9, align 8
  %80 = getelementptr inbounds %struct.pxa_camera_format_xlate, %struct.pxa_camera_format_xlate* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @v4l2_fill_mbus_format(i32* %77, %struct.v4l2_pix_format* %78, i32 %81)
  %83 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %84 = load i32, i32* @pad, align 4
  %85 = load i32, i32* @set_fmt, align 4
  %86 = call i32 @sensor_call(%struct.pxa_camera_dev* %83, i32 %84, i32 %85, i32* null, %struct.v4l2_subdev_format* %11)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %69
  %90 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %91 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %90)
  %92 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %118

96:                                               ; preds = %69
  %97 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %98 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @pxa_camera_check_frame(i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %96
  %106 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %107 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %106)
  %108 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %109 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %107, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %130

117:                                              ; preds = %96
  br label %118

118:                                              ; preds = %117, %89
  %119 = load %struct.pxa_camera_format_xlate*, %struct.pxa_camera_format_xlate** %9, align 8
  %120 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %121 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %120, i32 0, i32 1
  store %struct.pxa_camera_format_xlate* %119, %struct.pxa_camera_format_xlate** %121, align 8
  %122 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %123 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %122, i32 0, i32 0
  %124 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %125 = bitcast %struct.v4l2_pix_format* %123 to i8*
  %126 = bitcast %struct.v4l2_pix_format* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 4 %126, i64 12, i1 false)
  %127 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %8, align 8
  %128 = call i32 @pxa_camera_set_bus_param(%struct.pxa_camera_dev* %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %118, %105, %67, %57
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.pxa_camera_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pxac_vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local %struct.pxa_camera_format_xlate* @pxa_mbus_xlate_by_fourcc(i32, i32) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @sensor_call(%struct.pxa_camera_dev*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

declare dso_local i64 @pxa_camera_check_frame(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pxa_camera_set_bus_param(%struct.pxa_camera_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
