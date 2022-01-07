; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c_cx25821_aud_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c_cx25821_aud_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_audio_dev = type { i32, i32, %struct.cx25821_dev* }
%struct.cx25821_dev = type { i32 }

@AUD_A_INT_STAT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"irq aud\00", align 1
@cx25821_aud_irqs = common dso_local global i32 0, align 4
@AUD_INT_OPC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"WARNING %s/1: Audio risc op code error\0A\00", align 1
@AUD_INT_DMA_CTL = common dso_local global i32 0, align 4
@FLD_AUD_DST_A_RISC_EN = common dso_local global i32 0, align 4
@FLD_AUD_DST_A_FIFO_EN = common dso_local global i32 0, align 4
@cx25821_sram_channels = common dso_local global i32* null, align 8
@AUDIO_SRAM_CHANNEL = common dso_local global i64 0, align 8
@AUD_INT_DN_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"WARNING %s: Downstream sync error!\0A\00", align 1
@AUD_A_GPCNT_CTL = common dso_local global i32 0, align 4
@GP_COUNT_CONTROL_RESET = common dso_local global i32 0, align 4
@AUD_INT_DN_RISCI1 = common dso_local global i32 0, align 4
@AUD_A_GPCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_audio_dev*, i32, i32)* @cx25821_aud_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25821_aud_irq(%struct.cx25821_audio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx25821_audio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx25821_dev*, align 8
  store %struct.cx25821_audio_dev* %0, %struct.cx25821_audio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %4, align 8
  %9 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %8, i32 0, i32 2
  %10 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  store %struct.cx25821_dev* %10, %struct.cx25821_dev** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 0, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %86

16:                                               ; preds = %3
  %17 = load i32, i32* @AUD_A_INT_STAT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @cx_write(i32 %17, i32 %18)
  %20 = load i32, i32* @debug, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = and i32 %25, -256
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %22, %16
  %29 = load %struct.cx25821_dev*, %struct.cx25821_dev** %7, align 8
  %30 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @cx25821_aud_irqs, align 4
  %33 = load i32, i32* @cx25821_aud_irqs, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cx25821_print_irqbits(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %28, %22
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @AUD_INT_OPC_ERR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.cx25821_dev*, %struct.cx25821_dev** %7, align 8
  %45 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @AUD_INT_DMA_CTL, align 4
  %49 = load i32, i32* @FLD_AUD_DST_A_RISC_EN, align 4
  %50 = load i32, i32* @FLD_AUD_DST_A_FIFO_EN, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @cx_clear(i32 %48, i32 %51)
  %53 = load %struct.cx25821_dev*, %struct.cx25821_dev** %7, align 8
  %54 = load i32*, i32** @cx25821_sram_channels, align 8
  %55 = load i64, i64* @AUDIO_SRAM_CHANNEL, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = call i32 @cx25821_sram_channel_dump_audio(%struct.cx25821_dev* %53, i32* %56)
  br label %58

58:                                               ; preds = %43, %38
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @AUD_INT_DN_SYNC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.cx25821_dev*, %struct.cx25821_dev** %7, align 8
  %65 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @AUD_A_GPCNT_CTL, align 4
  %69 = load i32, i32* @GP_COUNT_CONTROL_RESET, align 4
  %70 = call i32 @cx_write(i32 %68, i32 %69)
  br label %86

71:                                               ; preds = %58
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @AUD_INT_DN_RISCI1, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %4, align 8
  %78 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %77, i32 0, i32 1
  %79 = load i32, i32* @AUD_A_GPCNT, align 4
  %80 = call i32 @cx_read(i32 %79)
  %81 = call i32 @atomic_set(i32* %78, i32 %80)
  %82 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %4, align 8
  %83 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @snd_pcm_period_elapsed(i32 %84)
  br label %86

86:                                               ; preds = %15, %63, %76, %71
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx25821_print_irqbits(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx25821_sram_channel_dump_audio(%struct.cx25821_dev*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
