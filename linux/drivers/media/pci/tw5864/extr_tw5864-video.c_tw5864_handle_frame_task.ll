; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_handle_frame_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_handle_frame_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_dev = type { i64, i64, i32, %struct.TYPE_5__*, %struct.tw5864_h264_frame* }
%struct.TYPE_5__ = type { i32 }
%struct.tw5864_h264_frame = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@H264_BUF_CNT = common dso_local global i32 0, align 4
@H264_VLC_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@H264_MV_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tw5864_handle_frame_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw5864_handle_frame_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tw5864_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tw5864_h264_frame*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.tw5864_dev*
  store %struct.tw5864_dev* %8, %struct.tw5864_dev** %3, align 8
  %9 = load i32, i32* @H264_BUF_CNT, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %11 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %10, i32 0, i32 2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  br label %14

14:                                               ; preds = %28, %1
  %15 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %16 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %19 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %5, align 4
  %25 = icmp ne i32 %23, 0
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i1 [ false, %14 ], [ %25, %22 ]
  br i1 %27, label %28, label %100

28:                                               ; preds = %26
  %29 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %30 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %29, i32 0, i32 4
  %31 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %30, align 8
  %32 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %33 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %31, i64 %34
  store %struct.tw5864_h264_frame* %35, %struct.tw5864_h264_frame** %6, align 8
  %36 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %37 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %36, i32 0, i32 2
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %41 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %6, align 8
  %45 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @H264_VLC_BUF_SIZE, align 4
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %50 = call i32 @dma_sync_single_for_cpu(i32* %43, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %52 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %6, align 8
  %56 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @H264_MV_BUF_SIZE, align 4
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %61 = call i32 @dma_sync_single_for_cpu(i32* %54, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %6, align 8
  %63 = call i32 @tw5864_handle_frame(%struct.tw5864_h264_frame* %62)
  %64 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %65 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %6, align 8
  %69 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @H264_VLC_BUF_SIZE, align 4
  %73 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %74 = call i32 @dma_sync_single_for_device(i32* %67, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %76 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %6, align 8
  %80 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @H264_MV_BUF_SIZE, align 4
  %84 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %85 = call i32 @dma_sync_single_for_device(i32* %78, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %87 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %86, i32 0, i32 2
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %91 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load i32, i32* @H264_BUF_CNT, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %97 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = urem i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %14

100:                                              ; preds = %26
  %101 = load %struct.tw5864_dev*, %struct.tw5864_dev** %3, align 8
  %102 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %101, i32 0, i32 2
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @tw5864_handle_frame(%struct.tw5864_h264_frame*) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
