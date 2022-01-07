; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_unregister_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_unregister_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_2__*, %struct.v4l2_async_notifier*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_async_notifier = type { i32 }

@list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_async_unregister_subdev(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.v4l2_async_notifier*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = call i32 @mutex_lock(i32* @list_lock)
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @__v4l2_async_notifier_unregister(i32* %7)
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %10 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @__v4l2_async_notifier_cleanup(i32* %11)
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %24, i32 0, i32 1
  %26 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %25, align 8
  store %struct.v4l2_async_notifier* %26, %struct.v4l2_async_notifier** %3, align 8
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %32 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %31, i32 0, i32 0
  %33 = call i32 @list_add(i32* %30, i32* %32)
  %34 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @v4l2_async_notifier_call_unbind(%struct.v4l2_async_notifier* %34, %struct.v4l2_subdev* %35, %struct.TYPE_2__* %38)
  br label %40

40:                                               ; preds = %23, %1
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %42 = call i32 @v4l2_async_cleanup(%struct.v4l2_subdev* %41)
  %43 = call i32 @mutex_unlock(i32* @list_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @__v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @v4l2_async_notifier_call_unbind(%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.TYPE_2__*) #1

declare dso_local i32 @v4l2_async_cleanup(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
