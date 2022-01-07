; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c_cx25821_alsa_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c_cx25821_alsa_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_audio_dev = type { %struct.TYPE_2__*, %struct.cx25821_audio_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.cx25821_audio_buffer = type { i64, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx25821_audio_dev*)* @cx25821_alsa_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25821_alsa_dma_unmap(%struct.cx25821_audio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx25821_audio_dev*, align 8
  %4 = alloca %struct.cx25821_audio_buffer*, align 8
  store %struct.cx25821_audio_dev* %0, %struct.cx25821_audio_dev** %3, align 8
  %5 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %3, align 8
  %6 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %5, i32 0, i32 1
  %7 = load %struct.cx25821_audio_buffer*, %struct.cx25821_audio_buffer** %6, align 8
  store %struct.cx25821_audio_buffer* %7, %struct.cx25821_audio_buffer** %4, align 8
  %8 = load %struct.cx25821_audio_buffer*, %struct.cx25821_audio_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.cx25821_audio_buffer, %struct.cx25821_audio_buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %3, align 8
  %15 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.cx25821_audio_buffer*, %struct.cx25821_audio_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.cx25821_audio_buffer, %struct.cx25821_audio_buffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cx25821_audio_buffer*, %struct.cx25821_audio_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.cx25821_audio_buffer, %struct.cx25821_audio_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %25 = call i32 @dma_unmap_sg(i32* %17, i32 %20, i64 %23, i32 %24)
  %26 = load %struct.cx25821_audio_buffer*, %struct.cx25821_audio_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.cx25821_audio_buffer, %struct.cx25821_audio_buffer* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
