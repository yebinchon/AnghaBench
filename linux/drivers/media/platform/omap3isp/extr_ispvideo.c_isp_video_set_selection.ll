; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i32, i32, i32 }
%struct.isp_video = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@set_selection = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @isp_video_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_set_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.isp_video*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.v4l2_subdev_selection, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.isp_video* @video_drvdata(%struct.file* %13)
  store %struct.isp_video* %14, %struct.isp_video** %8, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 0
  %16 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 1
  %20 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 3
  %25 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 4
  %29 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %29, i32* %28, align 4
  %30 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %53 [
    i32 128, label %33
    i32 129, label %43
  ]

33:                                               ; preds = %3
  %34 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %35 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %96

42:                                               ; preds = %33
  br label %56

43:                                               ; preds = %3
  %44 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %45 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %96

52:                                               ; preds = %43
  br label %56

53:                                               ; preds = %3
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %96

56:                                               ; preds = %52, %42
  %57 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %58 = call %struct.v4l2_subdev* @isp_video_remote_subdev(%struct.isp_video* %57, i32* %11)
  store %struct.v4l2_subdev* %58, %struct.v4l2_subdev** %9, align 8
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %60 = icmp eq %struct.v4l2_subdev* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %96

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %68 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @set_selection, align 4
  %73 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %70, i32 %71, i32 %72, i32* null, %struct.v4l2_subdev_selection* %10)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.isp_video*, %struct.isp_video** %8, align 8
  %75 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %10, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %64
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @ENOIOCTLCMD, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOTTY, align 4
  %91 = sub nsw i32 0, %90
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %12, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i32 [ %91, %89 ], [ %93, %92 ]
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %61, %53, %49, %39
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.isp_video* @video_drvdata(%struct.file*) #1

declare dso_local %struct.v4l2_subdev* @isp_video_remote_subdev(%struct.isp_video*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_selection*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
