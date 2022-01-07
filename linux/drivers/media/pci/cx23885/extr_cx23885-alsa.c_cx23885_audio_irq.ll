; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_cx23885_audio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_cx23885_audio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32*, i32, %struct.cx23885_audio_dev* }
%struct.cx23885_audio_dev = type { i32, i32 }

@AUDIO_INT_INT_STAT = common dso_local global i32 0, align 4
@AUD_INT_OPC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s/1: Audio risc op code error\0A\00", align 1
@AUD_INT_DMA_CTL = common dso_local global i32 0, align 4
@AUDIO_SRAM_CHANNEL = common dso_local global i64 0, align 8
@AUD_INT_DN_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Downstream sync error\0A\00", align 1
@AUD_INT_A_GPCNT_CTL = common dso_local global i32 0, align 4
@GP_COUNT_CONTROL_RESET = common dso_local global i32 0, align 4
@AUD_INT_DN_RISCI1 = common dso_local global i32 0, align 4
@AUD_INT_A_GPCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_audio_irq(%struct.cx23885_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx23885_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx23885_audio_dev*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %10 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %9, i32 0, i32 2
  %11 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %10, align 8
  store %struct.cx23885_audio_dev* %11, %struct.cx23885_audio_dev** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 0, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

17:                                               ; preds = %3
  %18 = load i32, i32* @AUDIO_INT_INT_STAT, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @cx_write(i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AUD_INT_OPC_ERR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %27 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @AUD_INT_DMA_CTL, align 4
  %31 = call i32 @cx_clear(i32 %30, i32 17)
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %33 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %34 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @AUDIO_SRAM_CHANNEL, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @cx23885_sram_channel_dump(%struct.cx23885_dev* %32, i32* %37)
  br label %39

39:                                               ; preds = %25, %17
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @AUD_INT_DN_SYNC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @AUD_INT_A_GPCNT_CTL, align 4
  %47 = load i32, i32* @GP_COUNT_CONTROL_RESET, align 4
  %48 = call i32 @cx_write(i32 %46, i32 %47)
  store i32 1, i32* %4, align 4
  br label %65

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AUD_INT_DN_RISCI1, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %8, align 8
  %56 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %55, i32 0, i32 1
  %57 = load i32, i32* @AUD_INT_A_GPCNT, align 4
  %58 = call i32 @cx_read(i32 %57)
  %59 = call i32 @atomic_set(i32* %56, i32 %58)
  %60 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %8, align 8
  %61 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_pcm_period_elapsed(i32 %62)
  br label %64

64:                                               ; preds = %54, %49
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %44, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx23885_sram_channel_dump(%struct.cx23885_dev*, i32*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
