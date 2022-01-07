; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.tw686x_dev = type { i32, i32, i32, %struct.tw686x_audio_channel* }
%struct.tw686x_audio_channel = type { i32, i32**, i64 }

@AUDIO_CHANNEL_OFFSET = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @tw686x_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw686x_dev*, align 8
  %6 = alloca %struct.tw686x_audio_channel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.tw686x_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.tw686x_dev* %10, %struct.tw686x_dev** %5, align 8
  %11 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %12 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %11, i32 0, i32 3
  %13 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %12, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %13, i64 %16
  store %struct.tw686x_audio_channel* %17, %struct.tw686x_audio_channel** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %95 [
    i32 129, label %19
    i32 128, label %61
  ]

19:                                               ; preds = %2
  %20 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %6, align 8
  %21 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %6, align 8
  %28 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %35 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %39 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %41 = load i64, i64* @AUDIO_CHANNEL_OFFSET, align 8
  %42 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %6, align 8
  %43 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @tw686x_enable_channel(%struct.tw686x_dev* %40, i64 %45)
  %47 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %48 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %52 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %51, i32 0, i32 2
  %53 = load i64, i64* @jiffies, align 8
  %54 = call i64 @msecs_to_jiffies(i32 100)
  %55 = add nsw i64 %53, %54
  %56 = call i32 @mod_timer(i32* %52, i64 %55)
  br label %60

57:                                               ; preds = %26, %19
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %33
  br label %98

61:                                               ; preds = %2
  %62 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %63 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %62, i32 0, i32 1
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %67 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %69 = load i64, i64* @AUDIO_CHANNEL_OFFSET, align 8
  %70 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %6, align 8
  %71 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = call i32 @tw686x_disable_channel(%struct.tw686x_dev* %68, i64 %73)
  %75 = load %struct.tw686x_dev*, %struct.tw686x_dev** %5, align 8
  %76 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %6, align 8
  %80 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %79, i32 0, i32 0
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %6, align 8
  %84 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  store i32* null, i32** %86, align 8
  %87 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %6, align 8
  %88 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %6, align 8
  %92 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %91, i32 0, i32 0
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %98

95:                                               ; preds = %2
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95, %61, %60
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local %struct.tw686x_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tw686x_enable_channel(%struct.tw686x_dev*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @tw686x_disable_channel(%struct.tw686x_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
