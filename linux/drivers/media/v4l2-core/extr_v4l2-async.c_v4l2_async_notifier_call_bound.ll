; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_call_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_call_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @v4l2_async_notifier_call_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_async_notifier_call_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %8 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)**
  %18 = load i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)*, i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)** %17, align 8
  %19 = icmp ne i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %32

21:                                               ; preds = %12
  %22 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)**
  %27 = load i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)*, i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)** %26, align 8
  %28 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %30 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %7, align 8
  %31 = call i32 %27(%struct.v4l2_async_notifier* %28, %struct.v4l2_subdev* %29, %struct.v4l2_async_subdev* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %20
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
