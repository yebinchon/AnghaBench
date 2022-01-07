; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_snd_em28xx_hw_capture_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_snd_em28xx_hw_capture_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.em28xx = type { %struct.em28xx_audio }
%struct.em28xx_audio = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Stop capture, if needed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_em28xx_hw_capture_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_em28xx_hw_capture_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_audio*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.em28xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.em28xx* %6, %struct.em28xx** %3, align 8
  %7 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %8 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %7, i32 0, i32 0
  store %struct.em28xx_audio* %8, %struct.em28xx_audio** %4, align 8
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.em28xx_audio*, %struct.em28xx_audio** %4, align 8
  %11 = getelementptr inbounds %struct.em28xx_audio, %struct.em28xx_audio* %10, i32 0, i32 1
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.em28xx_audio*, %struct.em28xx_audio** %4, align 8
  %16 = getelementptr inbounds %struct.em28xx_audio, %struct.em28xx_audio* %15, i32 0, i32 1
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load %struct.em28xx_audio*, %struct.em28xx_audio** %4, align 8
  %19 = getelementptr inbounds %struct.em28xx_audio, %struct.em28xx_audio* %18, i32 0, i32 0
  %20 = call i32 @schedule_work(i32* %19)
  br label %21

21:                                               ; preds = %14, %1
  ret i32 0
}

declare dso_local %struct.em28xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
