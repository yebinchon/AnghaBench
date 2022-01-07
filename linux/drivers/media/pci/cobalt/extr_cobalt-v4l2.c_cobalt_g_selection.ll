; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.cobalt_stream = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@cea1080p60 = common dso_local global %struct.v4l2_dv_timings zeroinitializer, align 4
@video = common dso_local global i32 0, align 4
@g_dv_timings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @cobalt_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.cobalt_stream*, align 8
  %9 = alloca %struct.v4l2_dv_timings, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.cobalt_stream* @video_drvdata(%struct.file* %11)
  store %struct.cobalt_stream* %12, %struct.cobalt_stream** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %67

21:                                               ; preds = %3
  %22 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %23 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = bitcast %struct.v4l2_dv_timings* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.v4l2_dv_timings* @cea1080p60 to i8*), i64 8, i1 false)
  br label %35

28:                                               ; preds = %21
  %29 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  %30 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @video, align 4
  %33 = load i32, i32* @g_dv_timings, align 4
  %34 = call i32 @v4l2_subdev_call(i32 %31, i32 %32, i32 %33, %struct.v4l2_dv_timings* %9)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %28, %26
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %67

40:                                               ; preds = %35
  %41 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %63 [
    i32 129, label %44
    i32 128, label %44
  ]

44:                                               ; preds = %40, %40
  %45 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %9, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %9, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  br label %66

63:                                               ; preds = %40
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %63, %38, %18
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.cobalt_stream* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_dv_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
