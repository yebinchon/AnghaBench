; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.video_device = type { i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@V4L2_FL_USES_V4L2_FH = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_poll(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, %struct.poll_table_struct* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca %struct.poll_table_struct*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_fh*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %5, align 8
  store %struct.poll_table_struct* %2, %struct.poll_table_struct** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file* %11)
  store %struct.video_device* %12, %struct.video_device** %7, align 8
  %13 = load %struct.poll_table_struct*, %struct.poll_table_struct** %6, align 8
  %14 = call i32 @poll_requested_events(%struct.poll_table_struct* %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @EPOLLOUT, align 4
  %17 = load i32, i32* @EPOLLWRNORM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @EPOLLIN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @EPOLLRDNORM, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %15, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %28 = load %struct.poll_table_struct*, %struct.poll_table_struct** %6, align 8
  %29 = call i32 @v4l2_m2m_poll_for_data(%struct.file* %26, %struct.v4l2_m2m_ctx* %27, %struct.poll_table_struct* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %25, %3
  %31 = load i32, i32* @V4L2_FL_USES_V4L2_FH, align 4
  %32 = load %struct.video_device*, %struct.video_device** %7, align 8
  %33 = getelementptr inbounds %struct.video_device, %struct.video_device* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load %struct.v4l2_fh*, %struct.v4l2_fh** %38, align 8
  store %struct.v4l2_fh* %39, %struct.v4l2_fh** %10, align 8
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %42 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %41, i32 0, i32 0
  %43 = load %struct.poll_table_struct*, %struct.poll_table_struct** %6, align 8
  %44 = call i32 @poll_wait(%struct.file* %40, i32* %42, %struct.poll_table_struct* %43)
  %45 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %46 = call i64 @v4l2_event_pending(%struct.v4l2_fh* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* @EPOLLPRI, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %36
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @poll_requested_events(%struct.poll_table_struct*) #1

declare dso_local i32 @v4l2_m2m_poll_for_data(%struct.file*, %struct.v4l2_m2m_ctx*, %struct.poll_table_struct*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i64 @v4l2_event_pending(%struct.v4l2_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
