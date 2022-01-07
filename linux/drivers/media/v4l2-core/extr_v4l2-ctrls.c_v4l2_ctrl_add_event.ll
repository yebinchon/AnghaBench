; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subscribed_event = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_ctrl = type { i64, i32, i32 }
%struct.v4l2_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_CTRL_CLASS = common dso_local global i64 0, align 8
@V4L2_EVENT_SUB_FL_SEND_INITIAL = common dso_local global i32 0, align 4
@V4L2_EVENT_CTRL_CH_FLAGS = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i32 0, align 4
@V4L2_EVENT_CTRL_CH_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subscribed_event*, i32)* @v4l2_ctrl_add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_ctrl_add_event(%struct.v4l2_subscribed_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subscribed_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca %struct.v4l2_event, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subscribed_event* %0, %struct.v4l2_subscribed_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %13, i32 %16)
  store %struct.v4l2_ctrl* %17, %struct.v4l2_ctrl** %6, align 8
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %19 = icmp eq %struct.v4l2_ctrl* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %69

23:                                               ; preds = %2
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %25 = call i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl* %24)
  %26 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %26, i32 0, i32 3
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 2
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_CTRL_TYPE_CTRL_CLASS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %23
  %37 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @V4L2_EVENT_SUB_FL_SEND_INITIAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load i32, i32* @V4L2_EVENT_CTRL_CH_FLAGS, align 4
  store i32 %44, i32* %8, align 4
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @V4L2_CTRL_FLAG_WRITE_ONLY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @V4L2_EVENT_CTRL_CH_VALUE, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %43
  %56 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @fill_event(%struct.v4l2_event* %7, %struct.v4l2_ctrl* %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %4, align 8
  %63 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = call i32 @v4l2_event_queue_fh(%struct.TYPE_2__* %64, %struct.v4l2_event* %7)
  br label %66

66:                                               ; preds = %55, %36, %23
  %67 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %68 = call i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @fill_event(%struct.v4l2_event*, %struct.v4l2_ctrl*, i32) #1

declare dso_local i32 @v4l2_event_queue_fh(%struct.TYPE_2__*, %struct.v4l2_event*) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
