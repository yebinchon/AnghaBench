; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_snd_em28xx_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_snd_em28xx_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.em28xx = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"closing device\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"freeing\0A\00", align 1
@em28xx_free_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_em28xx_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_em28xx_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.em28xx*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.em28xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.em28xx* %5, %struct.em28xx** %3, align 8
  %6 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %8 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  %27 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @schedule_work(i32* %29)
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %33 = call i32 @em28xx_audio_analog_set(%struct.em28xx* %32)
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = call i32 @dprintk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @vfree(i32* %46)
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %40, %31
  %53 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %54 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %57 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %56, i32 0, i32 1
  %58 = load i32, i32* @em28xx_free_device, align 4
  %59 = call i32 @kref_put(i32* %57, i32 %58)
  ret i32 0
}

declare dso_local %struct.em28xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @em28xx_audio_analog_set(%struct.em28xx*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
