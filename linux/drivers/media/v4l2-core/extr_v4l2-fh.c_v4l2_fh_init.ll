; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fh.c_v4l2_fh_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fh.c_v4l2_fh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32, i32, i32, i32, i32, i32, %struct.video_device*, i32, i32 }
%struct.video_device = type { i32*, i32, i32 }

@V4L2_FL_USES_V4L2_FH = common dso_local global i32 0, align 4
@VIDIOC_G_PRIORITY = common dso_local global i32 0, align 4
@VIDIOC_S_PRIORITY = common dso_local global i32 0, align 4
@V4L2_PRIORITY_UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_fh_init(%struct.v4l2_fh* %0, %struct.video_device* %1) #0 {
  %3 = alloca %struct.v4l2_fh*, align 8
  %4 = alloca %struct.video_device*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %3, align 8
  store %struct.video_device* %1, %struct.video_device** %4, align 8
  %5 = load %struct.video_device*, %struct.video_device** %4, align 8
  %6 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %6, i32 0, i32 6
  store %struct.video_device* %5, %struct.video_device** %7, align 8
  %8 = load %struct.video_device*, %struct.video_device** %4, align 8
  %9 = getelementptr inbounds %struct.video_device, %struct.video_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 4
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %13, i32 0, i32 7
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load i32, i32* @V4L2_FL_USES_V4L2_FH, align 4
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %18 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %17, i32 0, i32 6
  %19 = load %struct.video_device*, %struct.video_device** %18, align 8
  %20 = getelementptr inbounds %struct.video_device, %struct.video_device* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %16, i32* %20)
  %22 = load i32, i32* @VIDIOC_G_PRIORITY, align 4
  %23 = call i32 @_IOC_NR(i32 %22)
  %24 = load %struct.video_device*, %struct.video_device** %4, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @set_bit(i32 %23, i32* %26)
  %28 = load i32, i32* @VIDIOC_S_PRIORITY, align 4
  %29 = call i32 @_IOC_NR(i32 %28)
  %30 = load %struct.video_device*, %struct.video_device** %4, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @set_bit(i32 %29, i32* %32)
  %34 = load i32, i32* @V4L2_PRIORITY_UNSET, align 4
  %35 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %36 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %37, i32 0, i32 4
  %39 = call i32 @init_waitqueue_head(i32* %38)
  %40 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %40, i32 0, i32 3
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %44 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %43, i32 0, i32 2
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %47 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = load %struct.v4l2_fh*, %struct.v4l2_fh** %3, align 8
  %49 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %48, i32 0, i32 1
  %50 = call i32 @mutex_init(i32* %49)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @_IOC_NR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
