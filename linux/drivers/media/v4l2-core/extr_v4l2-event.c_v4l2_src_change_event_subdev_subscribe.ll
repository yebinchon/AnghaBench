; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c_v4l2_src_change_event_subdev_subscribe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-event.c_v4l2_src_change_event_subdev_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_event_subscription = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_src_change_event_subdev_subscribe(%struct.v4l2_subdev* %0, %struct.v4l2_fh* %1, %struct.v4l2_event_subscription* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_fh*, align 8
  %6 = alloca %struct.v4l2_event_subscription*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_fh* %1, %struct.v4l2_fh** %5, align 8
  store %struct.v4l2_event_subscription* %2, %struct.v4l2_event_subscription** %6, align 8
  %7 = load %struct.v4l2_fh*, %struct.v4l2_fh** %5, align 8
  %8 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %6, align 8
  %9 = call i32 @v4l2_src_change_event_subscribe(%struct.v4l2_fh* %7, %struct.v4l2_event_subscription* %8)
  ret i32 %9
}

declare dso_local i32 @v4l2_src_change_event_subscribe(%struct.v4l2_fh*, %struct.v4l2_event_subscription*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
