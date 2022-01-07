; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.isp_video_fh = type { %struct.v4l2_format }
%struct.isp_video = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.isp_video }
%struct.v4l2_mbus_framefmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @isp_video_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_set_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.isp_video_fh*, align 8
  %9 = alloca %struct.isp_video*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.isp_video_fh* @to_isp_video_fh(i8* %11)
  store %struct.isp_video_fh* %12, %struct.isp_video_fh** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.isp_video* @video_drvdata(%struct.file* %13)
  store %struct.isp_video* %14, %struct.isp_video** %9, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %19 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %90

25:                                               ; preds = %3
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %64 [
    i32 131, label %31
    i32 136, label %32
    i32 134, label %44
    i32 132, label %49
    i32 133, label %49
    i32 128, label %63
    i32 135, label %63
    i32 129, label %63
    i32 130, label %63
  ]

31:                                               ; preds = %25
  br label %69

32:                                               ; preds = %25
  %33 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %34 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 131, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %32
  br label %69

44:                                               ; preds = %25
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 132, i32* %48, align 8
  br label %49

49:                                               ; preds = %25, %25, %44
  %50 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %51 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %52 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = icmp ne %struct.isp_video* %50, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 131, i32* %61, align 8
  br label %62

62:                                               ; preds = %57, %49
  br label %69

63:                                               ; preds = %25, %25, %25, %25
  br label %64

64:                                               ; preds = %25, %63
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 131, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %62, %43, %31
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @isp_video_pix_to_mbus(%struct.TYPE_9__* %72, %struct.v4l2_mbus_framefmt* %10)
  %74 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %75 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i32 @isp_video_mbus_to_pix(%struct.isp_video* %74, %struct.v4l2_mbus_framefmt* %10, %struct.TYPE_9__* %77)
  %79 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %80 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %79, i32 0, i32 1
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.isp_video_fh*, %struct.isp_video_fh** %8, align 8
  %83 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %82, i32 0, i32 0
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %85 = bitcast %struct.v4l2_format* %83 to i8*
  %86 = bitcast %struct.v4l2_format* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %88 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %69, %22
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.isp_video_fh* @to_isp_video_fh(i8*) #1

declare dso_local %struct.isp_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @isp_video_pix_to_mbus(%struct.TYPE_9__*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @isp_video_mbus_to_pix(%struct.isp_video*, %struct.v4l2_mbus_framefmt*, %struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
