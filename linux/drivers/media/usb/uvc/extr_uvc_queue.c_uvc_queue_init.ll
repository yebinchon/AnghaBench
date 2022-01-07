; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_queue.c_uvc_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32*, i32*, i32*, %struct.uvc_video_queue* }

@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_SOE = common dso_local global i32 0, align 4
@uvc_meta_queue_qops = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@uvc_queue_qops = common dso_local global i32 0, align 4
@UVC_QUEUE_DROP_CORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_queue_init(%struct.uvc_video_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_video_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %11 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @VB2_MMAP, align 4
  %14 = load i32, i32* @VB2_USERPTR, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %17 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %20 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %21 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 7
  store %struct.uvc_video_queue* %19, %struct.uvc_video_queue** %22, align 8
  %23 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %24 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 4, i32* %25, align 8
  %26 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %27 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  store i32* @vb2_vmalloc_memops, i32** %28, align 8
  %29 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %30 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_SOE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %33 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %36 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %35, i32 0, i32 3
  %37 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %38 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  store i32* %36, i32** %39, align 8
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %45 [
    i32 128, label %41
  ]

41:                                               ; preds = %3
  %42 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %43 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i32* @uvc_meta_queue_qops, i32** %44, align 8
  br label %55

45:                                               ; preds = %3
  %46 = load i32, i32* @VB2_DMABUF, align 4
  %47 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %48 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %53 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  store i32* @uvc_queue_qops, i32** %54, align 8
  br label %55

55:                                               ; preds = %45, %41
  %56 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %57 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %56, i32 0, i32 4
  %58 = call i32 @vb2_queue_init(%struct.TYPE_2__* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %82

63:                                               ; preds = %55
  %64 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %65 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %64, i32 0, i32 3
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %68 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %71 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %70, i32 0, i32 1
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @UVC_QUEUE_DROP_CORRUPTED, align 4
  br label %78

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ]
  %80 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %5, align 8
  %81 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %61
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @vb2_queue_init(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
