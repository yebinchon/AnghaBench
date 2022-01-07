; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.video_device = type { i32 }
%struct.v4l2_subdev = type { i32 }

@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @subdev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subdev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %6, align 8
  %11 = load %struct.video_device*, %struct.video_device** %6, align 8
  %12 = call %struct.v4l2_subdev* @vdev_to_v4l2_subdev(%struct.video_device* %11)
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %7, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.v4l2_fh*, %struct.v4l2_fh** %14, align 8
  store %struct.v4l2_fh* %15, %struct.v4l2_fh** %8, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EPOLLERR, align 4
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %27 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %26, i32 0, i32 0
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @poll_wait(%struct.file* %25, i32* %27, i32* %28)
  %30 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %31 = call i64 @v4l2_event_pending(%struct.v4l2_fh* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @EPOLLPRI, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %33, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.v4l2_subdev* @vdev_to_v4l2_subdev(%struct.video_device*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @v4l2_event_pending(%struct.v4l2_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
