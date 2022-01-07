; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c_snd_cx25821_card_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-alsa.c_snd_cx25821_card_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.cx25821_audio_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_cx25821_card_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx25821_card_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25821_audio_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.cx25821_audio_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.cx25821_audio_dev* %8, %struct.cx25821_audio_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %5, align 8
  %10 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %19 [
    i32 129, label %13
    i32 128, label %16
  ]

13:                                               ; preds = %2
  %14 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %5, align 8
  %15 = call i32 @_cx25821_start_audio_dma(%struct.cx25821_audio_dev* %14)
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %5, align 8
  %18 = call i32 @_cx25821_stop_audio_dma(%struct.cx25821_audio_dev* %17)
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %16, %13
  %23 = load %struct.cx25821_audio_dev*, %struct.cx25821_audio_dev** %5, align 8
  %24 = getelementptr inbounds %struct.cx25821_audio_dev, %struct.cx25821_audio_dev* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %struct.cx25821_audio_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_cx25821_start_audio_dma(%struct.cx25821_audio_dev*) #1

declare dso_local i32 @_cx25821_stop_audio_dma(%struct.cx25821_audio_dev*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
