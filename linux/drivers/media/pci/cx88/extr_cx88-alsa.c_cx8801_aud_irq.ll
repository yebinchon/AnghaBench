; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_cx8801_aud_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_cx8801_aud_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_audio_dev = type { i32, i32, %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@MO_AUD_INTSTAT = common dso_local global i32 0, align 4
@MO_AUD_INTMSK = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"irq aud\00", align 1
@cx88_aud_irqs = common dso_local global i32 0, align 4
@AUD_INT_OPC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Audio risc op code error\0A\00", align 1
@MO_AUD_DMACNTRL = common dso_local global i32 0, align 4
@cx88_sram_channels = common dso_local global i32* null, align 8
@SRAM_CH25 = common dso_local global i64 0, align 8
@AUD_INT_DN_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Downstream sync error\0A\00", align 1
@MO_AUDD_GPCNTRL = common dso_local global i32 0, align 4
@GP_COUNT_CONTROL_RESET = common dso_local global i32 0, align 4
@AUD_INT_DN_RISCI1 = common dso_local global i32 0, align 4
@MO_AUDD_GPCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_audio_dev*)* @cx8801_aud_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx8801_aud_irq(%struct.cx88_audio_dev* %0) #0 {
  %2 = alloca %struct.cx88_audio_dev*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx88_audio_dev* %0, %struct.cx88_audio_dev** %2, align 8
  %6 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %6, i32 0, i32 2
  %8 = load %struct.cx88_core*, %struct.cx88_core** %7, align 8
  store %struct.cx88_core* %8, %struct.cx88_core** %3, align 8
  %9 = load i32, i32* @MO_AUD_INTSTAT, align 4
  %10 = call i32 @cx_read(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @MO_AUD_INTMSK, align 4
  %12 = call i32 @cx_read(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 0, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %76

18:                                               ; preds = %1
  %19 = load i32, i32* @MO_AUD_INTSTAT, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @cx_write(i32 %19, i32 %20)
  %22 = load i32, i32* @debug, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %25, %26
  %28 = and i32 %27, -256
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24, %18
  %31 = load i32, i32* @cx88_aud_irqs, align 4
  %32 = load i32, i32* @cx88_aud_irqs, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cx88_print_irqbits(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @AUD_INT_OPC_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @MO_AUD_DMACNTRL, align 4
  %45 = call i32 @cx_clear(i32 %44, i32 17)
  %46 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %47 = load i32*, i32** @cx88_sram_channels, align 8
  %48 = load i64, i64* @SRAM_CH25, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @cx88_sram_channel_dump(%struct.cx88_core* %46, i32* %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @AUD_INT_DN_SYNC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @MO_AUDD_GPCNTRL, align 4
  %59 = load i32, i32* @GP_COUNT_CONTROL_RESET, align 4
  %60 = call i32 @cx_write(i32 %58, i32 %59)
  br label %76

61:                                               ; preds = %51
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @AUD_INT_DN_RISCI1, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %68 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %67, i32 0, i32 1
  %69 = load i32, i32* @MO_AUDD_GPCNT, align 4
  %70 = call i32 @cx_read(i32 %69)
  %71 = call i32 @atomic_set(i32* %68, i32 %70)
  %72 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %73 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @snd_pcm_period_elapsed(i32 %74)
  br label %76

76:                                               ; preds = %17, %56, %66, %61
  ret void
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx88_print_irqbits(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @cx88_sram_channel_dump(%struct.cx88_core*, i32*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
