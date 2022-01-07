; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-device.c_v4l2_device_unregister_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-device.c_v4l2_device_unregister_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i64, i32, %struct.v4l2_device*, %struct.TYPE_2__*, i32 }
%struct.v4l2_device = type { i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.v4l2_subdev*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = icmp eq %struct.v4l2_subdev* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %7, i32 0, i32 2
  %9 = load %struct.v4l2_device*, %struct.v4l2_device** %8, align 8
  %10 = icmp eq %struct.v4l2_device* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %59

12:                                               ; preds = %6
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 2
  %15 = load %struct.v4l2_device*, %struct.v4l2_device** %14, align 8
  store %struct.v4l2_device* %15, %struct.v4l2_device** %3, align 8
  %16 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %19, i32 0, i32 4
  %21 = call i32 @list_del(i32* %20)
  %22 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %12
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %33, align 8
  %35 = icmp ne i32 (%struct.v4l2_subdev*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %40, align 8
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %43 = call i32 %41(%struct.v4l2_subdev* %42)
  br label %44

44:                                               ; preds = %36, %29, %12
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %45, i32 0, i32 2
  store %struct.v4l2_device* null, %struct.v4l2_device** %46, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @video_unregister_device(i64 %54)
  br label %59

56:                                               ; preds = %44
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %58 = call i32 @v4l2_subdev_release(%struct.v4l2_subdev* %57)
  br label %59

59:                                               ; preds = %11, %56, %51
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @video_unregister_device(i64) #1

declare dso_local i32 @v4l2_subdev_release(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
