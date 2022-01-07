; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_subdev_subscribe_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_subdev_subscribe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_event_subscription = type { i64, i64 }

@V4L2_EVENT_FRAME_SYNC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_fh*, %struct.v4l2_event_subscription*)* @cio2_subdev_subscribe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio2_subdev_subscribe_event(%struct.v4l2_subdev* %0, %struct.v4l2_fh* %1, %struct.v4l2_event_subscription* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_fh*, align 8
  %7 = alloca %struct.v4l2_event_subscription*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_fh* %1, %struct.v4l2_fh** %6, align 8
  store %struct.v4l2_event_subscription* %2, %struct.v4l2_event_subscription** %7, align 8
  %8 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @V4L2_EVENT_FRAME_SYNC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %28

16:                                               ; preds = %3
  %17 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %16
  %25 = load %struct.v4l2_fh*, %struct.v4l2_fh** %6, align 8
  %26 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %7, align 8
  %27 = call i32 @v4l2_event_subscribe(%struct.v4l2_fh* %25, %struct.v4l2_event_subscription* %26, i32 0, i32* null)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %21, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @v4l2_event_subscribe(%struct.v4l2_fh*, %struct.v4l2_event_subscription*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
