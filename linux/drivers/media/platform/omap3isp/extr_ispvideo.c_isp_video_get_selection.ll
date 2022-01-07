; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_get_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_get_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.isp_video = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.TYPE_4__, i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_selection = type { i32, %struct.TYPE_4__, i32, i8*, %struct.TYPE_3__ }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@get_selection = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @isp_video_get_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_get_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.isp_video*, align 8
  %9 = alloca %struct.v4l2_subdev_format, align 8
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.v4l2_subdev_selection, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.isp_video* @video_drvdata(%struct.file* %14)
  store %struct.isp_video* %15, %struct.isp_video** %8, align 8
  %16 = bitcast %struct.v4l2_subdev_selection* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  %17 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %11, i32 0, i32 0
  %18 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %11, i32 0, i32 2
  %22 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %46 [
    i32 130, label %26
    i32 129, label %26
    i32 128, label %26
    i32 133, label %36
    i32 132, label %36
    i32 131, label %36
  ]

26:                                               ; preds = %3, %3, %3
  %27 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %28 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %122

35:                                               ; preds = %26
  br label %49

36:                                               ; preds = %3, %3, %3
  %37 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %38 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %122

45:                                               ; preds = %36
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %122

49:                                               ; preds = %45, %35
  %50 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %51 = call %struct.v4l2_subdev* @isp_video_remote_subdev(%struct.isp_video* %50, i8** %12)
  store %struct.v4l2_subdev* %51, %struct.v4l2_subdev** %10, align 8
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %53 = icmp eq %struct.v4l2_subdev* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %122

57:                                               ; preds = %49
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %11, i32 0, i32 3
  store i8* %58, i8** %59, align 8
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* @get_selection, align 4
  %63 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %60, i8* %61, i32 %62, i32* null, %struct.v4l2_subdev_selection* %11)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %57
  %67 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %11, i32 0, i32 4
  %70 = bitcast %struct.TYPE_3__* %68 to i8*
  %71 = bitcast %struct.TYPE_3__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 24, i1 false)
  br label %72

72:                                               ; preds = %66, %57
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @ENOIOCTLCMD, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %4, align 4
  br label %122

79:                                               ; preds = %72
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 3
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %83 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* @get_fmt, align 4
  %87 = bitcast %struct.v4l2_subdev_format* %9 to %struct.v4l2_subdev_selection*
  %88 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %84, i8* %85, i32 %86, i32* null, %struct.v4l2_subdev_selection* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %79
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @ENOIOCTLCMD, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOTTY, align 4
  %98 = sub nsw i32 0, %97
  br label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %13, align 4
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i32 [ %98, %96 ], [ %100, %99 ]
  store i32 %102, i32* %4, align 4
  br label %122

103:                                              ; preds = %79
  %104 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %120 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %103, %101, %77, %54, %46, %42, %32
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.isp_video* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.v4l2_subdev* @isp_video_remote_subdev(%struct.isp_video*, i8**) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i8*, i32, i32*, %struct.v4l2_subdev_selection*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
