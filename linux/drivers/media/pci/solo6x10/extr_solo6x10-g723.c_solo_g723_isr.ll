; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_solo_g723_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_solo_g723_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_pcm_str* }
%struct.snd_pcm_str = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }
%struct.solo_snd_pcm = type { i32, %struct.TYPE_2__* }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solo_g723_isr(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca %struct.snd_pcm_str*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.solo_snd_pcm*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %6 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %7 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %9, align 8
  %11 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %10, i64 %11
  store %struct.snd_pcm_str* %12, %struct.snd_pcm_str** %3, align 8
  %13 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %14, align 8
  store %struct.snd_pcm_substream* %15, %struct.snd_pcm_substream** %4, align 8
  br label %16

16:                                               ; preds = %42, %1
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = icmp ne %struct.snd_pcm_substream* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = call %struct.solo_snd_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %20)
  %22 = icmp eq %struct.solo_snd_pcm* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %42

24:                                               ; preds = %19
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %26 = call %struct.solo_snd_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %25)
  %27 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %28 = bitcast %struct.solo_dev* %27 to %struct.solo_snd_pcm*
  %29 = icmp eq %struct.solo_snd_pcm* %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %42

31:                                               ; preds = %24
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = call %struct.solo_snd_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %32)
  store %struct.solo_snd_pcm* %33, %struct.solo_snd_pcm** %5, align 8
  %34 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %5, align 8
  %35 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %41 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %40)
  br label %42

42:                                               ; preds = %39, %38, %30, %23
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %44, align 8
  store %struct.snd_pcm_substream* %45, %struct.snd_pcm_substream** %4, align 8
  br label %16

46:                                               ; preds = %16
  ret void
}

declare dso_local %struct.solo_snd_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
