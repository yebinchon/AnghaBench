; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_do_ioctl_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_do_ioctl_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { %struct.mutex* }
%struct.mutex = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @subdev_do_ioctl_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @subdev_do_ioctl_lock(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.mutex*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file* %11)
  store %struct.video_device* %12, %struct.video_device** %8, align 8
  %13 = load %struct.video_device*, %struct.video_device** %8, align 8
  %14 = getelementptr inbounds %struct.video_device, %struct.video_device* %13, i32 0, i32 0
  %15 = load %struct.mutex*, %struct.mutex** %14, align 8
  store %struct.mutex* %15, %struct.mutex** %9, align 8
  %16 = load i64, i64* @ENODEV, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %10, align 8
  %18 = load %struct.mutex*, %struct.mutex** %9, align 8
  %19 = icmp ne %struct.mutex* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.mutex*, %struct.mutex** %9, align 8
  %22 = call i64 @mutex_lock_interruptible(%struct.mutex* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, i64* @ERESTARTSYS, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %44

27:                                               ; preds = %20, %3
  %28 = load %struct.video_device*, %struct.video_device** %8, align 8
  %29 = call i64 @video_is_registered(%struct.video_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @subdev_do_ioctl(%struct.file* %32, i32 %33, i8* %34)
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.mutex*, %struct.mutex** %9, align 8
  %38 = icmp ne %struct.mutex* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.mutex*, %struct.mutex** %9, align 8
  %41 = call i32 @mutex_unlock(%struct.mutex* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %42, %24
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(%struct.mutex*) #1

declare dso_local i64 @video_is_registered(%struct.video_device*) #1

declare dso_local i64 @subdev_do_ioctl(%struct.file*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
