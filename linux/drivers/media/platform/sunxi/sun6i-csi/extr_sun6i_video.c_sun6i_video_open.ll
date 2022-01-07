; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.sun6i_video = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @sun6i_video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.sun6i_video*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.sun6i_video* @video_drvdata(%struct.file* %6)
  store %struct.sun6i_video* %7, %struct.sun6i_video** %4, align 8
  %8 = load %struct.sun6i_video*, %struct.sun6i_video** %4, align 8
  %9 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %8, i32 0, i32 0
  %10 = call i64 @mutex_lock_interruptible(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ERESTARTSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = call i32 @v4l2_fh_open(%struct.file* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %49

21:                                               ; preds = %15
  %22 = load %struct.sun6i_video*, %struct.sun6i_video** %4, align 8
  %23 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @v4l2_pipeline_pm_use(i32* %24, i32 1)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %46

29:                                               ; preds = %21
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = call i32 @v4l2_fh_is_singular_file(%struct.file* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %49

34:                                               ; preds = %29
  %35 = load %struct.sun6i_video*, %struct.sun6i_video** %4, align 8
  %36 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sun6i_csi_set_power(i32 %37, i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.sun6i_video*, %struct.sun6i_video** %4, align 8
  %44 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %2, align 4
  br label %54

46:                                               ; preds = %41, %28
  %47 = load %struct.file*, %struct.file** %3, align 8
  %48 = call i32 @v4l2_fh_release(%struct.file* %47)
  br label %49

49:                                               ; preds = %46, %33, %20
  %50 = load %struct.sun6i_video*, %struct.sun6i_video** %4, align 8
  %51 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %42, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.sun6i_video* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i32 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @sun6i_csi_set_power(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
