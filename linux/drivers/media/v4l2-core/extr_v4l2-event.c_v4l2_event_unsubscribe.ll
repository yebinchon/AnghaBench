; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c_v4l2_event_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c_v4l2_event_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_event_subscription = type { i64, i32 }
%struct.v4l2_subscribed_event = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.v4l2_subscribed_event*)* }

@V4L2_EVENT_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_event_unsubscribe(%struct.v4l2_fh* %0, %struct.v4l2_event_subscription* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.v4l2_event_subscription*, align 8
  %6 = alloca %struct.v4l2_subscribed_event*, align 8
  %7 = alloca i64, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store %struct.v4l2_event_subscription* %1, %struct.v4l2_event_subscription** %5, align 8
  %8 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @V4L2_EVENT_ALL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %15 = call i32 @v4l2_event_unsubscribe_all(%struct.v4l2_fh* %14)
  store i32 0, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %27 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh* %26, i64 %29, i32 %32)
  store %struct.v4l2_subscribed_event* %33, %struct.v4l2_subscribed_event** %6, align 8
  %34 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %35 = icmp ne %struct.v4l2_subscribed_event* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %16
  %37 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %38 = call i32 @__v4l2_event_unsubscribe(%struct.v4l2_subscribed_event* %37)
  br label %39

39:                                               ; preds = %36, %16
  %40 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %47 = icmp ne %struct.v4l2_subscribed_event* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %39
  %49 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.v4l2_subscribed_event*)*, i32 (%struct.v4l2_subscribed_event*)** %57, align 8
  %59 = icmp ne i32 (%struct.v4l2_subscribed_event*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.v4l2_subscribed_event*)*, i32 (%struct.v4l2_subscribed_event*)** %64, align 8
  %66 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %67 = call i32 %65(%struct.v4l2_subscribed_event* %66)
  br label %68

68:                                               ; preds = %60, %53, %48, %39
  %69 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %70 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %6, align 8
  %73 = call i32 @kvfree(%struct.v4l2_subscribed_event* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @v4l2_event_unsubscribe_all(%struct.v4l2_fh*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh*, i64, i32) #1

declare dso_local i32 @__v4l2_event_unsubscribe(%struct.v4l2_subscribed_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvfree(%struct.v4l2_subscribed_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
