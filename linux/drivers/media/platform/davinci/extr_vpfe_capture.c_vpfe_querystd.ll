; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_querystd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vpfe_device = type { i32, i32, %struct.vpfe_subdev_info* }
%struct.vpfe_subdev_info = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vpfe_querystd\0A\00", align 1
@video = common dso_local global i32 0, align 4
@querystd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vpfe_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_querystd(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_subdev_info*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vpfe_device* @video_drvdata(%struct.file* %11)
  store %struct.vpfe_device* %12, %struct.vpfe_device** %8, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 1
  %16 = call i32 @v4l2_dbg(i32 1, i32 %13, i32* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %18 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock_interruptible(i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 2
  %22 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %21, align 8
  store %struct.vpfe_subdev_info* %22, %struct.vpfe_subdev_info** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %29 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %28, i32 0, i32 1
  %30 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %31 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @video, align 4
  %34 = load i32, i32* @querystd, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @v4l2_device_call_until_err(i32* %29, i32 %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %38 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %27, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
