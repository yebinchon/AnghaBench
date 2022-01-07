; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_viu_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_viu_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.viu_fh* }
%struct.viu_fh = type { i64, %struct.viu_dev*, %struct.videobuf_queue }
%struct.viu_dev = type { i32 }
%struct.videobuf_queue = type { i32 }
%struct.poll_table_struct = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @viu_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viu_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.viu_fh*, align 8
  %7 = alloca %struct.videobuf_queue*, align 8
  %8 = alloca %struct.viu_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.viu_fh*, %struct.viu_fh** %12, align 8
  store %struct.viu_fh* %13, %struct.viu_fh** %6, align 8
  %14 = load %struct.viu_fh*, %struct.viu_fh** %6, align 8
  %15 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %14, i32 0, i32 2
  store %struct.videobuf_queue* %15, %struct.videobuf_queue** %7, align 8
  %16 = load %struct.viu_fh*, %struct.viu_fh** %6, align 8
  %17 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %16, i32 0, i32 1
  %18 = load %struct.viu_dev*, %struct.viu_dev** %17, align 8
  store %struct.viu_dev* %18, %struct.viu_dev** %8, align 8
  %19 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %20 = call i32 @poll_requested_events(%struct.poll_table_struct* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %23 = call i32 @v4l2_ctrl_poll(%struct.file* %21, %struct.poll_table_struct* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %25 = load %struct.viu_fh*, %struct.viu_fh** %6, align 8
  %26 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @EPOLLERR, align 4
  store i32 %30, i32* %3, align 4
  br label %54

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @EPOLLIN, align 4
  %34 = load i32, i32* @EPOLLRDNORM, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %54

40:                                               ; preds = %31
  %41 = load %struct.viu_dev*, %struct.viu_dev** %8, align 8
  %42 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = load %struct.videobuf_queue*, %struct.videobuf_queue** %7, align 8
  %46 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %47 = call i32 @videobuf_poll_stream(%struct.file* %44, %struct.videobuf_queue* %45, %struct.poll_table_struct* %46)
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.viu_dev*, %struct.viu_dev** %8, align 8
  %51 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %40, %38, %29
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @poll_requested_events(%struct.poll_table_struct*) #1

declare dso_local i32 @v4l2_ctrl_poll(%struct.file*, %struct.poll_table_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @videobuf_poll_stream(%struct.file*, %struct.videobuf_queue*, %struct.poll_table_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
