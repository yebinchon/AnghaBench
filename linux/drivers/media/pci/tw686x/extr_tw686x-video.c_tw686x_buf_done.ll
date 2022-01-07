; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_buf_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_buf_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_video_channel = type { i32, i32, %struct.TYPE_3__**, %struct.tw686x_dev*, %struct.tw686x_dma_desc* }
%struct.TYPE_3__ = type { %struct.vb2_v4l2_buffer }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i64, i32 }
%struct.vb2_buffer = type { i32 }
%struct.tw686x_dev = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tw686x_dma_desc = type { i32, i32 }

@TW686X_DMA_MODE_MEMCPY = common dso_local global i64 0, align 8
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw686x_video_channel*, i32)* @tw686x_buf_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw686x_buf_done(%struct.tw686x_video_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.tw686x_video_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw686x_dma_desc*, align 8
  %6 = alloca %struct.tw686x_dev*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_buffer*, align 8
  store %struct.tw686x_video_channel* %0, %struct.tw686x_video_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %10 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %9, i32 0, i32 4
  %11 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %11, i64 %13
  store %struct.tw686x_dma_desc* %14, %struct.tw686x_dma_desc** %5, align 8
  %15 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %16 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %15, i32 0, i32 3
  %17 = load %struct.tw686x_dev*, %struct.tw686x_dev** %16, align 8
  store %struct.tw686x_dev* %17, %struct.tw686x_dev** %6, align 8
  %18 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %19 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %73

26:                                               ; preds = %2
  %27 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %28 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.vb2_v4l2_buffer* %34, %struct.vb2_v4l2_buffer** %7, align 8
  %35 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %36 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %41 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %43 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = sext i32 %44 to i64
  %47 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %48 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %50 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %49, i32 0, i32 0
  store %struct.vb2_buffer* %50, %struct.vb2_buffer** %8, align 8
  %51 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %52 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TW686X_DMA_MODE_MEMCPY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %26
  %57 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %58 = call i32 @vb2_plane_vaddr(%struct.vb2_buffer* %57, i32 0)
  %59 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %5, align 8
  %60 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tw686x_dma_desc*, %struct.tw686x_dma_desc** %5, align 8
  %63 = getelementptr inbounds %struct.tw686x_dma_desc, %struct.tw686x_dma_desc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(i32 %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %56, %26
  %67 = call i32 (...) @ktime_get_ns()
  %68 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %69 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %71 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %72 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %2
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %79 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
