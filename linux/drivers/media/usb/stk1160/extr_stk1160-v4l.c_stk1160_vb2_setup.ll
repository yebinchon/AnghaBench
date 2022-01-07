; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_vb2_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_vb2_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32, i32, %struct.vb2_queue }
%struct.vb2_queue = type { i32, i32, i32, i32*, i32*, i32*, %struct.stk1160*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@stk1160_video_qops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stk1160_vb2_setup(%struct.stk1160* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk1160*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_queue*, align 8
  store %struct.stk1160* %0, %struct.stk1160** %3, align 8
  %6 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %7 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %6, i32 0, i32 2
  store %struct.vb2_queue* %7, %struct.vb2_queue** %5, align 8
  %8 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %10 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @VB2_READ, align 4
  %12 = load i32, i32* @VB2_MMAP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VB2_USERPTR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @VB2_DMABUF, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 6
  store %struct.stk1160* %20, %struct.stk1160** %22, align 8
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 1
  store i32 4, i32* %24, align 4
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 5
  store i32* @stk1160_video_qops, i32** %26, align 8
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %28 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %27, i32 0, i32 4
  store i32* @vb2_vmalloc_memops, i32** %28, align 8
  %29 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %30 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %29, i32 0, i32 1
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %34 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %35 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %37 = call i32 @vb2_queue_init(%struct.vb2_queue* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %1
  %43 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %44 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %43, i32 0, i32 0
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
