; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MO_VID_INTSTAT = common dso_local global i32 0, align 4
@MO_PCI_INTSTAT = common dso_local global i32 0, align 4
@MO_INT1_STAT = common dso_local global i32 0, align 4
@cx88_sram_channels = common dso_local global i32* null, align 8
@SRAM_CH21 = common dso_local global i64 0, align 8
@SRAM_CH22 = common dso_local global i64 0, align 8
@SRAM_CH23 = common dso_local global i64 0, align 8
@SRAM_CH24 = common dso_local global i64 0, align 8
@SRAM_CH25 = common dso_local global i64 0, align 8
@SRAM_CH26 = common dso_local global i64 0, align 8
@SRAM_CH28 = common dso_local global i64 0, align 8
@SRAM_CH27 = common dso_local global i64 0, align 8
@MO_INPUT_FORMAT = common dso_local global i32 0, align 4
@MO_COLOR_CTRL = common dso_local global i32 0, align 4
@MO_PDMA_STHRSH = common dso_local global i32 0, align 4
@MO_PDMA_DTHRSH = common dso_local global i32 0, align 4
@MO_AGC_SYNC_TIP1 = common dso_local global i32 0, align 4
@MO_AGC_BACK_VBI = common dso_local global i32 0, align 4
@MO_SRST_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_reset(%struct.cx88_core* %0) #0 {
  %2 = alloca %struct.cx88_core*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %2, align 8
  %3 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %5 = call i32 @cx88_shutdown(%struct.cx88_core* %4)
  %6 = load i32, i32* @MO_VID_INTSTAT, align 4
  %7 = call i32 @cx_write(i32 %6, i32 -1)
  %8 = load i32, i32* @MO_PCI_INTSTAT, align 4
  %9 = call i32 @cx_write(i32 %8, i32 -1)
  %10 = load i32, i32* @MO_INT1_STAT, align 4
  %11 = call i32 @cx_write(i32 %10, i32 -1)
  %12 = call i32 @msleep(i32 100)
  %13 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %14 = load i32*, i32** @cx88_sram_channels, align 8
  %15 = load i64, i64* @SRAM_CH21, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %13, i32* %16, i32 2880, i32 0)
  %18 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %19 = load i32*, i32** @cx88_sram_channels, align 8
  %20 = load i64, i64* @SRAM_CH22, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %18, i32* %21, i32 128, i32 0)
  %23 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %24 = load i32*, i32** @cx88_sram_channels, align 8
  %25 = load i64, i64* @SRAM_CH23, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %23, i32* %26, i32 128, i32 0)
  %28 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %29 = load i32*, i32** @cx88_sram_channels, align 8
  %30 = load i64, i64* @SRAM_CH24, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %28, i32* %31, i32 128, i32 0)
  %33 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %34 = load i32*, i32** @cx88_sram_channels, align 8
  %35 = load i64, i64* @SRAM_CH25, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %33, i32* %36, i32 128, i32 0)
  %38 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %39 = load i32*, i32** @cx88_sram_channels, align 8
  %40 = load i64, i64* @SRAM_CH26, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %38, i32* %41, i32 128, i32 0)
  %43 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %44 = load i32*, i32** @cx88_sram_channels, align 8
  %45 = load i64, i64* @SRAM_CH28, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %43, i32* %46, i32 752, i32 0)
  %48 = load %struct.cx88_core*, %struct.cx88_core** %2, align 8
  %49 = load i32*, i32** @cx88_sram_channels, align 8
  %50 = load i64, i64* @SRAM_CH27, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %48, i32* %51, i32 128, i32 0)
  %53 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %54 = call i32 @cx_write(i32 %53, i32 14343)
  %55 = load i32, i32* @MO_COLOR_CTRL, align 4
  %56 = call i32 @cx_andor(i32 %55, i32 16384, i32 16384)
  %57 = load i32, i32* @MO_PDMA_STHRSH, align 4
  %58 = call i32 @cx_write(i32 %57, i32 2055)
  %59 = load i32, i32* @MO_PDMA_DTHRSH, align 4
  %60 = call i32 @cx_write(i32 %59, i32 2055)
  %61 = load i32, i32* @MO_AGC_SYNC_TIP1, align 4
  %62 = call i32 @cx_write(i32 %61, i32 58720271)
  %63 = load i32, i32* @MO_AGC_BACK_VBI, align 4
  %64 = call i32 @cx_write(i32 %63, i32 14681429)
  %65 = load i32, i32* @MO_VID_INTSTAT, align 4
  %66 = call i32 @cx_write(i32 %65, i32 -1)
  %67 = load i32, i32* @MO_PCI_INTSTAT, align 4
  %68 = call i32 @cx_write(i32 %67, i32 -1)
  %69 = load i32, i32* @MO_INT1_STAT, align 4
  %70 = call i32 @cx_write(i32 %69, i32 -1)
  %71 = load i32, i32* @MO_SRST_IO, align 4
  %72 = call i32 @cx_write(i32 %71, i32 0)
  %73 = call i32 @usleep_range(i32 10000, i32 20000)
  %74 = load i32, i32* @MO_SRST_IO, align 4
  %75 = call i32 @cx_write(i32 %74, i32 1)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx88_shutdown(%struct.cx88_core*) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cx88_sram_channel_setup(%struct.cx88_core*, i32*, i32, i32) #1

declare dso_local i32 @cx_andor(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
