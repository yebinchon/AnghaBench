; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_complete_eos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_complete_eos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.delta_frame = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_event = type { i32 }

@V4L2_EVENT_EOS = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s EOS completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delta_ctx*, %struct.delta_frame*)* @delta_complete_eos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_complete_eos(%struct.delta_ctx* %0, %struct.delta_frame* %1) #0 {
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_frame*, align 8
  %5 = alloca %struct.delta_dev*, align 8
  %6 = alloca %struct.v4l2_event, align 4
  store %struct.delta_ctx* %0, %struct.delta_ctx** %3, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %4, align 8
  %7 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %7, i32 0, i32 2
  %9 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  store %struct.delta_dev* %9, %struct.delta_dev** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %6, i32 0, i32 0
  %11 = load i32, i32* @V4L2_EVENT_EOS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %13 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %16 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %17 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %21 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %22 = call i32 @delta_frame_done(%struct.delta_ctx* %20, %struct.delta_frame* %21, i32 0)
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %23, i32 0, i32 1
  %25 = call i32 @v4l2_event_queue_fh(i32* %24, %struct.v4l2_event* %6)
  %26 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %27 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @delta_frame_done(%struct.delta_ctx*, %struct.delta_frame*, i32) #1

declare dso_local i32 @v4l2_event_queue_fh(i32*, %struct.v4l2_event*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
