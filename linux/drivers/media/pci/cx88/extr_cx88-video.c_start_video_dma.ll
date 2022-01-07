; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_start_video_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_start_video_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8800_dev = type { %struct.TYPE_4__*, %struct.cx88_core* }
%struct.TYPE_4__ = type { i32 }
%struct.cx88_core = type { i32, i32, i32, i32 }
%struct.cx88_dmaqueue = type { i64 }
%struct.cx88_buffer = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@cx88_sram_channels = common dso_local global i32* null, align 8
@SRAM_CH21 = common dso_local global i64 0, align 8
@MO_COLOR_CTRL = common dso_local global i32 0, align 4
@ColorFormatGamma = common dso_local global i32 0, align 4
@MO_VIDY_GPCNTRL = common dso_local global i32 0, align 4
@GP_COUNT_CONTROL_RESET = common dso_local global i32 0, align 4
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@PCI_INT_VIDINT = common dso_local global i32 0, align 4
@MO_VID_INTMSK = common dso_local global i32 0, align 4
@VID_CAPTURE_CONTROL = common dso_local global i32 0, align 4
@MO_DEV_CNTRL2 = common dso_local global i32 0, align 4
@MO_VID_DMACNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8800_dev*, %struct.cx88_dmaqueue*, %struct.cx88_buffer*)* @start_video_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_video_dma(%struct.cx8800_dev* %0, %struct.cx88_dmaqueue* %1, %struct.cx88_buffer* %2) #0 {
  %4 = alloca %struct.cx8800_dev*, align 8
  %5 = alloca %struct.cx88_dmaqueue*, align 8
  %6 = alloca %struct.cx88_buffer*, align 8
  %7 = alloca %struct.cx88_core*, align 8
  store %struct.cx8800_dev* %0, %struct.cx8800_dev** %4, align 8
  store %struct.cx88_dmaqueue* %1, %struct.cx88_dmaqueue** %5, align 8
  store %struct.cx88_buffer* %2, %struct.cx88_buffer** %6, align 8
  %8 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %8, i32 0, i32 1
  %10 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  store %struct.cx88_core* %10, %struct.cx88_core** %7, align 8
  %11 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %12 = load i32*, i32** @cx88_sram_channels, align 8
  %13 = load i64, i64* @SRAM_CH21, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load %struct.cx88_buffer*, %struct.cx88_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cx88_buffer*, %struct.cx88_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %11, i32* %14, i32 %17, i32 %21)
  %23 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %24 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %25 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %28 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %31 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cx88_set_scale(%struct.cx88_core* %23, i32 %26, i32 %29, i32 %32)
  %34 = load i32, i32* @MO_COLOR_CTRL, align 4
  %35 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %36 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ColorFormatGamma, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @cx_write(i32 %34, i32 %41)
  %43 = load i32, i32* @MO_VIDY_GPCNTRL, align 4
  %44 = load i32, i32* @GP_COUNT_CONTROL_RESET, align 4
  %45 = call i32 @cx_write(i32 %43, i32 %44)
  %46 = load %struct.cx88_dmaqueue*, %struct.cx88_dmaqueue** %5, align 8
  %47 = getelementptr inbounds %struct.cx88_dmaqueue, %struct.cx88_dmaqueue* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @MO_PCI_INTMSK, align 4
  %49 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %50 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PCI_INT_VIDINT, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @cx_set(i32 %48, i32 %53)
  %55 = load i32, i32* @MO_VID_INTMSK, align 4
  %56 = call i32 @cx_set(i32 %55, i32 983057)
  %57 = load i32, i32* @VID_CAPTURE_CONTROL, align 4
  %58 = call i32 @cx_set(i32 %57, i32 6)
  %59 = load i32, i32* @MO_DEV_CNTRL2, align 4
  %60 = call i32 @cx_set(i32 %59, i32 32)
  %61 = load i32, i32* @MO_VID_DMACNTRL, align 4
  %62 = call i32 @cx_set(i32 %61, i32 17)
  ret i32 0
}

declare dso_local i32 @cx88_sram_channel_setup(%struct.cx88_core*, i32*, i32, i32) #1

declare dso_local i32 @cx88_set_scale(%struct.cx88_core*, i32, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
