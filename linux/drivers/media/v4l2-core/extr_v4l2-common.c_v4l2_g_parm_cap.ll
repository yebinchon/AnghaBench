; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-common.c_v4l2_g_parm_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-common.c_v4l2_g_parm_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.v4l2_subdev_frame_interval = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_frame_interval = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_g_parm_cap(%struct.video_device* %0, %struct.v4l2_subdev* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.v4l2_subdev_frame_interval, align 4
  %9 = alloca i32, align 4
  store %struct.video_device* %0, %struct.video_device** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %10 = bitcast %struct.v4l2_subdev_frame_interval* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %65

25:                                               ; preds = %16, %3
  %26 = load %struct.video_device*, %struct.video_device** %5, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 2, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %39 = load i32, i32* @video, align 4
  %40 = load i32, i32* @g_frame_interval, align 4
  %41 = call i64 @v4l2_subdev_has_op(%struct.v4l2_subdev* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %45 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %51 = load i32, i32* @video, align 4
  %52 = load i32, i32* @g_frame_interval, align 4
  %53 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %50, i32 %51, i32 %52, %struct.v4l2_subdev_frame_interval* %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %49
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %22
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @v4l2_subdev_has_op(%struct.v4l2_subdev*, i32, i32) #2

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_subdev_frame_interval*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
