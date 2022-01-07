; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_device = type { i32 }
%struct.v4l2_async_notifier = type { %struct.v4l2_device*, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_async_notifier_register(%struct.v4l2_device* %0, %struct.v4l2_async_notifier* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_device* %0, %struct.v4l2_device** %4, align 8
  store %struct.v4l2_async_notifier* %1, %struct.v4l2_async_notifier** %5, align 8
  %7 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %8 = icmp ne %struct.v4l2_device* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ true, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %14
  %23 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %24 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %24, i32 0, i32 0
  store %struct.v4l2_device* %23, %struct.v4l2_device** %25, align 8
  %26 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %27 = call i32 @__v4l2_async_notifier_register(%struct.v4l2_async_notifier* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %31, i32 0, i32 0
  store %struct.v4l2_device* null, %struct.v4l2_device** %32, align 8
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__v4l2_async_notifier_register(%struct.v4l2_async_notifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
