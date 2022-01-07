; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_cx23885_stop_audio_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_cx23885_stop_audio_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_audio_dev = type { %struct.cx23885_dev* }
%struct.cx23885_dev = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"Stopping audio DMA\0A\00", align 1
@AUD_INT_DMA_CTL = common dso_local global i32 0, align 4
@PCI_INT_MSK = common dso_local global i32 0, align 4
@PCI_MSK_AUD_INT = common dso_local global i32 0, align 4
@AUDIO_INT_INT_MSK = common dso_local global i32 0, align 4
@AUD_INT_OPC_ERR = common dso_local global i32 0, align 4
@AUD_INT_DN_SYNC = common dso_local global i32 0, align 4
@AUD_INT_DN_RISCI1 = common dso_local global i32 0, align 4
@audio_debug = common dso_local global i64 0, align 8
@AUDIO_SRAM_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_audio_dev*)* @cx23885_stop_audio_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_stop_audio_dma(%struct.cx23885_audio_dev* %0) #0 {
  %2 = alloca %struct.cx23885_audio_dev*, align 8
  %3 = alloca %struct.cx23885_dev*, align 8
  store %struct.cx23885_audio_dev* %0, %struct.cx23885_audio_dev** %2, align 8
  %4 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %4, i32 0, i32 0
  %6 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  store %struct.cx23885_dev* %6, %struct.cx23885_dev** %3, align 8
  %7 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @AUD_INT_DMA_CTL, align 4
  %9 = call i32 @cx_clear(i32 %8, i32 17)
  %10 = load i32, i32* @PCI_INT_MSK, align 4
  %11 = load i32, i32* @PCI_MSK_AUD_INT, align 4
  %12 = call i32 @cx_clear(i32 %10, i32 %11)
  %13 = load i32, i32* @AUDIO_INT_INT_MSK, align 4
  %14 = load i32, i32* @AUD_INT_OPC_ERR, align 4
  %15 = load i32, i32* @AUD_INT_DN_SYNC, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AUD_INT_DN_RISCI1, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @cx_clear(i32 %13, i32 %18)
  %20 = load i64, i64* @audio_debug, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %24 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %23, i32 0, i32 0
  %25 = load %struct.cx23885_dev*, %struct.cx23885_dev** %24, align 8
  %26 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %27 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @AUDIO_SRAM_CHANNEL, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i32 @cx23885_sram_channel_dump(%struct.cx23885_dev* %25, i32* %30)
  br label %32

32:                                               ; preds = %22, %1
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx23885_sram_channel_dump(%struct.cx23885_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
