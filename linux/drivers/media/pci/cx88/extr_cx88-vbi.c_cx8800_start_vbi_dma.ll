; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vbi.c_cx8800_start_vbi_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vbi.c_cx8800_start_vbi_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8800_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }
%struct.cx88_dmaqueue = type { i64 }
%struct.cx88_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cx88_sram_channels = common dso_local global i32* null, align 8
@SRAM_CH24 = common dso_local global i64 0, align 8
@VBI_LINE_LENGTH = common dso_local global i32 0, align 4
@MO_VBOS_CONTROL = common dso_local global i32 0, align 4
@MO_VBI_GPCNTRL = common dso_local global i32 0, align 4
@GP_COUNT_CONTROL_RESET = common dso_local global i32 0, align 4
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@PCI_INT_VIDINT = common dso_local global i32 0, align 4
@MO_VID_INTMSK = common dso_local global i32 0, align 4
@VID_CAPTURE_CONTROL = common dso_local global i32 0, align 4
@MO_DEV_CNTRL2 = common dso_local global i32 0, align 4
@MO_VID_DMACNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8800_dev*, %struct.cx88_dmaqueue*, %struct.cx88_buffer*)* @cx8800_start_vbi_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8800_start_vbi_dma(%struct.cx8800_dev* %0, %struct.cx88_dmaqueue* %1, %struct.cx88_buffer* %2) #0 {
  %4 = alloca %struct.cx8800_dev*, align 8
  %5 = alloca %struct.cx88_dmaqueue*, align 8
  %6 = alloca %struct.cx88_buffer*, align 8
  %7 = alloca %struct.cx88_core*, align 8
  store %struct.cx8800_dev* %0, %struct.cx8800_dev** %4, align 8
  store %struct.cx88_dmaqueue* %1, %struct.cx88_dmaqueue** %5, align 8
  store %struct.cx88_buffer* %2, %struct.cx88_buffer** %6, align 8
  %8 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %8, i32 0, i32 0
  %10 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  store %struct.cx88_core* %10, %struct.cx88_core** %7, align 8
  %11 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %12 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %11, i32 0, i32 0
  %13 = load %struct.cx88_core*, %struct.cx88_core** %12, align 8
  %14 = load i32*, i32** @cx88_sram_channels, align 8
  %15 = load i64, i64* @SRAM_CH24, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* @VBI_LINE_LENGTH, align 4
  %18 = load %struct.cx88_buffer*, %struct.cx88_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.cx88_buffer, %struct.cx88_buffer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %13, i32* %16, i32 %17, i32 %21)
  %23 = load i32, i32* @MO_VBOS_CONTROL, align 4
  %24 = call i32 @cx_write(i32 %23, i32 296960)
  %25 = load i32, i32* @MO_VBI_GPCNTRL, align 4
  %26 = load i32, i32* @GP_COUNT_CONTROL_RESET, align 4
  %27 = call i32 @cx_write(i32 %25, i32 %26)
  %28 = load %struct.cx88_dmaqueue*, %struct.cx88_dmaqueue** %5, align 8
  %29 = getelementptr inbounds %struct.cx88_dmaqueue, %struct.cx88_dmaqueue* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @MO_PCI_INTMSK, align 4
  %31 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  %32 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PCI_INT_VIDINT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cx_set(i32 %30, i32 %35)
  %37 = load i32, i32* @MO_VID_INTMSK, align 4
  %38 = call i32 @cx_set(i32 %37, i32 983176)
  %39 = load i32, i32* @VID_CAPTURE_CONTROL, align 4
  %40 = call i32 @cx_set(i32 %39, i32 24)
  %41 = load i32, i32* @MO_DEV_CNTRL2, align 4
  %42 = call i32 @cx_set(i32 %41, i32 32)
  %43 = load i32, i32* @MO_VID_DMACNTRL, align 4
  %44 = call i32 @cx_set(i32 %43, i32 136)
  ret i32 0
}

declare dso_local i32 @cx88_sram_channel_setup(%struct.cx88_core*, i32*, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
