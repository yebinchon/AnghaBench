; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c_v4l2_event_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c_v4l2_event_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_event = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_event_dequeue(%struct.v4l2_fh* %0, %struct.v4l2_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_fh*, align 8
  %6 = alloca %struct.v4l2_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %5, align 8
  store %struct.v4l2_event* %1, %struct.v4l2_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %13 = load %struct.v4l2_event*, %struct.v4l2_event** %6, align 8
  %14 = call i32 @__v4l2_event_dequeue(%struct.v4l2_fh* %12, %struct.v4l2_event* %13)
  store i32 %14, i32* %4, align 4
  br label %68

15:                                               ; preds = %3
  %16 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mutex_unlock(i64 %27)
  br label %29

29:                                               ; preds = %22, %15
  br label %30

30:                                               ; preds = %47, %29
  %31 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @wait_event_interruptible(i32 %33, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %52

43:                                               ; preds = %30
  %44 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %45 = load %struct.v4l2_event*, %struct.v4l2_event** %6, align 8
  %46 = call i32 @__v4l2_event_dequeue(%struct.v4l2_fh* %44, %struct.v4l2_event* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %30, label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @mutex_lock(i64 %64)
  br label %66

66:                                               ; preds = %59, %52
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %11
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @__v4l2_event_dequeue(%struct.v4l2_fh*, %struct.v4l2_event*) #1

declare dso_local i32 @mutex_unlock(i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @mutex_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
