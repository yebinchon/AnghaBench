; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_add_fwnode_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_add_fwnode_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_subdev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_async_notifier = type { i32 }
%struct.fwnode_handle = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_async_subdev* @v4l2_async_notifier_add_fwnode_subdev(%struct.v4l2_async_notifier* %0, %struct.fwnode_handle* %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_async_subdev*, align 8
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_async_subdev*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.v4l2_async_subdev* @kzalloc(i32 %10, i32 %11)
  store %struct.v4l2_async_subdev* %12, %struct.v4l2_async_subdev** %8, align 8
  %13 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %8, align 8
  %14 = icmp ne %struct.v4l2_async_subdev* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.v4l2_async_subdev* @ERR_PTR(i32 %17)
  store %struct.v4l2_async_subdev* %18, %struct.v4l2_async_subdev** %4, align 8
  br label %42

19:                                               ; preds = %3
  %20 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %21 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %8, align 8
  %22 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %24 = call i32 @fwnode_handle_get(%struct.fwnode_handle* %23)
  %25 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %29 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %8, align 8
  %30 = call i32 @v4l2_async_notifier_add_subdev(%struct.v4l2_async_notifier* %28, %struct.v4l2_async_subdev* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %19
  %34 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %35 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %34)
  %36 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %8, align 8
  %37 = call i32 @kfree(%struct.v4l2_async_subdev* %36)
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.v4l2_async_subdev* @ERR_PTR(i32 %38)
  store %struct.v4l2_async_subdev* %39, %struct.v4l2_async_subdev** %4, align 8
  br label %42

40:                                               ; preds = %19
  %41 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %8, align 8
  store %struct.v4l2_async_subdev* %41, %struct.v4l2_async_subdev** %4, align 8
  br label %42

42:                                               ; preds = %40, %33, %15
  %43 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %4, align 8
  ret %struct.v4l2_async_subdev* %43
}

declare dso_local %struct.v4l2_async_subdev* @kzalloc(i32, i32) #1

declare dso_local %struct.v4l2_async_subdev* @ERR_PTR(i32) #1

declare dso_local i32 @fwnode_handle_get(%struct.fwnode_handle*) #1

declare dso_local i32 @v4l2_async_notifier_add_subdev(%struct.v4l2_async_notifier*, %struct.v4l2_async_subdev*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local i32 @kfree(%struct.v4l2_async_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
