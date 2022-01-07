; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_pixelaspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_pixelaspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_fract = type { i32 }
%struct.cobalt_stream = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cea1080p60 = common dso_local global %struct.v4l2_dv_timings zeroinitializer, align 4
@video = common dso_local global i32 0, align 4
@g_dv_timings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32, %struct.v4l2_fract*)* @cobalt_g_pixelaspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_g_pixelaspect(%struct.file* %0, i8* %1, i32 %2, %struct.v4l2_fract* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca %struct.cobalt_stream*, align 8
  %11 = alloca %struct.v4l2_dv_timings, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_fract, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_fract* %3, %struct.v4l2_fract** %9, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %14)
  store %struct.cobalt_stream* %15, %struct.cobalt_stream** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %24 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = bitcast %struct.v4l2_dv_timings* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.v4l2_dv_timings* @cea1080p60 to i8*), i64 4, i1 false)
  br label %36

29:                                               ; preds = %22
  %30 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  %31 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @video, align 4
  %34 = load i32, i32* @g_dv_timings, align 4
  %35 = call i32 @v4l2_subdev_call(i32 %32, i32 %33, i32 %34, %struct.v4l2_dv_timings* %11)
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %29, %27
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %41 = call i32 @v4l2_dv_timings_aspect_ratio(%struct.v4l2_dv_timings* %11)
  %42 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %13, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = bitcast %struct.v4l2_fract* %40 to i8*
  %44 = bitcast %struct.v4l2_fract* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_dv_timings*) #1

declare dso_local i32 @v4l2_dv_timings_aspect_ratio(%struct.v4l2_dv_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
