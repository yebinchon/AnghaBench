; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_add_i2c_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_add_i2c_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_subdev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i16 }
%struct.v4l2_async_notifier = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_I2C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_async_subdev* @v4l2_async_notifier_add_i2c_subdev(%struct.v4l2_async_notifier* %0, i32 %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_async_subdev*, align 8
  %6 = alloca %struct.v4l2_async_notifier*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_async_subdev*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.v4l2_async_subdev* @kzalloc(i32 %12, i32 %13)
  store %struct.v4l2_async_subdev* %14, %struct.v4l2_async_subdev** %10, align 8
  %15 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %10, align 8
  %16 = icmp ne %struct.v4l2_async_subdev* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.v4l2_async_subdev* @ERR_PTR(i32 %19)
  store %struct.v4l2_async_subdev* %20, %struct.v4l2_async_subdev** %5, align 8
  br label %47

21:                                               ; preds = %4
  %22 = load i32, i32* @V4L2_ASYNC_MATCH_I2C, align 4
  %23 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %10, align 8
  %24 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %10, align 8
  %27 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load i16, i16* %8, align 2
  %31 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %10, align 8
  %32 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i16 %30, i16* %34, align 4
  %35 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %6, align 8
  %36 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %10, align 8
  %37 = call i32 @v4l2_async_notifier_add_subdev(%struct.v4l2_async_notifier* %35, %struct.v4l2_async_subdev* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %21
  %41 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %10, align 8
  %42 = call i32 @kfree(%struct.v4l2_async_subdev* %41)
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.v4l2_async_subdev* @ERR_PTR(i32 %43)
  store %struct.v4l2_async_subdev* %44, %struct.v4l2_async_subdev** %5, align 8
  br label %47

45:                                               ; preds = %21
  %46 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %10, align 8
  store %struct.v4l2_async_subdev* %46, %struct.v4l2_async_subdev** %5, align 8
  br label %47

47:                                               ; preds = %45, %40, %17
  %48 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %5, align 8
  ret %struct.v4l2_async_subdev* %48
}

declare dso_local %struct.v4l2_async_subdev* @kzalloc(i32, i32) #1

declare dso_local %struct.v4l2_async_subdev* @ERR_PTR(i32) #1

declare dso_local i32 @v4l2_async_notifier_add_subdev(%struct.v4l2_async_notifier*, %struct.v4l2_async_subdev*) #1

declare dso_local i32 @kfree(%struct.v4l2_async_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
