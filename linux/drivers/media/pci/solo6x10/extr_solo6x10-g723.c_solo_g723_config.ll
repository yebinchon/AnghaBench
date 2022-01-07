; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_solo_g723_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_solo_g723_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@SAMPLERATE = common dso_local global i32 0, align 4
@BITRATE = common dso_local global i32 0, align 4
@SOLO_AUDIO_SAMPLE = common dso_local global i32 0, align 4
@SOLO_AUDIO_FDMA_INTR = common dso_local global i32 0, align 4
@G723_INTR_ORDER = common dso_local global i32 0, align 4
@SOLO_AUDIO_CONTROL = common dso_local global i32 0, align 4
@SOLO_AUDIO_ENABLE = common dso_local global i32 0, align 4
@SOLO_AUDIO_I2S_MODE = common dso_local global i32 0, align 4
@OUTMODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_g723_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_g723_config(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %4 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %5 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = mul nsw i32 %6, 1000000
  %8 = load i32, i32* @SAMPLERATE, align 4
  %9 = load i32, i32* @BITRATE, align 4
  %10 = mul nsw i32 %9, 2
  %11 = mul nsw i32 %8, %10
  %12 = mul nsw i32 %11, 2
  %13 = sdiv i32 %7, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %15 = load i32, i32* @SOLO_AUDIO_SAMPLE, align 4
  %16 = load i32, i32* @BITRATE, align 4
  %17 = call i32 @SOLO_AUDIO_BITRATE(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SOLO_AUDIO_CLK_DIV(i32 %18)
  %20 = or i32 %17, %19
  %21 = call i32 @solo_reg_write(%struct.solo_dev* %14, i32 %15, i32 %20)
  %22 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %23 = load i32, i32* @SOLO_AUDIO_FDMA_INTR, align 4
  %24 = call i32 @SOLO_AUDIO_FDMA_INTERVAL(i32 1)
  %25 = load i32, i32* @G723_INTR_ORDER, align 4
  %26 = call i32 @SOLO_AUDIO_INTR_ORDER(i32 %25)
  %27 = or i32 %24, %26
  %28 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %29 = call i32 @SOLO_G723_EXT_ADDR(%struct.solo_dev* %28)
  %30 = ashr i32 %29, 16
  %31 = call i32 @SOLO_AUDIO_FDMA_BASE(i32 %30)
  %32 = or i32 %27, %31
  %33 = call i32 @solo_reg_write(%struct.solo_dev* %22, i32 %23, i32 %32)
  %34 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %35 = load i32, i32* @SOLO_AUDIO_CONTROL, align 4
  %36 = load i32, i32* @SOLO_AUDIO_ENABLE, align 4
  %37 = load i32, i32* @SOLO_AUDIO_I2S_MODE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @SOLO_AUDIO_I2S_MULTI(i32 3)
  %40 = or i32 %38, %39
  %41 = load i32, i32* @OUTMODE_MASK, align 4
  %42 = call i32 @SOLO_AUDIO_MODE(i32 %41)
  %43 = or i32 %40, %42
  %44 = call i32 @solo_reg_write(%struct.solo_dev* %34, i32 %35, i32 %43)
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_AUDIO_BITRATE(i32) #1

declare dso_local i32 @SOLO_AUDIO_CLK_DIV(i32) #1

declare dso_local i32 @SOLO_AUDIO_FDMA_INTERVAL(i32) #1

declare dso_local i32 @SOLO_AUDIO_INTR_ORDER(i32) #1

declare dso_local i32 @SOLO_AUDIO_FDMA_BASE(i32) #1

declare dso_local i32 @SOLO_G723_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_AUDIO_I2S_MULTI(i32) #1

declare dso_local i32 @SOLO_AUDIO_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
