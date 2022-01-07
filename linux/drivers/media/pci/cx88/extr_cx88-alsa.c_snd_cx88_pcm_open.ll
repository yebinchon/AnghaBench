; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_3__ }
%struct.cx88_audio_dev = type { %struct.snd_pcm_substream* }

@.str = private unnamed_addr constant [61 x i8] c"BUG: cx88 can't find device struct. Can't proceed with open\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@snd_cx88_digital_hw = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@cx88_sram_channels = common dso_local global %struct.TYPE_4__* null, align 8
@SRAM_CH25 = common dso_local global i64 0, align 8
@DEFAULT_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Error opening PCM!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cx88_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx88_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.cx88_audio_dev*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.cx88_audio_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.cx88_audio_dev* %9, %struct.cx88_audio_dev** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %4, align 8
  %14 = icmp ne %struct.cx88_audio_dev* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %21 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %22 = call i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime* %20, i32 0, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %58

26:                                               ; preds = %19
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %4, align 8
  %29 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %28, i32 0, i32 0
  store %struct.snd_pcm_substream* %27, %struct.snd_pcm_substream** %29, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_3__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.TYPE_3__* @snd_cx88_digital_hw to i8*), i64 8, i1 false)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx88_sram_channels, align 8
  %34 = load i64, i64* @SRAM_CH25, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DEFAULT_FIFO_SIZE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %26
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx88_sram_channels, align 8
  %42 = load i64, i64* @SRAM_CH25, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, -8
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %40, %26
  store i32 0, i32* %2, align 4
  br label %61

58:                                               ; preds = %25
  %59 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %57, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.cx88_audio_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
