; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_v4l2_subdev_notify_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_v4l2_subdev_notify_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_event = type { i32 }

@V4L2_DEVICE_NOTIFY_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_subdev_notify_event(%struct.v4l2_subdev* %0, %struct.v4l2_event* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_event*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_event* %1, %struct.v4l2_event** %4, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %9 = call i32 @v4l2_event_queue(i32 %7, %struct.v4l2_event* %8)
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = load i32, i32* @V4L2_DEVICE_NOTIFY_EVENT, align 4
  %12 = load %struct.v4l2_event*, %struct.v4l2_event** %4, align 8
  %13 = bitcast %struct.v4l2_event* %12 to i8*
  %14 = call i32 @v4l2_subdev_notify(%struct.v4l2_subdev* %10, i32 %11, i8* %13)
  ret void
}

declare dso_local i32 @v4l2_event_queue(i32, %struct.v4l2_event*) #1

declare dso_local i32 @v4l2_subdev_notify(%struct.v4l2_subdev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
