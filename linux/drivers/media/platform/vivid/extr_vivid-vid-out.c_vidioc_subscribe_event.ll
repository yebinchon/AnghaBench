; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vidioc_subscribe_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-out.c_vidioc_subscribe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_event_subscription = type { i32 }

@VFL_DIR_RX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidioc_subscribe_event(%struct.v4l2_fh* %0, %struct.v4l2_event_subscription* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.v4l2_event_subscription*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store %struct.v4l2_event_subscription* %1, %struct.v4l2_event_subscription** %5, align 8
  %6 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %22 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VFL_DIR_RX, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %19 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %20 = call i32 @v4l2_src_change_event_subscribe(%struct.v4l2_fh* %18, %struct.v4l2_event_subscription* %19)
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %9
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %24 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %25 = call i32 @v4l2_ctrl_subscribe_event(%struct.v4l2_fh* %23, %struct.v4l2_event_subscription* %24)
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %22, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @v4l2_src_change_event_subscribe(%struct.v4l2_fh*, %struct.v4l2_event_subscription*) #1

declare dso_local i32 @v4l2_ctrl_subscribe_event(%struct.v4l2_fh*, %struct.v4l2_event_subscription*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
