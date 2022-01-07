; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c__cx88_start_audio_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c__cx88_start_audio_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_channel = type { i64 }
%struct.cx88_audio_dev = type { i32, %struct.cx88_core*, i32, %struct.cx88_audio_buffer* }
%struct.cx88_core = type { i32 }
%struct.cx88_audio_buffer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cx88_sram_channels = common dso_local global %struct.sram_channel* null, align 8
@SRAM_CH25 = common dso_local global i64 0, align 8
@MO_AUD_DMACNTRL = common dso_local global i32 0, align 4
@MO_AUDD_LNGTH = common dso_local global i32 0, align 4
@MO_AUDD_GPCNTRL = common dso_local global i32 0, align 4
@GP_COUNT_CONTROL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Start audio DMA, %d B/line, %d lines/FIFO, %d periods, %d byte buffer\0A\00", align 1
@MO_AUD_INTMSK = common dso_local global i32 0, align 4
@AUD_INT_OPC_ERR = common dso_local global i32 0, align 4
@AUD_INT_DN_SYNC = common dso_local global i32 0, align 4
@AUD_INT_DN_RISCI2 = common dso_local global i32 0, align 4
@AUD_INT_DN_RISCI1 = common dso_local global i32 0, align 4
@MO_AUD_INTSTAT = common dso_local global i32 0, align 4
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@PCI_INT_AUDINT = common dso_local global i32 0, align 4
@MO_DEV_CNTRL2 = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_audio_dev*)* @_cx88_start_audio_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cx88_start_audio_dma(%struct.cx88_audio_dev* %0) #0 {
  %2 = alloca %struct.cx88_audio_dev*, align 8
  %3 = alloca %struct.cx88_audio_buffer*, align 8
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.sram_channel*, align 8
  store %struct.cx88_audio_dev* %0, %struct.cx88_audio_dev** %2, align 8
  %6 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %6, i32 0, i32 3
  %8 = load %struct.cx88_audio_buffer*, %struct.cx88_audio_buffer** %7, align 8
  store %struct.cx88_audio_buffer* %8, %struct.cx88_audio_buffer** %3, align 8
  %9 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %10 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %9, i32 0, i32 1
  %11 = load %struct.cx88_core*, %struct.cx88_core** %10, align 8
  store %struct.cx88_core* %11, %struct.cx88_core** %4, align 8
  %12 = load %struct.sram_channel*, %struct.sram_channel** @cx88_sram_channels, align 8
  %13 = load i64, i64* @SRAM_CH25, align 8
  %14 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %12, i64 %13
  store %struct.sram_channel* %14, %struct.sram_channel** %5, align 8
  %15 = load i32, i32* @MO_AUD_DMACNTRL, align 4
  %16 = call i32 @cx_clear(i32 %15, i32 17)
  %17 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %18 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %17, i32 0, i32 1
  %19 = load %struct.cx88_core*, %struct.cx88_core** %18, align 8
  %20 = load %struct.sram_channel*, %struct.sram_channel** %5, align 8
  %21 = load %struct.cx88_audio_buffer*, %struct.cx88_audio_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.cx88_audio_buffer, %struct.cx88_audio_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cx88_audio_buffer*, %struct.cx88_audio_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.cx88_audio_buffer, %struct.cx88_audio_buffer* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %19, %struct.sram_channel* %20, i32 %23, i32 %27)
  %29 = load i32, i32* @MO_AUDD_LNGTH, align 4
  %30 = load %struct.cx88_audio_buffer*, %struct.cx88_audio_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.cx88_audio_buffer, %struct.cx88_audio_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cx_write(i32 %29, i32 %32)
  %34 = load i32, i32* @MO_AUDD_GPCNTRL, align 4
  %35 = load i32, i32* @GP_COUNT_CONTROL_RESET, align 4
  %36 = call i32 @cx_write(i32 %34, i32 %35)
  %37 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %38 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %37, i32 0, i32 2
  %39 = call i32 @atomic_set(i32* %38, i32 0)
  %40 = load %struct.cx88_audio_buffer*, %struct.cx88_audio_buffer** %3, align 8
  %41 = getelementptr inbounds %struct.cx88_audio_buffer, %struct.cx88_audio_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sram_channel*, %struct.sram_channel** %5, align 8
  %44 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 8
  %47 = call i32 @cx_read(i64 %46)
  %48 = ashr i32 %47, 1
  %49 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %50 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cx88_audio_buffer*, %struct.cx88_audio_buffer** %3, align 8
  %53 = getelementptr inbounds %struct.cx88_audio_buffer, %struct.cx88_audio_buffer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %56 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %48, i32 %51, i32 %58)
  %60 = load i32, i32* @MO_AUD_INTMSK, align 4
  %61 = load i32, i32* @AUD_INT_OPC_ERR, align 4
  %62 = load i32, i32* @AUD_INT_DN_SYNC, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @AUD_INT_DN_RISCI2, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @AUD_INT_DN_RISCI1, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @cx_write(i32 %60, i32 %67)
  %69 = load i32, i32* @MO_AUD_INTSTAT, align 4
  %70 = call i32 @cx_write(i32 %69, i32 -1)
  %71 = load i32, i32* @MO_PCI_INTMSK, align 4
  %72 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %73 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %72, i32 0, i32 1
  %74 = load %struct.cx88_core*, %struct.cx88_core** %73, align 8
  %75 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PCI_INT_AUDINT, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @cx_set(i32 %71, i32 %78)
  %80 = load i32, i32* @MO_DEV_CNTRL2, align 4
  %81 = call i32 @cx_set(i32 %80, i32 32)
  %82 = load i32, i32* @MO_AUD_DMACNTRL, align 4
  %83 = call i32 @cx_set(i32 %82, i32 17)
  %84 = load i64, i64* @debug, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %1
  %87 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %88 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %87, i32 0, i32 1
  %89 = load %struct.cx88_core*, %struct.cx88_core** %88, align 8
  %90 = load %struct.sram_channel*, %struct.sram_channel** %5, align 8
  %91 = call i32 @cx88_sram_channel_dump(%struct.cx88_core* %89, %struct.sram_channel* %90)
  br label %92

92:                                               ; preds = %86, %1
  ret i32 0
}

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx88_sram_channel_setup(%struct.cx88_core*, %struct.sram_channel*, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cx_read(i64) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx88_sram_channel_dump(%struct.cx88_core*, %struct.sram_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
