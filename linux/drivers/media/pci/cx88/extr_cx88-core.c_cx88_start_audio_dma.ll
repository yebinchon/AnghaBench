; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_start_audio_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_start_audio_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cx88_core = type { i32 }

@cx88_sram_channels = common dso_local global %struct.TYPE_3__* null, align 8
@SRAM_CH25 = common dso_local global i64 0, align 8
@SRAM_CH27 = common dso_local global i64 0, align 8
@AUD_RDS_LINES = common dso_local global i32 0, align 4
@MO_AUD_DMACNTRL = common dso_local global i32 0, align 4
@SRAM_CH26 = common dso_local global i64 0, align 8
@MO_AUDD_LNGTH = common dso_local global i32 0, align 4
@MO_AUDR_LNGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_start_audio_dma(%struct.cx88_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx88_sram_channels, align 8
  %7 = load i64, i64* @SRAM_CH25, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx88_sram_channels, align 8
  %13 = load i64, i64* @SRAM_CH27, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AUD_RDS_LINES, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @MO_AUD_DMACNTRL, align 4
  %20 = call i32 @cx_read(i32 %19)
  %21 = and i32 %20, 16
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

24:                                               ; preds = %1
  %25 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx88_sram_channels, align 8
  %27 = load i64, i64* @SRAM_CH25, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %25, %struct.TYPE_3__* %28, i32 %29, i32 0)
  %31 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx88_sram_channels, align 8
  %33 = load i64, i64* @SRAM_CH26, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %31, %struct.TYPE_3__* %34, i32 %35, i32 0)
  %37 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx88_sram_channels, align 8
  %39 = load i64, i64* @SRAM_CH27, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @cx88_sram_channel_setup(%struct.cx88_core* %37, %struct.TYPE_3__* %40, i32 %41, i32 0)
  %43 = load i32, i32* @MO_AUDD_LNGTH, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @cx_write(i32 %43, i32 %44)
  %46 = load i32, i32* @MO_AUDR_LNGTH, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @cx_write(i32 %46, i32 %47)
  %49 = load i32, i32* @MO_AUD_DMACNTRL, align 4
  %50 = call i32 @cx_write(i32 %49, i32 7)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %24, %23
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx88_sram_channel_setup(%struct.cx88_core*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
