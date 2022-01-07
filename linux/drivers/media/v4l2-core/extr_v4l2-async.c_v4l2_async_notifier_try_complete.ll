; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_try_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-async.c_v4l2_async_notifier_try_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { i32, %struct.v4l2_async_notifier*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*)* @v4l2_async_notifier_try_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_async_notifier_try_complete(%struct.v4l2_async_notifier* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_async_notifier*, align 8
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %3, align 8
  %4 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %5 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %4, i32 0, i32 2
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %11, i32 0, i32 1
  %13 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %12, align 8
  %14 = icmp ne %struct.v4l2_async_notifier* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %16, i32 0, i32 1
  %18 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %17, align 8
  store %struct.v4l2_async_notifier* %18, %struct.v4l2_async_notifier** %3, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %33

25:                                               ; preds = %19
  %26 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %27 = call i32 @v4l2_async_notifier_can_complete(%struct.v4l2_async_notifier* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %32 = call i32 @v4l2_async_notifier_call_complete(%struct.v4l2_async_notifier* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %29, %24, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @v4l2_async_notifier_can_complete(%struct.v4l2_async_notifier*) #1

declare dso_local i32 @v4l2_async_notifier_call_complete(%struct.v4l2_async_notifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
