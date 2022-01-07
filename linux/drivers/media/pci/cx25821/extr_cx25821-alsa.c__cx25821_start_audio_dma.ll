; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c__cx25821_start_audio_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c__cx25821_start_audio_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_channel = type { i32 }
%struct.cx25821_audio_dev = type { %struct.cx25821_dev*, i32, %struct.cx25821_audio_buffer* }
%struct.cx25821_dev = type { i32 }
%struct.cx25821_audio_buffer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cx25821_sram_channels = common dso_local global %struct.sram_channel* null, align 8
@AUDIO_SRAM_CHANNEL = common dso_local global i64 0, align 8
@AUD_INT_DMA_CTL = common dso_local global i32 0, align 4
@FLD_AUD_DST_A_RISC_EN = common dso_local global i32 0, align 4
@FLD_AUD_DST_A_FIFO_EN = common dso_local global i32 0, align 4
@AUD_A_LNGTH = common dso_local global i32 0, align 4
@AUD_A_GPCNT_CTL = common dso_local global i32 0, align 4
@GP_COUNT_CONTROL_RESET = common dso_local global i32 0, align 4
@AUD_A_CFG = common dso_local global i32 0, align 4
@FLD_AUD_DST_PK_MODE = common dso_local global i32 0, align 4
@FLD_AUD_DST_ENABLE = common dso_local global i32 0, align 4
@FLD_AUD_CLK_ENABLE = common dso_local global i32 0, align 4
@AUD_A_INT_MSK = common dso_local global i32 0, align 4
@FLD_AUD_DST_RISCI1 = common dso_local global i32 0, align 4
@FLD_AUD_DST_OF = common dso_local global i32 0, align 4
@FLD_AUD_DST_SYNC = common dso_local global i32 0, align 4
@FLD_AUD_DST_OPC_ERR = common dso_local global i32 0, align 4
@AUD_A_INT_STAT = common dso_local global i32 0, align 4
@PCI_INT_MSK = common dso_local global i32 0, align 4
@PCI_MSK_AUD_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx25821_audio_dev*)* @_cx25821_start_audio_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cx25821_start_audio_dma(%struct.cx25821_audio_dev* %0) #0 {
  %2 = alloca %struct.cx25821_audio_dev*, align 8
  %3 = alloca %struct.cx25821_audio_buffer*, align 8
  %4 = alloca %struct.cx25821_dev*, align 8
  %5 = alloca %struct.sram_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.cx25821_audio_dev* %0, %struct.cx25821_audio_dev** %2, align 8
  %7 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %7, i32 0, i32 2
  %9 = load %struct.cx25821_audio_buffer*, %struct.cx25821_audio_buffer** %8, align 8
  store %struct.cx25821_audio_buffer* %9, %struct.cx25821_audio_buffer** %3, align 8
  %10 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %2, align 8
  %11 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %10, i32 0, i32 0
  %12 = load %struct.cx25821_dev*, %struct.cx25821_dev** %11, align 8
  store %struct.cx25821_dev* %12, %struct.cx25821_dev** %4, align 8
  %13 = load %struct.sram_channel*, %struct.sram_channel** @cx25821_sram_channels, align 8
  %14 = load i64, i64* @AUDIO_SRAM_CHANNEL, align 8
  %15 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %13, i64 %14
  store %struct.sram_channel* %15, %struct.sram_channel** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %2, align 8
  %17 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %16, i32 0, i32 0
  %18 = load %struct.cx25821_dev*, %struct.cx25821_dev** %17, align 8
  %19 = call i32 @cx25821_set_gpiopin_direction(%struct.cx25821_dev* %18, i32 0, i32 0)
  %20 = load i32, i32* @AUD_INT_DMA_CTL, align 4
  %21 = load i32, i32* @FLD_AUD_DST_A_RISC_EN, align 4
  %22 = load i32, i32* @FLD_AUD_DST_A_FIFO_EN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @cx_clear(i32 %20, i32 %23)
  %25 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %2, align 8
  %26 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %25, i32 0, i32 0
  %27 = load %struct.cx25821_dev*, %struct.cx25821_dev** %26, align 8
  %28 = load %struct.sram_channel*, %struct.sram_channel** %5, align 8
  %29 = load %struct.cx25821_audio_buffer*, %struct.cx25821_audio_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.cx25821_audio_buffer, %struct.cx25821_audio_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cx25821_audio_buffer*, %struct.cx25821_audio_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.cx25821_audio_buffer, %struct.cx25821_audio_buffer* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cx25821_sram_channel_setup_audio(%struct.cx25821_dev* %27, %struct.sram_channel* %28, i32 %31, i32 %35)
  %37 = load i32, i32* @AUD_A_LNGTH, align 4
  %38 = load %struct.cx25821_audio_buffer*, %struct.cx25821_audio_buffer** %3, align 8
  %39 = getelementptr inbounds %struct.cx25821_audio_buffer, %struct.cx25821_audio_buffer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cx_write(i32 %37, i32 %40)
  %42 = load i32, i32* @AUD_A_GPCNT_CTL, align 4
  %43 = load i32, i32* @GP_COUNT_CONTROL_RESET, align 4
  %44 = call i32 @cx_write(i32 %42, i32 %43)
  %45 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %2, align 8
  %46 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %45, i32 0, i32 1
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load i32, i32* @AUD_A_CFG, align 4
  %49 = call i32 @cx_read(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @AUD_A_CFG, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @FLD_AUD_DST_PK_MODE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FLD_AUD_DST_ENABLE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @FLD_AUD_CLK_ENABLE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @cx_write(i32 %50, i32 %57)
  %59 = load i32, i32* @AUD_A_INT_MSK, align 4
  %60 = load i32, i32* @FLD_AUD_DST_RISCI1, align 4
  %61 = load i32, i32* @FLD_AUD_DST_OF, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FLD_AUD_DST_SYNC, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @FLD_AUD_DST_OPC_ERR, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @cx_write(i32 %59, i32 %66)
  %68 = load i32, i32* @AUD_A_INT_STAT, align 4
  %69 = call i32 @cx_write(i32 %68, i32 -1)
  %70 = load i32, i32* @PCI_INT_MSK, align 4
  %71 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %2, align 8
  %72 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %71, i32 0, i32 0
  %73 = load %struct.cx25821_dev*, %struct.cx25821_dev** %72, align 8
  %74 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PCI_MSK_AUD_INT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @cx_set(i32 %70, i32 %77)
  %79 = load i32, i32* @AUD_INT_DMA_CTL, align 4
  %80 = call i32 @cx_read(i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @AUD_INT_DMA_CTL, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @FLD_AUD_DST_A_RISC_EN, align 4
  %84 = load i32, i32* @FLD_AUD_DST_A_FIFO_EN, align 4
  %85 = or i32 %83, %84
  %86 = or i32 %82, %85
  %87 = call i32 @cx_set(i32 %81, i32 %86)
  %88 = call i32 @mdelay(i32 100)
  ret i32 0
}

declare dso_local i32 @cx25821_set_gpiopin_direction(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx25821_sram_channel_setup_audio(%struct.cx25821_dev*, %struct.sram_channel*, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
