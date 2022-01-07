; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_match_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_match_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { %struct.v4l2_async_notifier*, i32 }
%struct.v4l2_device = type { i32 }
%struct.v4l2_subdev = type { i32, %struct.v4l2_async_notifier*, %struct.v4l2_async_subdev* }
%struct.v4l2_async_subdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_device*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @v4l2_async_match_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_async_match_notify(%struct.v4l2_async_notifier* %0, %struct.v4l2_device* %1, %struct.v4l2_subdev* %2, %struct.v4l2_async_subdev* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_async_notifier*, align 8
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.v4l2_async_subdev*, align 8
  %10 = alloca %struct.v4l2_async_notifier*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %6, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %7, align 8
  store %struct.v4l2_subdev* %2, %struct.v4l2_subdev** %8, align 8
  store %struct.v4l2_async_subdev* %3, %struct.v4l2_async_subdev** %9, align 8
  %12 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %14 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %12, %struct.v4l2_subdev* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %61

19:                                               ; preds = %4
  %20 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %6, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %22 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %9, align 8
  %23 = call i32 @v4l2_async_notifier_call_bound(%struct.v4l2_async_notifier* %20, %struct.v4l2_subdev* %21, %struct.v4l2_async_subdev* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %28 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %61

30:                                               ; preds = %19
  %31 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %31, i32 0, i32 0
  %33 = call i32 @list_del(i32* %32)
  %34 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %9, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %36 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %35, i32 0, i32 2
  store %struct.v4l2_async_subdev* %34, %struct.v4l2_async_subdev** %36, align 8
  %37 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %6, align 8
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %38, i32 0, i32 1
  store %struct.v4l2_async_notifier* %37, %struct.v4l2_async_notifier** %39, align 8
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %40, i32 0, i32 0
  %42 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %42, i32 0, i32 1
  %44 = call i32 @list_move(i32* %41, i32* %43)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %46 = call %struct.v4l2_async_notifier* @v4l2_async_find_subdev_notifier(%struct.v4l2_subdev* %45)
  store %struct.v4l2_async_notifier* %46, %struct.v4l2_async_notifier** %10, align 8
  %47 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %10, align 8
  %48 = icmp ne %struct.v4l2_async_notifier* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %10, align 8
  %51 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %50, i32 0, i32 0
  %52 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %51, align 8
  %53 = icmp ne %struct.v4l2_async_notifier* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %30
  store i32 0, i32* %5, align 4
  br label %61

55:                                               ; preds = %49
  %56 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %6, align 8
  %57 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %57, i32 0, i32 0
  store %struct.v4l2_async_notifier* %56, %struct.v4l2_async_notifier** %58, align 8
  %59 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %10, align 8
  %60 = call i32 @v4l2_async_notifier_try_all_subdevs(%struct.v4l2_async_notifier* %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %54, %26, %17
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_async_notifier_call_bound(%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local %struct.v4l2_async_notifier* @v4l2_async_find_subdev_notifier(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_async_notifier_try_all_subdevs(%struct.v4l2_async_notifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
