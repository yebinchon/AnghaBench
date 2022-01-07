; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.video_device = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* }
%struct.v4l2_subdev_fh = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @subdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_fh*, align 8
  %6 = alloca %struct.v4l2_subdev_fh*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call %struct.video_device* @video_devdata(%struct.file* %7)
  store %struct.video_device* %8, %struct.video_device** %3, align 8
  %9 = load %struct.video_device*, %struct.video_device** %3, align 8
  %10 = call %struct.v4l2_subdev* @vdev_to_v4l2_subdev(%struct.video_device* %9)
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %4, align 8
  %11 = load %struct.file*, %struct.file** %2, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  store %struct.v4l2_fh* %13, %struct.v4l2_fh** %5, align 8
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %15 = call %struct.v4l2_subdev_fh* @to_v4l2_subdev_fh(%struct.v4l2_fh* %14)
  store %struct.v4l2_subdev_fh* %15, %struct.v4l2_subdev_fh** %6, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)** %24, align 8
  %26 = icmp ne i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_fh*)** %31, align 8
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %34 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %35 = call i32 %32(%struct.v4l2_subdev* %33, %struct.v4l2_subdev_fh* %34)
  br label %36

36:                                               ; preds = %27, %20, %1
  %37 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_fh, %struct.v4l2_subdev_fh* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @module_put(i32 %39)
  %41 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %42 = call i32 @v4l2_fh_del(%struct.v4l2_fh* %41)
  %43 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %44 = call i32 @v4l2_fh_exit(%struct.v4l2_fh* %43)
  %45 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %46 = call i32 @subdev_fh_free(%struct.v4l2_subdev_fh* %45)
  %47 = load %struct.v4l2_subdev_fh*, %struct.v4l2_subdev_fh** %6, align 8
  %48 = call i32 @kfree(%struct.v4l2_subdev_fh* %47)
  %49 = load %struct.file*, %struct.file** %2, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  store %struct.v4l2_fh* null, %struct.v4l2_fh** %50, align 8
  ret i32 0
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.v4l2_subdev* @vdev_to_v4l2_subdev(%struct.video_device*) #1

declare dso_local %struct.v4l2_subdev_fh* @to_v4l2_subdev_fh(%struct.v4l2_fh*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.v4l2_fh*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.v4l2_fh*) #1

declare dso_local i32 @subdev_fh_free(%struct.v4l2_subdev_fh*) #1

declare dso_local i32 @kfree(%struct.v4l2_subdev_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
