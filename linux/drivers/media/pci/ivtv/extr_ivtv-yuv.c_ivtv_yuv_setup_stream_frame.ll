; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_setup_stream_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-yuv.c_ivtv_yuv_setup_stream_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64, %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i64, i32, i32, i32 }
%struct.ivtv_dma_frame = type { i32, i32, i32, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@yuv_offset = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_yuv_setup_stream_frame(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.yuv_playback_info*, align 8
  %4 = alloca %struct.ivtv_dma_frame, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %6 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %5, i32 0, i32 1
  store %struct.yuv_playback_info* %6, %struct.yuv_playback_info** %3, align 8
  %7 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %8 = call i32 @ivtv_yuv_next_free(%struct.ivtv* %7)
  %9 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %4, i32 0, i32 5
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %4, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %4, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %4, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %16 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %4, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %21 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %4, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %26 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %4, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %30 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %4, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %34 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %4, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %38 = call i32 @ivtv_yuv_setup_frame(%struct.ivtv* %37, %struct.ivtv_dma_frame* %4)
  %39 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %40 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %1
  %44 = load i64*, i64** @yuv_offset, align 8
  %45 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %3, align 8
  %46 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @ivtv_yuv_next_free(%struct.ivtv*) #1

declare dso_local i32 @ivtv_yuv_setup_frame(%struct.ivtv*, %struct.ivtv_dma_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
