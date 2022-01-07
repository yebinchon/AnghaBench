; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_subscribe_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_subscribe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32 }
%struct.v4l2_event_subscription = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fh*, %struct.v4l2_event_subscription*)* @cobalt_subscribe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_subscribe_event(%struct.v4l2_fh* %0, %struct.v4l2_event_subscription* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.v4l2_event_subscription*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %4, align 8
  store %struct.v4l2_event_subscription* %1, %struct.v4l2_event_subscription** %5, align 8
  %6 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %13 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %11 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %12 = call i32 @v4l2_event_subscribe(%struct.v4l2_fh* %10, %struct.v4l2_event_subscription* %11, i32 4, i32* null)
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %15 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %5, align 8
  %16 = call i32 @v4l2_ctrl_subscribe_event(%struct.v4l2_fh* %14, %struct.v4l2_event_subscription* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @v4l2_event_subscribe(%struct.v4l2_fh*, %struct.v4l2_event_subscription*, i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_subscribe_event(%struct.v4l2_fh*, %struct.v4l2_event_subscription*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
