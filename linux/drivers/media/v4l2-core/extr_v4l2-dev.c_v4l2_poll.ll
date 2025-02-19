; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dev.c_v4l2_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dev.c_v4l2_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.video_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, %struct.poll_table_struct*)* }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@V4L2_DEV_DEBUG_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: poll: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @v4l2_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %6, align 8
  %10 = load i32, i32* @EPOLLERR, align 4
  %11 = load i32, i32* @EPOLLHUP, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.video_device*, %struct.video_device** %6, align 8
  %14 = getelementptr inbounds %struct.video_device, %struct.video_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %16, align 8
  %18 = icmp ne i32 (%struct.file*, %struct.poll_table_struct*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.video_device*, %struct.video_device** %6, align 8
  %23 = call i64 @video_is_registered(%struct.video_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.video_device*, %struct.video_device** %6, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %29, align 8
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %33 = call i32 %30(%struct.file* %31, %struct.poll_table_struct* %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %25, %21
  %35 = load %struct.video_device*, %struct.video_device** %6, align 8
  %36 = getelementptr inbounds %struct.video_device, %struct.video_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @V4L2_DEV_DEBUG_POLL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.video_device*, %struct.video_device** %6, align 8
  %43 = call i32 @video_device_node_name(%struct.video_device* %42)
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i64 @video_is_registered(%struct.video_device*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
