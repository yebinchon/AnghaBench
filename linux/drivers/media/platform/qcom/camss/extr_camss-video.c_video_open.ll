; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.video_device = type { i32 }
%struct.camss_video = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to power up pipeline: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.camss_video*, align 8
  %6 = alloca %struct.v4l2_fh*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.camss_video* @video_drvdata(%struct.file* %10)
  store %struct.camss_video* %11, %struct.camss_video** %5, align 8
  %12 = load %struct.camss_video*, %struct.camss_video** %5, align 8
  %13 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.v4l2_fh* @kzalloc(i32 4, i32 %15)
  store %struct.v4l2_fh* %16, %struct.v4l2_fh** %6, align 8
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %18 = icmp eq %struct.v4l2_fh* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %24 = load %struct.video_device*, %struct.video_device** %4, align 8
  %25 = call i32 @v4l2_fh_init(%struct.v4l2_fh* %23, %struct.video_device* %24)
  %26 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %27 = call i32 @v4l2_fh_add(%struct.v4l2_fh* %26)
  %28 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  store %struct.v4l2_fh* %28, %struct.v4l2_fh** %30, align 8
  %31 = load %struct.video_device*, %struct.video_device** %4, align 8
  %32 = getelementptr inbounds %struct.video_device, %struct.video_device* %31, i32 0, i32 0
  %33 = call i32 @v4l2_pipeline_pm_use(i32* %32, i32 1)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %22
  %37 = load %struct.camss_video*, %struct.camss_video** %5, align 8
  %38 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %48

44:                                               ; preds = %22
  %45 = load %struct.camss_video*, %struct.camss_video** %5, align 8
  %46 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 0, i32* %2, align 4
  br label %56

48:                                               ; preds = %36
  %49 = load %struct.file*, %struct.file** %3, align 8
  %50 = call i32 @v4l2_fh_release(%struct.file* %49)
  br label %51

51:                                               ; preds = %48, %19
  %52 = load %struct.camss_video*, %struct.camss_video** %5, align 8
  %53 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %44
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.camss_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(%struct.v4l2_fh*, %struct.video_device*) #1

declare dso_local i32 @v4l2_fh_add(%struct.v4l2_fh*) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
