; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_parallel_notify_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_parallel_notify_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.rvin_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"bound subdev %s source pad: %u sink pad: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @rvin_parallel_notify_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_parallel_notify_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.rvin_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %10 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.rvin_dev* @v4l2_dev_to_vin(i32 %12)
  store %struct.rvin_dev* %13, %struct.rvin_dev** %8, align 8
  %14 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %15 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %19 = call i32 @rvin_parallel_subdevice_attach(%struct.rvin_dev* %17, %struct.v4l2_subdev* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %21 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %3
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %29 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %30 = call i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev* %28, %struct.rvin_dev* %29)
  %31 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %36 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rvin_dev*, %struct.rvin_dev** %8, align 8
  %41 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vin_dbg(%struct.rvin_dev* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %27, %25
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.rvin_dev* @v4l2_dev_to_vin(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rvin_parallel_subdevice_attach(%struct.rvin_dev*, %struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_set_subdev_hostdata(%struct.v4l2_subdev*, %struct.rvin_dev*) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
