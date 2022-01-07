; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_async_register_subdev_sensor_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fwnode.c_v4l2_async_register_subdev_sensor_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.v4l2_async_notifier*, i32 }
%struct.v4l2_async_notifier = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_async_register_subdev_sensor_common(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.v4l2_async_notifier* @kzalloc(i32 4, i32 %18)
  store %struct.v4l2_async_notifier* %19, %struct.v4l2_async_notifier** %4, align 8
  %20 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %21 = icmp ne %struct.v4l2_async_notifier* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %62

25:                                               ; preds = %17
  %26 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %27 = call i32 @v4l2_async_notifier_init(%struct.v4l2_async_notifier* %26)
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %32 = call i32 @v4l2_async_notifier_parse_fwnode_sensor_common(i32 %30, %struct.v4l2_async_notifier* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %56

36:                                               ; preds = %25
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %39 = call i32 @v4l2_async_subdev_notifier_register(%struct.v4l2_subdev* %37, %struct.v4l2_async_notifier* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %56

43:                                               ; preds = %36
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %45 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %43
  %50 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %51, i32 0, i32 0
  store %struct.v4l2_async_notifier* %50, %struct.v4l2_async_notifier** %52, align 8
  store i32 0, i32* %2, align 4
  br label %62

53:                                               ; preds = %48
  %54 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %55 = call i32 @v4l2_async_notifier_unregister(%struct.v4l2_async_notifier* %54)
  br label %56

56:                                               ; preds = %53, %42, %35
  %57 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %58 = call i32 @v4l2_async_notifier_cleanup(%struct.v4l2_async_notifier* %57)
  %59 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %60 = call i32 @kfree(%struct.v4l2_async_notifier* %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %49, %22, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.v4l2_async_notifier* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_notifier_parse_fwnode_sensor_common(i32, %struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_subdev_notifier_register(%struct.v4l2_subdev*, %struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @kfree(%struct.v4l2_async_notifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
