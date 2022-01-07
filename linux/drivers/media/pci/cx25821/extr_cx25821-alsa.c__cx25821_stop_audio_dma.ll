; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c__cx25821_stop_audio_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c__cx25821_stop_audio_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_audio_dev = type { %struct.cx25821_dev* }
%struct.cx25821_dev = type { i32 }

@AUD_INT_DMA_CTL = common dso_local global i32 0, align 4
@FLD_AUD_DST_A_RISC_EN = common dso_local global i32 0, align 4
@FLD_AUD_DST_A_FIFO_EN = common dso_local global i32 0, align 4
@PCI_INT_MSK = common dso_local global i32 0, align 4
@PCI_MSK_AUD_INT = common dso_local global i32 0, align 4
@AUD_A_INT_MSK = common dso_local global i32 0, align 4
@AUD_INT_OPC_ERR = common dso_local global i32 0, align 4
@AUD_INT_DN_SYNC = common dso_local global i32 0, align 4
@AUD_INT_DN_RISCI2 = common dso_local global i32 0, align 4
@AUD_INT_DN_RISCI1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx25821_audio_dev*)* @_cx25821_stop_audio_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cx25821_stop_audio_dma(%struct.cx25821_audio_dev* %0) #0 {
  %2 = alloca %struct.cx25821_audio_dev*, align 8
  %3 = alloca %struct.cx25821_dev*, align 8
  store %struct.cx25821_audio_dev* %0, %struct.cx25821_audio_dev** %2, align 8
  %4 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %4, i32 0, i32 0
  %6 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  store %struct.cx25821_dev* %6, %struct.cx25821_dev** %3, align 8
  %7 = load i32, i32* @AUD_INT_DMA_CTL, align 4
  %8 = load i32, i32* @FLD_AUD_DST_A_RISC_EN, align 4
  %9 = load i32, i32* @FLD_AUD_DST_A_FIFO_EN, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @cx_clear(i32 %7, i32 %10)
  %12 = load i32, i32* @PCI_INT_MSK, align 4
  %13 = load i32, i32* @PCI_MSK_AUD_INT, align 4
  %14 = call i32 @cx_clear(i32 %12, i32 %13)
  %15 = load i32, i32* @AUD_A_INT_MSK, align 4
  %16 = load i32, i32* @AUD_INT_OPC_ERR, align 4
  %17 = load i32, i32* @AUD_INT_DN_SYNC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AUD_INT_DN_RISCI2, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AUD_INT_DN_RISCI1, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @cx_clear(i32 %15, i32 %22)
  ret i32 0
}

declare dso_local i32 @cx_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
